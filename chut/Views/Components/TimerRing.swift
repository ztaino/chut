import SwiftUI

struct TimerRing: View {
    let progress: CGFloat
    let color: Color
    let timeText: String
    let isPulsing: Bool

    @State private var pulseOpacity: Double = 1.0

    var body: some View {
        ZStack {
            Circle()
                .stroke(Color.white.opacity(0.1), lineWidth: 3)

            Circle()
                .trim(from: 0, to: progress)
                .stroke(color, style: StrokeStyle(lineWidth: 3, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.easeInOut(duration: 0.5), value: progress)

            Text(timeText)
                .font(.system(size: 13, weight: .bold, design: .monospaced))
                .foregroundColor(color)
        }
        .opacity(isPulsing ? pulseOpacity : 1.0)
        .onChange(of: isPulsing) { newValue in
            if newValue {
                withAnimation(
                    .easeInOut(duration: 0.5)
                    .repeatForever(autoreverses: true)
                ) {
                    pulseOpacity = 0.4
                }
            } else {
                withAnimation(.none) {
                    pulseOpacity = 1.0
                }
            }
        }
        .onAppear {
            if isPulsing {
                withAnimation(
                    .easeInOut(duration: 0.5)
                    .repeatForever(autoreverses: true)
                ) {
                    pulseOpacity = 0.4
                }
            }
        }
    }
}
