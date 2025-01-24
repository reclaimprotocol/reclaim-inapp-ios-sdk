import SwiftUI

struct LinearProgressView: View {
    var progress: Double
    
    var body: some View {
        if #available(iOS 14.0, *) {
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle())
        } else {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    Rectangle()
                        .foregroundColor(Color.gray.opacity(0.3))
                    
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: CGFloat(self.progress) * geometry.size.width)
                }
            }
            .frame(height: 2)
        }
    }
}

#if DEBUG
struct LinearProgressView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LinearProgressView(progress: 0.3)
            LinearProgressView(progress: 0.7)
            LinearProgressView(progress: 1.0)
        }
        .padding()
    }
}
#endif
