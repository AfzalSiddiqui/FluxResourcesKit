import Foundation

/// Type-safe access to localized strings.
public enum FluxStrings {

    // MARK: - Common

    public enum Common {
        public static var ok: String { localized("common.ok") }
        public static var cancel: String { localized("common.cancel") }
        public static var done: String { localized("common.done") }
        public static var save: String { localized("common.save") }
        public static var delete: String { localized("common.delete") }
        public static var edit: String { localized("common.edit") }
        public static var close: String { localized("common.close") }
        public static var retry: String { localized("common.retry") }
        public static var loading: String { localized("common.loading") }
        public static var error: String { localized("common.error") }
        public static var success: String { localized("common.success") }
    }

    // MARK: - Auth

    public enum Auth {
        public static var login: String { localized("auth.login") }
        public static var logout: String { localized("auth.logout") }
        public static var signUp: String { localized("auth.signUp") }
        public static var email: String { localized("auth.email") }
        public static var password: String { localized("auth.password") }
        public static var forgotPassword: String { localized("auth.forgotPassword") }
    }

    // MARK: - Dashboard

    public enum Dashboard {
        public static var title: String { localized("dashboard.title") }
        public static var welcome: String { localized("dashboard.welcome") }
    }

    // MARK: - Payment

    public enum Payment {
        public static var title: String { localized("payment.title") }
        public static var amount: String { localized("payment.amount") }
        public static var pay: String { localized("payment.pay") }
        public static var confirmPayment: String { localized("payment.confirmPayment") }
    }

    // MARK: - Lookup

    private static func localized(_ key: String) -> String {
        NSLocalizedString(key, bundle: .module, comment: "")
    }
}
