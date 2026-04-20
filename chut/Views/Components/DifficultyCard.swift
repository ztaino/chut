import SwiftUI

struct DifficultyCard: View {
    let level: DifficultyLevel
    let isSelected: Bool

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(level.emoji)
                .font(.title2)

            Text(level.label)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(.white)

            Text(level.desc)
                .font(.caption2)
                .foregroundColor(.white.opacity(0.55))
                .lineLimit(2)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(
            isSelected
                ? AppTheme.accent.opacity(0.12)
                : AppTheme.inactiveBg
        )
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(
                    isSelected
                        ? AppTheme.accent.opacity(0.6)
                        : AppTheme.subtleBorder,
                    lineWidth: isSelected ? 1.5 : 1
                )
        )
    }
}
