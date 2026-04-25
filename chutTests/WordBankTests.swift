import XCTest
@testable import chut

final class WordBankTests: XCTestCase {

    // MARK: - Every Difficulty Has Cards

    func testAllDifficultiesHaveCards() {
        for level in WordBank.difficulties {
            let cards = WordBank.words[level.id]
            XCTAssertNotNil(cards, "No cards for difficulty \(level.label)")
            XCTAssertFalse(cards!.isEmpty, "Empty card list for \(level.label)")
        }
    }

    func testDifficultyCountMatchesEnum() {
        let expectedCount = 4
        XCTAssertEqual(WordBank.difficulties.count, expectedCount)
        XCTAssertEqual(WordBank.words.count, expectedCount)
    }

    // MARK: - Card Data Integrity

    func testEveryCardHasExactlyFiveForbiddenWords() {
        for (difficulty, cards) in WordBank.words {
            for (index, card) in cards.enumerated() {
                XCTAssertEqual(
                    card.motsInterdits.count, 5,
                    "Card '\(card.mot)' at index \(index) in \(difficulty) has \(card.motsInterdits.count) forbidden words"
                )
            }
        }
    }

    func testNoEmptyMotValues() {
        for (difficulty, cards) in WordBank.words {
            for card in cards {
                XCTAssertFalse(
                    card.mot.trimmingCharacters(in: .whitespaces).isEmpty,
                    "Empty mot in \(difficulty)"
                )
            }
        }
    }

    func testNoEmptyTranslations() {
        for (difficulty, cards) in WordBank.words {
            for card in cards {
                XCTAssertFalse(
                    card.traduction.trimmingCharacters(in: .whitespaces).isEmpty,
                    "Empty traduction for '\(card.mot)' in \(difficulty)"
                )
            }
        }
    }

    func testNoEmptyContexts() {
        for (difficulty, cards) in WordBank.words {
            for card in cards {
                XCTAssertFalse(
                    card.contexte.trimmingCharacters(in: .whitespaces).isEmpty,
                    "Empty contexte for '\(card.mot)' in \(difficulty)"
                )
            }
        }
    }

    func testNoEmptyForbiddenWords() {
        for (difficulty, cards) in WordBank.words {
            for card in cards {
                for word in card.motsInterdits {
                    XCTAssertFalse(
                        word.trimmingCharacters(in: .whitespaces).isEmpty,
                        "Empty forbidden word in card '\(card.mot)' in \(difficulty)"
                    )
                }
            }
        }
    }

    // MARK: - Duplicate Detection

    func testNoDuplicateMotsWithinDifficulty() {
        for (difficulty, cards) in WordBank.words {
            let mots = cards.map { $0.mot.uppercased() }
            let uniqueMots = Set(mots)
            let duplicates = mots.filter { mot in
                mots.filter { $0 == mot }.count > 1
            }
            XCTAssertEqual(
                mots.count, uniqueMots.count,
                "Duplicate mots in \(difficulty): \(Set(duplicates))"
            )
        }
    }

    func testNoDuplicateForbiddenWordsWithinCard() {
        for (difficulty, cards) in WordBank.words {
            for card in cards {
                let forbidden = card.motsInterdits.map { $0.lowercased() }
                let unique = Set(forbidden)
                XCTAssertEqual(
                    forbidden.count, unique.count,
                    "Duplicate forbidden words in card '\(card.mot)' in \(difficulty)"
                )
            }
        }
    }

    // MARK: - Forbidden Word Quality

    func testForbiddenWordsDoNotContainMainWord() {
        for (difficulty, cards) in WordBank.words {
            let motLower = cards.map { $0.mot.lowercased() }
            for (index, card) in cards.enumerated() {
                let mot = motLower[index]
                for forbidden in card.motsInterdits {
                    XCTAssertFalse(
                        forbidden.lowercased().contains(mot),
                        "Forbidden word '\(forbidden)' contains mot '\(card.mot)' in \(difficulty)"
                    )
                }
            }
        }
    }

    func testMainWordNotInForbiddenList() {
        for (difficulty, cards) in WordBank.words {
            for card in cards {
                let forbiddenLower = card.motsInterdits.map { $0.lowercased() }
                XCTAssertFalse(
                    forbiddenLower.contains(card.mot.lowercased()),
                    "Main word '\(card.mot)' appears in its own forbidden list in \(difficulty)"
                )
            }
        }
    }

    // MARK: - Minimum Pool Size

    func testEachDifficultyHasMinimumCards() {
        let minimumCards = 20
        for (difficulty, cards) in WordBank.words {
            XCTAssertGreaterThanOrEqual(
                cards.count, minimumCards,
                "\(difficulty) only has \(cards.count) cards (minimum: \(minimumCards))"
            )
        }
    }

    // MARK: - Difficulty Metadata

    func testDifficultyLevelsHaveUniqueIds() {
        let ids = WordBank.difficulties.map(\.id)
        XCTAssertEqual(ids.count, Set(ids).count)
    }

    func testDifficultyLevelsHaveNonEmptyLabels() {
        for level in WordBank.difficulties {
            XCTAssertFalse(level.label.isEmpty)
            XCTAssertFalse(level.emoji.isEmpty)
            XCTAssertFalse(level.desc.isEmpty)
        }
    }
}
