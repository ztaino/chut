import SwiftUI

struct ActionButton: View {
    let emoji: String
    let label: String
    let bgColor: Color
    let borderColor: Color
    let textColor: Color
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            VStack(spacing: 8) {
                Text(emoji)
                    .font(.system(size: 32))
                Text(label)
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(textColor)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 20)
            .background(bgColor)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(borderColor, lineWidth: 1.5)
            )
        }
    }
}
