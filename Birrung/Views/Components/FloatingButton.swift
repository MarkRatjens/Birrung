import UIKit

open class FloatingButton: Button {
	open override func arrange() {
		super.arrange()
		translatesAutoresizingMaskIntoConstraints = false
		heightAnchor.constraint(equalToConstant: 64).isActive = true
		widthAnchor.constraint(equalTo: heightAnchor).isActive = true
	}
	
	open override func craft() {
		super.craft()
		layer.cornerRadius = 32
		layer.borderWidth = 4
		titleLabel?.textAlignment = .center
		titleLabel?.font = UIFont(name: "MaterialIcons-Regular", size: 32)
		setTitle(icon, for: .normal)

		if let t = theme {
			setTitleColor(t.text.withAlphaComponent(0.7), for: .normal)
			setTitleColor(t.text.withAlphaComponent(0.3), for: .disabled)
			titleLabel?.textColor = t.text
			backgroundColor = t.background
			layer.borderColor = t.border.withAlphaComponent(0.35).cgColor
		}
	}
	
	public var icon = Fonts.materialIcons.clear.rawValue
}
