import SwiftUI

struct ResultScreen: View {
    @ObservedObject var vm: GameViewModel

    private var resultMessage: String {
        guard vm.totalRounds > 0 else { return "Continuez ! 💪" }
        if vm.correctCount == vm.totalRounds {
            return "Parfait ! 🏆"
        } else if vm.correctCount >= vm.totalRounds / 2 {
            return "Très bien ! 👏"
        } else {
            return "Continuez ! 💪"
        }
    }

    private var difficultyLevel: DifficultyLevel? {
        WordBank.difficulties.first { $0.id == vm.difficulty }
    }

    var body: some View {
        VStack(spacing: 24) {
            Spacer()

            if vm.timedOut {
                Text("⏰ Temps écoulé !")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(AppTheme.danger)
            }

            HStack(alignment: .firstTextBaseline, spacing: 2) {
                Text("\(vm.correctCount)")
                    .font(.system(size: 72, weight: .bold))
                    .foregroundColor(.white)

                Text("/\(vm.totalRounds)")
                    .font(.system(size: 28, weight: .medium))
                    .foregroundColor(.white.opacity(0.4))
            }

            Text(resultMessage)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)

            if let level = difficultyLevel {
                difficultyBadge(level)
            }

            statsRow
                .padding(.top, 8)

            Spacer()

            replayButton
            changeLevelButton

            Spacer().frame(height: 10)
        }
        .padding(.horizontal, 20)
    }

    // MARK: - Subviews

    private func difficultyBadge(_ level: DifficultyLevel) -> some View {
        HStack(spacing: 6) {
            Text(level.emoji)
            Text(level.label)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(.white.opacity(0.7))
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
        .background(Color.white.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.white.opacity(0.15), lineWidth: 1)
        )
    }

    private var statsRow: some View {
        HStack(spacing: 12) {
            StatBox(
                count: vm.correctCount,
                icon: "✅",
                label: "Correct",
                borderColor: AppTheme.successBorder,
                textColor: AppTheme.success
            )

            StatBox(
                count: vm.skipCount,
                icon: "⏭",
                label: "Passé",
                borderColor: AppTheme.warningBorder,
                textColor: AppTheme.warning
            )

            StatBox(
                count: vm.chutCount,
                icon: "🚫",
                label: "Chut",
                borderColor: AppTheme.dangerBorder,
                textColor: AppTheme.danger
            )
        }
    }

    private var replayButton: some View {
        Button {
            vm.startGame()
        } label: {
            HStack {
                Spacer()
                Text("Rejouer →")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(16)
            .background(AppTheme.accentGradient)
            .cornerRadius(14)
        }
    }

    private var changeLevelButton: some View {
        Button {
            vm.quit()
        } label: {
            HStack {
                Spacer()
                Text("← Changer le niveau")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.white.opacity(0.6))
                Spacer()
            }
            .padding(14)
            .background(Color.white.opacity(0.06))
            .clipShape(RoundedRectangle(cornerRadius: 14))
            .overlay(
                RoundedRectangle(cornerRadius: 14)
                    .stroke(AppTheme.subtleBorder, lineWidth: 1)
            )
        }
    }
}
