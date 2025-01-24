import SwiftUI

fileprivate struct LegacyCircularProgressView: View {
    @State private var strokeEnd: Double = 0.0
    @State private var strokeStart: Double = 0.0
    private let animation = Animation.easeOut(duration: 1).repeatForever(autoreverses: false)
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.3), lineWidth: 5)
                Circle()
                    .trim(from: strokeStart, to: strokeEnd)
                    .stroke(Color.blue, lineWidth: 5)
                    .rotationEffect(Angle(degrees: -90))
            }
            .frame(width: 24, height: 24)
            .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
        }
        .onAppear {
            withAnimation(animation) {
                strokeEnd = 1.0
            }
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                withAnimation(animation) {
                    strokeStart = 1.0
                }
            }
        }
    }
}

struct CircularProgressView: View {
    
    var body: some View {
        if #available(iOS 14.0, *) {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
        } else {
            LegacyCircularProgressView()
        }
    }
}
