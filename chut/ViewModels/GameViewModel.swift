import SwiftUI
import Combine

class GameViewModel: ObservableObject {
    @Published var screen: GameScreen = .home
    @Published var difficulty: Difficulty = .intermediaire
    @Published var selectedDuration = 60
    @Published var card: ChutCard?
    @Published var correctCount = 0
    @Published var skipCount = 0
    @Published var chutCount = 0
    @Published var flash: ActionType?
    @Published var infoOpen = false
    @Published var timeLeft = 60
    @Published var timedOut = false

    private var usedIndices: [Int] = []
    private var timer: AnyCancellable?

    static let timerOptions: [TimerOption] = [
        TimerOption(id: 0, label: "∞"),
        TimerOption(id: 30, label: "30s"),
        TimerOption(id: 60, label: "1 min"),
        TimerOption(id: 90, label: "1:30"),
        TimerOption(id: 120, label: "2 min"),
        TimerOption(id: 180, label: "3 min"),
        TimerOption(id: 300, label: "5 min"),
    ]

    var isUntimed: Bool { selectedDuration == 0 }

    var totalRounds: Int { correctCount + skipCount + chutCount }

    var formattedTime: String {
        let minutes = timeLeft / 60
        let seconds = timeLeft % 60
        return "\(minutes):\(String(format: "%02d", seconds))"
    }

    var timerColor: Color {
        if isUntimed { return AppTheme.success }
        if timeLeft <= 10 { return AppTheme.danger }
        if timeLeft <= 60 { return AppTheme.warning }
        return AppTheme.success
    }

    var timerProgress: CGFloat {
        if isUntimed { return 1.0 }
        return CGFloat(timeLeft) / CGFloat(selectedDuration)
    }

    func startGame() {
        correctCount = 0
        skipCount = 0
        chutCount = 0
        flash = nil
        infoOpen = false
        timedOut = false
        usedIndices = []

        if isUntimed {
            timeLeft = 0
        } else {
            timeLeft = selectedDuration
        }

        pickCard()

        if isUntimed {
            startElapsedTimer()
        } else {
            startTimer()
        }

        screen = .game
    }

    func handleAction(_ action: ActionType) {
        guard screen == .game else { return }

        switch action {
        case .correct:
            correctCount += 1
        case .skip:
            skipCount += 1
        case .chut:
            chutCount += 1
        }

        flash = action

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) { [weak self] in
            guard let self = self, self.screen == .game else { return }
            self.flash = nil
            self.infoOpen = false
            self.pickCard()
        }
    }

    func finishGame() {
        stopTimer()
        screen = .result
    }

    func quit() {
        stopTimer()
        screen = .home
    }

    func selectDifficulty(_ level: Difficulty) {
        difficulty = level
    }

    func selectDuration(_ seconds: Int) {
        selectedDuration = seconds
    }

    private func pickCard() {
        guard let cards = WordBank.words[difficulty], !cards.isEmpty else { return }

        if usedIndices.count >= cards.count {
            usedIndices = []
        }

        let available = Array(0..<cards.count).filter { !usedIndices.contains($0) }
        guard let randomIndex = available.randomElement() else { return }
        usedIndices.append(randomIndex)
        card = cards[randomIndex]
    }

    private func startElapsedTimer() {
        stopTimer()
        timer = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                guard let self = self, self.screen == .game else { return }
                self.timeLeft += 1
            }
    }

    private func startTimer() {
        stopTimer()
        timer = Timer.publish(every: 1, on: .main, in: .common)
            .autoconnect()
            .sink { [weak self] _ in
                guard let self = self, self.screen == .game else { return }
                if self.timeLeft > 0 {
                    self.timeLeft -= 1
                } else {
                    self.timedOut = true
                    self.finishGame()
                }
            }
    }

    private func stopTimer() {
        timer?.cancel()
        timer = nil
    }
}
