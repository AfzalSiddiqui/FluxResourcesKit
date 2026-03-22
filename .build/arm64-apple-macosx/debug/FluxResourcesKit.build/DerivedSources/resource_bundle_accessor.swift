import class Foundation.Bundle

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("FluxResourcesKit_FluxResourcesKit.bundle").path
        let buildPath = "/Users/mac/Desktop/GithubProject/FluxDesignComponent/FluxResourcesKit/.build/arm64-apple-macosx/debug/FluxResourcesKit_FluxResourcesKit.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}