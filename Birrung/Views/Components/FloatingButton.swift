import UIKit

open class FloatingButton: Button {
	open override func arrange() {
		super.arrange()
		translatesAutoresizingMaskIntoConstraints = false
		heightAnchor.constraint(equalToConstant: 64).isActive = true
		widthAnchor.constraint(equalTo: heightAnchor).isActive = true
	}
	
	open override func style() {
		super.style()
		layer.cornerRadius = 32
		layer.borderWidth = 4
		titleLabel?.textAlignment = .center
	}
	
	open override func fill() {
		setTitle(icon, for: .normal)
	}
	
	public var icon = Fonts.materialIcons.clear.rawValue
}
