# flux-ios-assets

**Centralized app resources for the Flux iOS Design System.** All your strings, images, and icons — type-safe, localized, and multi-language ready.

`flux-ios-assets` provides a **single source of truth** for all app-driven resources. Type-safe enums and structs prevent typos and make refactoring safe. This separation keeps `flux-ios-foundation` generic and fully app-independent.

---

## Features

- **Type-safe access** — Enums and static properties, no raw strings
- **Multi-language support** — English and Arabic via `.lproj` folders
- **RTL-ready** — Full support for Arabic, Hebrew, and other RTL languages
- **SF Symbol icons** — 22 categorized system icon references
- **Remote image helper** — AsyncImage wrapper with placeholder
- **Single source of truth** — All app resources in one package
- **Easy to extend** — Add new strings, images, or languages without modifying components

---

## Installation

```swift
// Package.swift
dependencies: [
    .package(path: "../flux-ios-assets")
]
```

```swift
import flux_ios_assets
```

---

## Localized Strings (FluxStrings)

Access all app strings through type-safe static properties organized by feature:

### Categories

| Category | Keys |
|----------|------|
| **Common** | `ok`, `cancel`, `done`, `save`, `delete`, `edit`, `close`, `retry`, `loading`, `error`, `success` |
| **Auth** | `login`, `logout`, `signUp`, `email`, `password`, `forgotPassword` |
| **Dashboard** | `title`, `welcome` |
| **Payment** | `title`, `amount`, `pay`, `confirmPayment` |

### Usage

```swift
// Type-safe string access
Text(FluxStrings.Common.ok)           // "OK"
Text(FluxStrings.Auth.login)          // "Login"
Text(FluxStrings.Payment.pay)         // "Pay"
Text(FluxStrings.Dashboard.welcome)   // "Welcome"
```

### Supported Languages

| Language | Code | Direction |
|----------|------|-----------|
| English | `en` | LTR |
| Arabic | `ar` | RTL |

Add new languages by creating a new `.lproj` folder in `Resources/` and adding a `Localizable.strings` file.

---

## Image References (FluxImages)

SF Symbol references organized by category — all accessed as type-safe static properties:

| Category | Icons |
|----------|-------|
| **Navigation** | `home`, `profile`, `settings`, `notifications`, `search`, `back`, `forward` |
| **Editing** | `close`, `check`, `plus`, `minus`, `trash`, `edit`, `share` |
| **Media** | `heart`, `star` |
| **Status** | `warning`, `error`, `success`, `info` |
| **Financial** | `creditCard` |
| **Security** | `lock`, `eye`, `eyeSlash` |

### Usage

```swift
// Use with FluxIcon from flux-ios-foundation
FluxIcon(source: .system(FluxImages.Navigation.home), size: .medium)
FluxIcon(source: .system(FluxImages.Status.success), color: FluxColors.success)

// Use with FluxImage
Image(systemName: FluxImages.Editing.edit)
```

### Remote Images

```swift
// AsyncImage wrapper with placeholder
FluxImages.RemoteImage(url: URL(string: "https://example.com/avatar.jpg")!)
```

---

## File Structure

```
flux-ios-assets/
|-- Package.swift
|-- LICENSE
|-- README.md
+-- Sources/flux-ios-assets/
    |-- flux_ios_assets.swift           (module entry)
    |-- Strings/
    |   +-- FluxStrings.swift           (4 categories, 21 string keys)
    |-- Images/
    |   +-- FluxImages.swift            (6 categories, 22 icon refs + RemoteImage)
    +-- Resources/
        |-- en.lproj/
        |   +-- Localizable.strings     (English translations)
        +-- ar.lproj/
            +-- Localizable.strings     (Arabic translations)
```

---

## Adding New Resources

### Add a new string

1. Add the key to `FluxStrings.swift` under the appropriate category:
   ```swift
   public enum Settings {
       public static let title = NSLocalizedString("settings_title", bundle: .module, comment: "")
   }
   ```
2. Add translations to each `.lproj/Localizable.strings`:
   ```
   "settings_title" = "Settings";
   ```

### Add a new language

1. Create a new folder: `Resources/fr.lproj/`
2. Add `Localizable.strings` with all translated keys
3. SPM picks it up automatically

---

## License

MIT License - Copyright (c) 2026 Afzal Siddiqui
