// Mezhevikin Alexey - https://github.com/mezhevikin/TinyLayout
import UIKit

@objc public extension NSLayoutAnchor {
    func equal(_ to: NSLayoutAnchor<AnchorType>, _ constant: CGFloat = 0) -> NSLayoutConstraint {
        constraint(equalTo: to, constant: constant)
    }
    
    func greaterOrEqual(_ to: NSLayoutAnchor<AnchorType>, _ constant: CGFloat = 0) -> NSLayoutConstraint {
        constraint(greaterThanOrEqualTo: to, constant: constant)
    }
    
    func lessOrEqual(_ to: NSLayoutAnchor<AnchorType>,_ constant: CGFloat = 0) -> NSLayoutConstraint {
        constraint(lessThanOrEqualTo: to, constant: constant)
    }
}

@objc public extension NSLayoutDimension {
    func equal(_ constant: CGFloat) -> NSLayoutConstraint {
        constraint(equalToConstant: constant)
    }
}

public extension UIView {
    func addSubviews(_ subviews: [UIView], constraints: [NSLayoutConstraint]) {
        subviews.forEach { view in
            view.translatesAutoresizingMaskIntoConstraints = false
            addSubview(view)
        }
        NSLayoutConstraint.activate(constraints)
    }
    
    func addSubview(_ subview: UIView, constraints: [NSLayoutConstraint]) {
        addSubviews([subview], constraints: constraints)
    }
    
    func addBody(_ body: UIView, safe: Bool = false) {
        let guide = safeAreaLayoutGuide
        addSubview(body, constraints: [
            (safe ? guide.topAnchor : topAnchor).equal(body.topAnchor),
            (safe ? guide.rightAnchor : rightAnchor).equal(body.rightAnchor),
            (safe ? guide.bottomAnchor : bottomAnchor).equal(body.bottomAnchor),
            (safe ? guide.leftAnchor : leftAnchor).equal(body.leftAnchor)
        ])
    }
}
