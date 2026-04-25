import XCTest
@testable import chut

final class GameViewModelTests: XCTestCase {

    private var vm: GameViewModel!

    override func setUp() {
        super.setUp()
        vm = GameViewModel()
    }

    override func tearDown() {
        vm = nil
        super.tearDown()
    }

    // MARK: - Initial State

    func testInitialState() {
        XCTAssertEqual(vm.screen, .home)
        XCTAssertEqual(vm.difficulty, .intermediaire)
        XCTAssertEqual(vm.selectedDuration, 60)
        XCTAssertNil(vm.card)
        XCTAssertEqual(vm.correctCount, 0)
        XCTAssertEqual(vm.skipCount, 0)
        XCTAssertEqual(vm.chutCount, 0)
        XCTAssertNil(vm.flash)
        XCTAssertFalse(vm.infoOpen)
        XCTAssertFalse(vm.timedOut)
    }

    // MARK: - Starting a Game

    func testStartGameTransitionsToGameScreen() {
        vm.startGame()
        XCTAssertEqual(vm.screen, .game)
    }

    func testStartGameResetsScores() {
        vm.startGame()
        vm.handleAction(.correct)
        vm.handleAction(.skip)
        vm.handleAction(.chut)

        vm.startGame()

        XCTAssertEqual(vm.correctCount, 0)
        XCTAssertEqual(vm.skipCount, 0)
        XCTAssertEqual(vm.chutCount, 0)
    }

    func testStartGamePicksACard() {
        vm.startGame()
        XCTAssertNotNil(vm.card)
    }

    func testStartGameTimedSetsTimeLeft() {
        vm.selectDuration(90)
        vm.startGame()
        XCTAssertEqual(vm.timeLeft, 90)
    }

    func testStartGameUntimedSetsTimeLeftToZero() {
        vm.selectDuration(0)
        vm.startGame()
        XCTAssertEqual(vm.timeLeft, 0)
    }

    func testStartGameResetsTimedOut() {
        vm.startGame()
        vm.startGame()
        XCTAssertFalse(vm.timedOut)
    }

    func testStartGameClosesInfoPanel() {
        vm.startGame()
        vm.infoOpen = true
        vm.startGame()
        XCTAssertFalse(vm.infoOpen)
    }

    // MARK: - Difficulty Selection

    func testSelectDifficulty() {
        vm.selectDifficulty(.avance)
        XCTAssertEqual(vm.difficulty, .avance)
    }

    func testSelectDifficultyPicksFromCorrectPool() {
        vm.selectDifficulty(.natif)
        vm.startGame()

        let natifWords = WordBank.words[.natif]!
        let cardMots = natifWords.map(\.mot)
        XCTAssertTrue(cardMots.contains(vm.card!.mot))
    }

    // MARK: - Duration Selection

    func testSelectDuration() {
        vm.selectDuration(180)
        XCTAssertEqual(vm.selectedDuration, 180)
    }

    func testIsUntimedWhenDurationZero() {
        vm.selectDuration(0)
        XCTAssertTrue(vm.isUntimed)
    }

    func testIsNotUntimedWhenDurationPositive() {
        vm.selectDuration(60)
        XCTAssertFalse(vm.isUntimed)
    }

    // MARK: - Handle Actions

    func testHandleCorrectIncrementsCount() {
        vm.startGame()
        vm.handleAction(.correct)
        XCTAssertEqual(vm.correctCount, 1)
    }

    func testHandleSkipIncrementsCount() {
        vm.startGame()
        vm.handleAction(.skip)
        XCTAssertEqual(vm.skipCount, 1)
    }

    func testHandleChutIncrementsCount() {
        vm.startGame()
        vm.handleAction(.chut)
        XCTAssertEqual(vm.chutCount, 1)
    }

    func testHandleActionSetsFlash() {
        vm.startGame()
        vm.handleAction(.correct)
        XCTAssertEqual(vm.flash, .correct)
    }

    func testHandleActionIgnoredWhenNotOnGameScreen() {
        XCTAssertEqual(vm.screen, .home)
        vm.handleAction(.correct)
        XCTAssertEqual(vm.correctCount, 0)
        XCTAssertNil(vm.flash)
    }

    func testTotalRoundsAccumulates() {
        vm.startGame()
        vm.handleAction(.correct)
        vm.handleAction(.correct)
        vm.handleAction(.skip)
        vm.handleAction(.chut)
        XCTAssertEqual(vm.totalRounds, 4)
    }

    func testHandleActionClearsFlashAfterDelay() {
        vm.startGame()
        vm.handleAction(.correct)

        let expectation = expectation(description: "flash clears")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            XCTAssertNil(self.vm.flash)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 1)
    }

    func testHandleActionPicksNewCardAfterDelay() {
        vm.startGame()
        let firstCard = vm.card
        vm.handleAction(.correct)

        let expectation = expectation(description: "new card picked")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            XCTAssertNotEqual(self.vm.card, firstCard)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 1)
    }

    // MARK: - Card Picking

    func testCardsDoNotRepeatUntilExhausted() {
        vm.selectDifficulty(.debutant)
        vm.startGame()

        let totalCards = WordBank.words[.debutant]!.count
        var seenMots: Set<String> = []

        for _ in 0..<totalCards {
            if let card = vm.card {
                seenMots.insert(card.mot)
            }
            vm.handleAction(.skip)
            RunLoop.main.run(until: Date().addingTimeInterval(0.35))
        }

        XCTAssertEqual(seenMots.count, totalCards)
    }

    func testCardPickingHandlesAllDifficulties() {
        for difficulty in [Difficulty.debutant, .intermediaire, .avance, .natif] {
            vm.selectDifficulty(difficulty)
            vm.startGame()
            XCTAssertNotNil(vm.card, "No card picked for \(difficulty)")
        }
    }

    // MARK: - Finishing a Game

    func testFinishGameTransitionsToResult() {
        vm.startGame()
        vm.finishGame()
        XCTAssertEqual(vm.screen, .result)
    }

    func testQuitTransitionsToHome() {
        vm.startGame()
        vm.quit()
        XCTAssertEqual(vm.screen, .home)
    }

    func testActionsIgnoredAfterFinish() {
        vm.startGame()
        vm.handleAction(.correct)
        vm.finishGame()

        vm.handleAction(.correct)
        XCTAssertEqual(vm.correctCount, 1)
    }

    func testActionsIgnoredAfterQuit() {
        vm.startGame()
        vm.handleAction(.correct)
        vm.quit()

        vm.handleAction(.correct)
        XCTAssertEqual(vm.correctCount, 1)
    }

    // MARK: - Timer

    func testTimerCountsDown() {
        vm.selectDuration(60)
        vm.startGame()

        let expectation = expectation(description: "timer ticks")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            XCTAssertLessThan(self.vm.timeLeft, 60)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 3)
    }

    func testUntimedTimerCountsUp() {
        vm.selectDuration(0)
        vm.startGame()

        let expectation = expectation(description: "elapsed timer ticks")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            XCTAssertGreaterThan(self.vm.timeLeft, 0)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 3)
    }

    func testTimerStopsOnFinish() {
        vm.selectDuration(60)
        vm.startGame()
        vm.finishGame()

        let timeAfterFinish = vm.timeLeft
        let expectation = expectation(description: "timer stopped")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            XCTAssertEqual(self.vm.timeLeft, timeAfterFinish)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 2)
    }

    func testTimerStopsOnQuit() {
        vm.selectDuration(60)
        vm.startGame()
        vm.quit()

        let timeAfterQuit = vm.timeLeft
        let expectation = expectation(description: "timer stopped")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            XCTAssertEqual(self.vm.timeLeft, timeAfterQuit)
            expectation.fulfill()
        }
        waitForExpectations(timeout: 2)
    }

    // MARK: - Timer Display

    func testFormattedTimeFormat() {
        vm.selectDuration(90)
        vm.startGame()
        XCTAssertEqual(vm.formattedTime, "1:30")
    }

    func testFormattedTimeZeroPadding() {
        vm.selectDuration(65)
        vm.startGame()
        XCTAssertEqual(vm.formattedTime, "1:05")
    }

    func testTimerProgressFullAtStart() {
        vm.selectDuration(60)
        vm.startGame()
        XCTAssertEqual(vm.timerProgress, 1.0)
    }

    func testTimerProgressAlwaysOneWhenUntimed() {
        vm.selectDuration(0)
        vm.startGame()
        XCTAssertEqual(vm.timerProgress, 1.0)
    }

    // MARK: - Timer Color

    func testTimerColorGreenWhenUntimed() {
        vm.selectDuration(0)
        vm.startGame()
        XCTAssertEqual(vm.timerColor, AppTheme.success)
    }

    func testTimerColorGreenWhenAbove60() {
        vm.selectDuration(120)
        vm.startGame()
        XCTAssertEqual(vm.timerColor, AppTheme.success)
    }

    func testTimerColorDangerWhenLow() {
        vm.selectDuration(10)
        vm.startGame()
        XCTAssertEqual(vm.timerColor, AppTheme.danger)
    }
}
