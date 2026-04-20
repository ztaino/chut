import SwiftUI

struct ContentView: View {
    @StateObject private var vm = GameViewModel()

    var body: some View {
        ZStack {
            AppTheme.backgroundGradient
                .ignoresSafeArea()

            flashOverlay

            switch vm.screen {
            case .home:
                HomeScreen(vm: vm)
                    .transition(.opacity)
            case .game:
                GamePlayScreen(vm: vm)
                    .transition(.opacity)
            case .result:
                ResultScreen(vm: vm)
                    .transition(.opacity)
            }
        }
        .preferredColorScheme(.dark)
        .animation(.easeInOut(duration: 0.3), value: vm.screen)
        .animation(.easeInOut(duration: 0.15), value: vm.flash)
    }

    @ViewBuilder
    private var flashOverlay: some View {
        if let flash = vm.flash {
            let color: Color = {
                switch flash {
                case .correct: return Color.green
                case .chut: return Color.red
                case .skip: return Color.yellow
                }
            }()
            color.opacity(0.15)
                .ignoresSafeArea()
                .allowsHitTesting(false)
        }
    }
}

#Preview {
    ContentView()
}
