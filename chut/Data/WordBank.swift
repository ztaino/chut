import Foundation

enum WordBank {
    static let difficulties: [DifficultyLevel] = [
        DifficultyLevel(id: .debutant, label: "Débutant", emoji: "🌱", desc: "Vocabulaire simple, mots du quotidien"),
        DifficultyLevel(id: .intermediaire, label: "Intermédiaire", emoji: "🌿", desc: "Vocabulaire courant, thèmes variés"),
        DifficultyLevel(id: .avance, label: "Avancé", emoji: "🌳", desc: "Vocabulaire riche, expressions idiomatiques"),
        DifficultyLevel(id: .natif, label: "Natif", emoji: "🔥", desc: "Argot, culture, nuances subtiles"),
    ]

    static let words: [Difficulty: [ChutCard]] = [
        .debutant: debutantWords,
        .intermediaire: intermediaireWords,
        .avance: avanceWords,
        .natif: natifWords,
    ]
}
