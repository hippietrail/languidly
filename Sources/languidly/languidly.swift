import AppKit

// Global configuration state to track if debug mode is active
@MainActor
enum AppConfig {
    static var isDebugMode = false
}

struct SubEntry {
    let code: String
    let word: String
    let alt: String?
    
    init(_ code: String, _ word: String, alt: String? = nil) {
        self.code = code
        self.word = word
        self.alt = alt
    }
}

struct Entry: ExpressibleByArrayLiteral {
    let items: [SubEntry]
    
    init(_ items: [(String, String, alt: String?)]) {
        self.items = items.map { SubEntry($0.0, $0.1, alt: $0.2) }
    }
    
    init(_ code: String, _ word: String, alt: String? = nil) {
        self.items = [SubEntry(code, word, alt: alt)]
    }
    
    init(arrayLiteral elements: (String, String, alt: String?)...) {
        self.items = elements.map { SubEntry($0.0, $0.1, alt: $0.2) }
    }
}

@MainActor
class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow?

    private let mainStackView = NSStackView()
    private let translationContainer = NSStackView()

    private var currentEntry: String = ""

    func applicationDidFinishLaunching(_ notification: Notification) {
        NSApp.setActivationPolicy(.regular)

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
        pickRandomWord()

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

        translationContainer.orientation = .horizontal
        translationContainer.distribution = .fill
        translationContainer.alignment = .top
        translationContainer.spacing = 24

        let randomWordButton = NSButton(
            title: "Random Word 🎲", target: self, action: #selector(pickRandomWord)
        )
        randomWordButton.font = NSFont.systemFont(ofSize: 16, weight: .medium)

        let randomPhraseButton = NSButton(
            title: "Random Phrase 🎲", target: self, action: #selector(pickRandomPhrase)
        )
        randomPhraseButton.font = NSFont.systemFont(ofSize: 16, weight: .medium)

        let buttonsSV = NSStackView(views: [randomWordButton, randomPhraseButton])
        buttonsSV.orientation = .horizontal
        buttonsSV.distribution = .fill
        buttonsSV.alignment = .top
        buttonsSV.spacing = 16

        let verticalSpacer = NSView()
        verticalSpacer.translatesAutoresizingMaskIntoConstraints = false
        verticalSpacer.setContentHuggingPriority(.defaultLow - 1, for: .vertical)

        mainStackView.addArrangedSubview(translationContainer)
        mainStackView.addArrangedSubview(verticalSpacer)  
        mainStackView.addArrangedSubview(buttonsSV)
    }

    @objc private func pickRandomWord() {
        let choices = wordData.keys.filter { $0 != currentEntry }
        guard let newWord = choices.randomElement() else { return }
        currentEntry = newWord
        updateTranslationDisplay(for: newWord)
    }
    
    @objc private func pickRandomPhrase() {
        let choices = phraseData.keys.filter { $0 != currentEntry }
        guard let newPhrase = choices.randomElement() else { return }
        currentEntry = newPhrase
        updateTranslationDisplay(for: newPhrase)
    }

    private func updateTranslationDisplay(for word: String) {
        for subview in translationContainer.arrangedSubviews {
            translationContainer.removeArrangedSubview(subview)
            subview.removeFromSuperview()
        }

        guard let entries = getEntriesFor(word) else { return }

        let leadingSpacer = NSView()
        leadingSpacer.translatesAutoresizingMaskIntoConstraints = false
        leadingSpacer.setContentHuggingPriority(.defaultLow - 1, for: .horizontal)
        translationContainer.addArrangedSubview(leadingSpacer)

        for entry in entries.shuffled() {
            let columnStack = NSStackView()
            columnStack.orientation = .vertical
            columnStack.spacing = 6
            columnStack.alignment = .centerX
            
            // --- CONDITIONALLY SHOW BLUE BORDER ---
            if AppConfig.isDebugMode {
                columnStack.wantsLayer = true
                columnStack.layer?.borderColor = NSColor.systemBlue.cgColor
                columnStack.layer?.borderWidth = 2
                columnStack.edgeInsets = NSEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
            }
            
            let groupRow = NSStackView()
            groupRow.orientation = .horizontal
            groupRow.spacing = 16
            groupRow.distribution = .fill
            groupRow.alignment = .top
            
            for item in entry.items.shuffled() {
                let itemStack = NSStackView()
                itemStack.orientation = .vertical
                itemStack.spacing = 4
                itemStack.alignment = .centerX
                
                // --- CONDITIONALLY SHOW ORANGE BORDER ---
                if AppConfig.isDebugMode {
                    itemStack.wantsLayer = true
                    itemStack.layer?.borderColor = NSColor.systemOrange.cgColor
                    itemStack.layer?.borderWidth = 1.5
                    itemStack.edgeInsets = NSEdgeInsets(top: 6, left: 6, bottom: 6, right: 6)
                }
                
                let flagLabel = NSTextField(labelWithString: langCodeToFlag(item.code))
                flagLabel.font = NSFont.systemFont(ofSize: 72)
                
                let wordLabel = NSTextField(labelWithString: item.word)
                wordLabel.font = NSFont.systemFont(ofSize: 32, weight: .bold)
                wordLabel.alignment = .center
                wordLabel.cell?.wraps = false
                wordLabel.cell?.isScrollable = true
                
                itemStack.addArrangedSubview(flagLabel)
                itemStack.addArrangedSubview(wordLabel)
                
                if let altText = item.alt, !altText.isEmpty {
                    let altLabel = NSTextField(labelWithString: "(\(altText))")
                    altLabel.font = NSFont.systemFont(ofSize: 18)
                    altLabel.textColor = .secondaryLabelColor
                    altLabel.alignment = .center
                    itemStack.addArrangedSubview(altLabel)
                }
                
                groupRow.addArrangedSubview(itemStack)
            }
            
            columnStack.addArrangedSubview(groupRow)
            translationContainer.addArrangedSubview(columnStack)
        }
        
        let trailingSpacer = NSView()
        trailingSpacer.translatesAutoresizingMaskIntoConstraints = false
        trailingSpacer.setContentHuggingPriority(.defaultLow - 1, for: .horizontal)
        translationContainer.addArrangedSubview(trailingSpacer)
        
        NSLayoutConstraint.activate([
            leadingSpacer.widthAnchor.constraint(equalTo: trailingSpacer.widthAnchor)
        ])
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return true
    }
}
