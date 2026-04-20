import SwiftUI

struct StatBox: View {
    let count: Int
    let icon: String
    let label: String
    let borderColor: Color
    let textColor: Color

    var body: some View {
        VStack(spacing: 6) {
            Text("\(count)")
                .font(.system(size: 28, weight: .bold))
                .foregroundColor(.white)

            HStack(spacing: 4) {
                Text(icon)
                    .font(.caption2)
                Text(label)
                    .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundColor(.white.opacity(0.5))
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(AppTheme.inactiveBg)
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(borderColor, lineWidth: 1)
        )
    }
}
