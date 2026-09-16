import AppKit

struct Entry {
    let code: String
    let word: String
    let alt: String?

    init(_ code: String, _ word: String, alt: String? = nil) {
        self.code = code
        self.word = word
        self.alt = alt
    }
}

@MainActor
class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow?

    private let mainStackView = NSStackView()
    private let translationContainer = NSStackView()

    private var currentWord: String = ""
    private let availableWords = ["cat", "pigeon", "room"]

    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApp.setActivationPolicy(.regular)

        // Widened the window substantially to accommodate large fonts side-by-side
        let window = NSWindow(
            contentRect: NSRect(x: 0, y: 0, width: 850, height: 400),
            styleMask: [.titled, .closable, .miniaturizable, .resizable],
            backing: .buffered,
            defer: false
        )
        self.window = window
        window.center()
        window.title = "💬 Languidly 💬"

        guard let cv = window.contentView else { return }

        setupUI(inside: cv)
        pickRandomTranslation()

        window.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
    }

    private func setupUI(inside contentView: NSView) {
        mainStackView.orientation = .vertical
        mainStackView.spacing = 24
        mainStackView.edgeInsets = NSEdgeInsets(top: 24, left: 24, bottom: 24, right: 24)

        contentView.addSubview(mainStackView)
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            mainStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])

        // CRITICAL FIX: Changed alignment to .top so flags and words anchor at the top line.
        // Distribution set to .fillProportionally to allow complex scripts more horizontal room.
        translationContainer.orientation = .horizontal
        translationContainer.distribution = .fillProportionally
        translationContainer.alignment = .top
        translationContainer.spacing = 16
        translationContainer.setContentHuggingPriority(.defaultHigh, for: .vertical)

        // Large, highly visible action button
        let randomButton = NSButton(
            title: "Randomize Translation 🎲", target: self, action: #selector(pickRandomTranslation)
        )
        randomButton.bezelStyle = .rounded
        randomButton.font = NSFont.systemFont(ofSize: 16, weight: .medium)

        mainStackView.addArrangedSubview(translationContainer)
        mainStackView.addArrangedSubview(randomButton)
    }

    @objc private func pickRandomTranslation() {
        // Grab the dictionary keys dynamically, omitting the current word
        let choices = dictionaryData.keys.filter { $0 != currentWord }
        guard let newWord = choices.randomElement() else { return }

        currentWord = newWord
        updateTranslationDisplay(for: newWord)
    }

    private func updateTranslationDisplay(for word: String) {
        for subview in translationContainer.arrangedSubviews {
            translationContainer.removeArrangedSubview(subview)
            subview.removeFromSuperview()
        }

        guard let entries = getEntriesFor(word) else { return }

        for entry in entries.shuffled() {
            let columnStack = NSStackView()
            columnStack.orientation = .vertical
            columnStack.spacing = 6
            columnStack.alignment = .centerX

            // JUMBO Size Flag for crystal clear viewing
            let flagLabel = NSTextField(labelWithString: langCodeToFlag(entry.code))
            flagLabel.font = NSFont.systemFont(ofSize: 72)

            // Large Primary Translation Text
            let wordLabel = NSTextField(labelWithString: entry.word)
            wordLabel.font = NSFont.systemFont(ofSize: 32, weight: .bold)
            wordLabel.alignment = .center

            // Setup text scaling compression safety nets so large text scales down gracefully if compressed
            wordLabel.cell?.wraps = false
            wordLabel.cell?.isScrollable = true

            columnStack.addArrangedSubview(flagLabel)
            columnStack.addArrangedSubview(wordLabel)

            // Alt Text hangs safely underneath without shifting the main layout row heights up or down
            if let altText = entry.alt {
                let altLabel = NSTextField(labelWithString: "(\(altText))")
                altLabel.font = NSFont.systemFont(ofSize: 18)  // Bumped up for readability
                altLabel.textColor = .secondaryLabelColor
                altLabel.alignment = .center
                columnStack.addArrangedSubview(altLabel)
            }

            translationContainer.addArrangedSubview(columnStack)
        }
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}

@main
struct Launcher {
    @MainActor
    static func main() {
        let app = NSApplication.shared
        let delegate = AppDelegate()
        app.delegate = delegate
        app.run()
    }
}
