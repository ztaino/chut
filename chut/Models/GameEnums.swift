import Foundation

enum GameScreen {
    case home, game, result
}

enum ActionType {
    case correct, skip, chut
}

enum Difficulty: Hashable {
    case debutant
    case intermediaire
    case avance
    case natif
}

struct TimerOption: Identifiable, Equatable {
    let id: Int
    let label: String
}
