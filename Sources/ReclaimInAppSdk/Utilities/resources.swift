import Foundation

enum FetchPackageResourceError: Error {
  case noSuchResource(message: String)
  case loadingProblem(message: String)
}

func fetchPackageResource(
  _ resourceName: String,
  _ extensionName: String
) throws -> String {
  let resourceFullName = "\(resourceName).\(extensionName)"

  #if SWIFT_PACKAGE
    guard
      let fileURL = Bundle.module.url(
        forResource: resourceName,
        withExtension: extensionName
      )
    else {
      if let resourceString = Bundle.main.path(
        forResource: resourceName,
        ofType: extensionName
      ) {
        return resourceString
      }
      throw FetchPackageResourceError.noSuchResource(
        message: "Unable to find \(resourceFullName) in bundle."
      )
    }

    do {
      return try String(contentsOf: fileURL, encoding: .utf8)
    } catch {
      throw FetchPackageResourceError.loadingProblem(
        message: "Unable to load \(resourceFullName): \(error)"
      )
    }
  #else
    if let resourceString = Bundle.main.path(
      forResource: resourceName,
      ofType: extensionName
    ) {
      return resourceString
    }
    throw FetchPackageResourceError.loadingProblem(
      message: "Unable to find \(resourceFullName) in bundle."
    )
  #endif
}
