import Foundation

enum AppLanguage: String, CaseIterable {
    case french
    case english

    var locale: Locale {
        switch self {
        case .french: return Locale(identifier: "fr")
        case .english: return Locale(identifier: "en")
        }
    }
}
