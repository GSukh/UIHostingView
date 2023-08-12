#if os(iOS)

import UIKit
import SwiftUI

final public class UIHostingView<Content: View>: UIView {
    private let hostingViewController: UIHostingController<Content>

    private var hostingView: UIView {
        hostingViewController.view
    }
    private var isPresented = false

    public init(
        view: Content
    ) {
        hostingViewController = UIHostingController(rootView: view)
        super.init(frame: .zero)
        setup()
    }

    required init?(
        coder: NSCoder
    ) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
    }

    public override func layoutSubviews() {
        super.layoutSubviews()

        if isPresented {
            hostingView.frame = bounds
        }
    }

    public override func didMoveToWindow() {
        if window != nil {
            attachViewController()
        } else {
            detachViewController()
        }
    }

    private func attachViewController() {
        guard
            !isPresented,
            let parentVC = parentViewController()
        else {
            return
        }

        parentVC.addChild(hostingViewController)
        hostingView.frame = bounds
        addSubview(hostingView)
        hostingViewController.didMove(toParent: parentVC)

        isPresented = true
    }

    private func detachViewController() {
        hostingViewController.removeFromParent()
        hostingView.removeFromSuperview()

        isPresented = false
    }

    func parentViewController() -> UIViewController? {
        var nextResponder: UIResponder? = next
        while nextResponder != nil {
            if let viewController = nextResponder as? UIViewController {
                return viewController
            }
            nextResponder = nextResponder!.next
        }
        return nil
    }
}

#endif
