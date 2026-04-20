import SwiftUI

enum AppTheme {

    // MARK: - Gradients

    static let backgroundGradient = LinearGradient(
        colors: [Color(hex: "#1a1a2e"), Color(hex: "#16213e"), Color(hex: "#0f3460")],
        startPoint: .top,
        endPoint: .bottom
    )

    static let accentGradient = LinearGradient(
        colors: [Color(hex: "#ff8c32"), Color(hex: "#ff6a1a")],
        startPoint: .leading,
        endPoint: .trailing
    )

    // MARK: - Accent

    static let accent = Color(hex: "#ff8228")

    // MARK: - Semantic Colors

    static let success = Color(hex: "#4ade80")
    static let danger = Color(hex: "#f87171")
    static let warning = Color(hex: "#facc15")

    // MARK: - Semantic Backgrounds & Borders

    static let successBg = Color.green.opacity(0.12)
    static let successBorder = Color.green.opacity(0.3)
    static let dangerBg = Color.red.opacity(0.12)
    static let dangerBorder = Color.red.opacity(0.3)
    static let warningBg = Color.yellow.opacity(0.12)
    static let warningBorder = Color.yellow.opacity(0.3)
    static let subtleBorder = Color.white.opacity(0.12)
    static let inactiveBg = Color.white.opacity(0.05)
}
