import SwiftUI

struct HomeScreen: View {
    @ObservedObject var vm: GameViewModel
    @State private var showRules = false

    private let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Spacer().frame(height: 20)

                logo
                difficultySection
                timerSection
                startButton

                Spacer().frame(height: 20)
            }
            .padding(.horizontal, 20)
        }
        .overlay(alignment: .topTrailing) {
            Button {
                showRules = true
            } label: {
                Image(systemName: "questionmark.circle")
                    .font(.title3)
                    .foregroundColor(.white.opacity(0.5))
            }
            .padding(20)
        }
        .sheet(isPresented: $showRules) {
            rulesSheet
        }
    }

    // MARK: - Sections

    private var logo: some View {
        VStack(spacing: 8) {
            Text("🤫 CHUT")
                .font(.system(size: 38, weight: .bold, design: .serif))
                .foregroundColor(.white)
                .tracking(6)

            Text("Le jeu de tabou · en français")
                .font(.subheadline)
                .foregroundColor(.white.opacity(0.5))
        }
        .padding(.bottom, 8)
    }

    private var difficultySection: some View {
        VStack(spacing: 14) {
            sectionHeader("NIVEAU DE DIFFICULTÉ")

            LazyVGrid(columns: columns, spacing: 12) {
                ForEach(WordBank.difficulties) { level in
                    Button {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            vm.selectDifficulty(level.id)
                        }
                    } label: {
                        DifficultyCard(
                            level: level,
                            isSelected: vm.difficulty == level.id
                        )
                    }
                    .buttonStyle(.plain)
                    .accessibilityLabel("\(level.label), \(level.desc)")
                    .accessibilityAddTraits(vm.difficulty == level.id ? .isSelected : [])
                }
            }
        }
        .padding(.horizontal, 4)
    }

    private var timerSection: some View {
        VStack(spacing: 14) {
            sectionHeader("DURÉE DU TOUR")

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(GameViewModel.timerOptions) { option in
                        timerOptionButton(option)
                    }
                }
            }
        }
        .padding(.horizontal, 4)
    }

    private var rulesSheet: some View {
        VStack(spacing: 20) {
            Text("📋 Comment jouer")
                .font(.title2)
                .fontWeight(.bold)

            (Text("Jouez en équipes ou en face à face. ")
                + Text("Faites deviner le mot principal ")
                + Text("sans utiliser").fontWeight(.bold)
                + Text(" les mots interdits. Tapez 💡 pour voir la traduction et le contexte. Devinez le plus de mots possible avant la fin du chrono !"))
                .font(.body)
                .lineSpacing(4)
                .multilineTextAlignment(.center)

            Button("Compris !") {
                showRules = false
            }
            .fontWeight(.semibold)
            .padding(.top, 8)
        }
        .padding(32)
        .presentationDetents([.medium])
    }

    private var startButton: some View {
        Button {
            vm.startGame()
        } label: {
            HStack {
                Spacer()
                Text("Commencer →")
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

    // MARK: - Helpers

    private func sectionHeader(_ text: String) -> some View {
        Text(text)
            .font(.caption)
            .fontWeight(.semibold)
            .foregroundColor(.white.opacity(0.35))
            .tracking(2)
            .frame(maxWidth: .infinity, alignment: .leading)
    }

    private func timerOptionButton(_ option: TimerOption) -> some View {
        let isSelected = vm.selectedDuration == option.id
        return Button {
            withAnimation(.easeInOut(duration: 0.2)) {
                vm.selectDuration(option.id)
            }
        } label: {
            Text(option.label)
                .font(.subheadline)
                .fontWeight(isSelected ? .bold : .medium)
                .foregroundColor(isSelected ? .white : .white.opacity(0.5))
                .padding(.horizontal, 16)
                .padding(.vertical, 10)
                .background(isSelected ? AppTheme.accent.opacity(0.2) : AppTheme.inactiveBg)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(
                            isSelected ? AppTheme.accent.opacity(0.6) : AppTheme.subtleBorder,
                            lineWidth: isSelected ? 1.5 : 1
                        )
                )
                .cornerRadius(10)
        }
        .buttonStyle(.plain)
        .accessibilityLabel("Durée \(option.label)")
        .accessibilityAddTraits(isSelected ? .isSelected : [])
    }
}
