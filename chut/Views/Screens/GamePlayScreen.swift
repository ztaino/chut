import SwiftUI

struct GamePlayScreen: View {
    @ObservedObject var vm: GameViewModel

    var body: some View {
        VStack(spacing: 16) {
            topBar

            ScrollView {
                VStack(spacing: 16) {
                    scorePills

                    if let card = vm.card {
                        cardView(card: card)
                    }
                }
            }

            actionButtons
        }
        .padding(.horizontal, 20)
        .padding(.top, 8)
        .padding(.bottom, 16)
    }

    // MARK: - Top Bar

    private var topBar: some View {
        HStack {
            Button {
                vm.quit()
            } label: {
                Text("← Quitter")
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.horizontal, 12)
                    .padding(.vertical, 8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.white.opacity(0.2), lineWidth: 1)
                    )
            }
            .accessibilityLabel("Quitter la partie")

            Spacer()

            HStack(spacing: 4) {
                ForEach(0..<min(vm.totalRounds, 20), id: \.self) { _ in
                    Circle()
                        .fill(Color.white.opacity(0.3))
                        .frame(width: 6, height: 6)
                }
            }

            Spacer()

            if vm.isUntimed {
                Button {
                    vm.finishGame()
                } label: {
                    Text("Terminer")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(AppTheme.accent)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(AppTheme.accent.opacity(0.4), lineWidth: 1)
                        )
                }
                .accessibilityLabel("Terminer la partie")
            } else {
                TimerRing(
                    progress: vm.timerProgress,
                    color: vm.timerColor,
                    timeText: vm.formattedTime,
                    isPulsing: vm.timeLeft <= 10
                )
                .frame(width: 56, height: 56)
            }
        }
    }

    // MARK: - Score Pills

    private var scorePills: some View {
        HStack(spacing: 10) {
            ScorePill(
                label: "✅ \(vm.correctCount) correct",
                bgColor: AppTheme.successBg,
                borderColor: AppTheme.successBorder,
                textColor: AppTheme.success
            )

            ScorePill(
                label: "🚫 \(vm.chutCount) chut",
                bgColor: AppTheme.dangerBg,
                borderColor: AppTheme.dangerBorder,
                textColor: AppTheme.danger
            )

            Spacer()
        }
    }

    // MARK: - Card

    private func cardView(card: ChutCard) -> some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack {
                Text("FAITES DEVINER :")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.4))
                    .tracking(1.5)

                Spacer()

                Button {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        vm.infoOpen.toggle()
                    }
                } label: {
                    Text("💡")
                        .font(.title3)
                        .padding(6)
                        .background(vm.infoOpen ? Color.yellow.opacity(0.2) : Color.clear)
                        .cornerRadius(8)
                }
                .accessibilityLabel(vm.infoOpen ? Text("Masquer l'indice") : Text("Afficher l'indice"))
            }

            Text(card.mot)
                .font(.system(size: 34, weight: .bold))
                .foregroundColor(.white)
                .tracking(2)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.vertical, 4)

            if vm.infoOpen {
                infoPanel(card: card)
                    .transition(.opacity.combined(with: .scale(scale: 0.95)))
            }

            Rectangle()
                .fill(Color.white.opacity(0.1))
                .frame(height: 1)

            VStack(alignment: .leading, spacing: 8) {
                Text("🚫 MOTS INTERDITS")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.4))
                    .tracking(1.5)

                VStack(spacing: 6) {
                    ForEach(card.motsInterdits, id: \.self) { word in
                        HStack {
                            Text(word.uppercased())
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundColor(AppTheme.danger)
                            Spacer()
                        }
                        .padding(.horizontal, 14)
                        .padding(.vertical, 8)
                        .background(Color.red.opacity(0.1))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.red.opacity(0.2), lineWidth: 1)
                        )
                        .cornerRadius(8)
                    }
                }
            }
        }
        .padding(18)
        .background(
            LinearGradient(
                colors: [Color.white.opacity(0.08), Color.white.opacity(0.04)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(AppTheme.subtleBorder, lineWidth: 1)
        )
        .cornerRadius(18)
    }

    private func infoPanel(card: ChutCard) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            VStack(alignment: .leading, spacing: 4) {
                Text("🇬🇧 En anglais")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.5))

                Text(card.traduction)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
            }

            Rectangle()
                .fill(Color.yellow.opacity(0.15))
                .frame(height: 1)

            VStack(alignment: .leading, spacing: 4) {
                Text("📖 Contexte")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.5))

                Text(card.contexte)
                    .font(.subheadline)
                    .italic()
                    .foregroundColor(.white.opacity(0.8))
            }
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.yellow.opacity(0.08))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.yellow.opacity(0.15), lineWidth: 1)
        )
        .cornerRadius(10)
    }

    // MARK: - Action Buttons

    private var actionButtons: some View {
        GeometryReader { geo in
            let spacing: CGFloat = 10
            let totalSpacing = spacing * 2
            let sideWidth = (geo.size.width - totalSpacing) * 0.25
            let centerWidth = (geo.size.width - totalSpacing) * 0.50

            HStack(spacing: spacing) {
                ActionButton(
                    emoji: "🚫",
                    label: "Chut",
                    bgColor: AppTheme.dangerBg,
                    borderColor: AppTheme.dangerBorder,
                    textColor: AppTheme.danger
                ) {
                    vm.handleAction(.chut)
                }
                .accessibilityLabel("Mot interdit utilisé")
                .frame(width: sideWidth)

                ActionButton(
                    emoji: "✅",
                    label: "Correct",
                    bgColor: AppTheme.successBg,
                    borderColor: AppTheme.successBorder,
                    textColor: AppTheme.success
                ) {
                    vm.handleAction(.correct)
                }
                .accessibilityLabel("Mot deviné correctement")
                .frame(width: centerWidth)

                ActionButton(
                    emoji: "⏭",
                    label: "Passer",
                    bgColor: AppTheme.warningBg,
                    borderColor: AppTheme.warningBorder,
                    textColor: AppTheme.warning
                ) {
                    vm.handleAction(.skip)
                }
                .accessibilityLabel("Passer ce mot")
                .frame(width: sideWidth)
            }
        }
        .frame(height: 90)
    }
}
