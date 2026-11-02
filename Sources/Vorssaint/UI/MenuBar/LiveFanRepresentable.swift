// SPDX-License-Identifier: GPL-3.0-or-later

import AppKit
import SwiftUI

struct LiveFanRepresentable: NSViewRepresentable {
    var interactive: Bool
    /// Fixed fan percent to show (Settings live preview). Ignored when `autoDemo` is on.
    var percent: Int?
    /// Cycles 25 → 50 → 75 → 100 → 0 on a timer (Settings style mockup).
    var autoDemo = false
    /// Blade color; Settings embeds sit on dark pills, so they pass white.
    var tint: NSColor?

    init(interactive: Bool, percent: Int? = nil, autoDemo: Bool = false, tint: NSColor? = nil) {
        self.interactive = interactive
        self.percent = percent
        self.autoDemo = autoDemo
        self.tint = tint
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeNSView(context: Context) -> LiveFanView {
        let view = LiveFanView(preview: true)
        context.coordinator.view = view
        context.coordinator.interactive = interactive
        if let tint { view.setTint(tint) }
        let click = NSClickGestureRecognizer(
            target: context.coordinator,
            action: #selector(Coordinator.handleClick(_:))
        )
        view.addGestureRecognizer(click)
        context.coordinator.setAutoDemo(autoDemo)
        if !autoDemo, let percent { view.setValue(percent) }
        return view
    }

    func updateNSView(_ nsView: LiveFanView, context: Context) {
        context.coordinator.view = nsView
        context.coordinator.interactive = interactive
        if let tint { nsView.setTint(tint) }
        context.coordinator.setAutoDemo(autoDemo)
        if !autoDemo, let percent { nsView.setValue(percent) }
    }

    static func dismantleNSView(_ nsView: LiveFanView, coordinator: Coordinator) {
        coordinator.setAutoDemo(false)
    }

    @MainActor
    final class Coordinator: NSObject {
        weak var view: LiveFanView?
        var interactive = false

        private static let demoSteps = [25, 50, 75, 100, 0]
        private static let demoInterval: TimeInterval = 2.5
        private var demoTimer: Timer?
        private var demoIndex = 0

        @objc func handleClick(_ recognizer: NSClickGestureRecognizer) {
            guard interactive else { return }
            view?.previewInteracted()
        }

        func setAutoDemo(_ enabled: Bool) {
            if enabled {
                guard demoTimer == nil else { return }
                demoIndex = 0
                let timer = Timer(timeInterval: Self.demoInterval, repeats: true) { [weak self] _ in
                    MainActor.assumeIsolated { self?.advanceDemo() }
                }
                RunLoop.main.add(timer, forMode: .common)
                demoTimer = timer
                // First frame already moving instead of waiting a full interval.
                DispatchQueue.main.async { [weak self] in self?.advanceDemo() }
            } else {
                demoTimer?.invalidate()
                demoTimer = nil
            }
        }

        private func advanceDemo() {
            guard demoTimer != nil else { return }
            view?.setValue(Self.demoSteps[demoIndex % Self.demoSteps.count])
            demoIndex += 1
        }
    }
}
