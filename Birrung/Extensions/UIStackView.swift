import UIKit

extension UIStackView {
	
	public func removeAll() {
		let s = arrangedSubviews.reduce([]) { all, v -> [UIView] in
			removeArrangedSubview(v)
			return all + [v]
		}
		
		NSLayoutConstraint.deactivate(s.flatMap({ $0.constraints }))
		s.forEach({ $0.removeFromSuperview() })
	}
}
