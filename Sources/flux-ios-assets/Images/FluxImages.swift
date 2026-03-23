import SwiftUI

/// Type-safe access to app images and SF Symbols.
public enum FluxImages {

    // MARK: - SF Symbols (System)

    public enum System {
        public static let home = "house.fill"
        public static let profile = "person.fill"
        public static let settings = "gear"
        public static let notifications = "bell.fill"
        public static let search = "magnifyingglass"
        public static let back = "arrow.left"
        public static let forward = "arrow.right"
        public static let close = "xmark"
        public static let check = "checkmark"
        public static let plus = "plus"
        public static let minus = "minus"
        public static let trash = "trash"
        public static let edit = "pencil"
        public static let share = "square.and.arrow.up"
        public static let heart = "heart.fill"
        public static let star = "star.fill"
        public static let warning = "exclamationmark.triangle.fill"
        public static let error = "xmark.circle.fill"
        public static let success = "checkmark.circle.fill"
        public static let info = "info.circle.fill"
        public static let creditCard = "creditcard.fill"
        public static let lock = "lock.fill"
        public static let eye = "eye.fill"
        public static let eyeSlash = "eye.slash.fill"
    }

    // MARK: - Remote Image Helper

    /// A SwiftUI view that loads an image from a URL with a placeholder.
    public struct RemoteImage: View {
        let url: URL?
        let placeholder: String

        public init(url: URL?, placeholder: String = "photo") {
            self.url = url
            self.placeholder = placeholder
        }

        public var body: some View {
            AsyncImage(url: url) { phase in
                switch phase {
                case .success(let image):
                    image.resizable().scaledToFit()
                case .failure:
                    Image(systemName: "exclamationmark.triangle")
                        .foregroundStyle(.secondary)
                case .empty:
                    ProgressView()
                @unknown default:
                    Image(systemName: placeholder)
                        .foregroundStyle(.secondary)
                }
            }
        }
    }
}
