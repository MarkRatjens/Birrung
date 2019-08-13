import UIKit

open class CheckBox: Button {
	
	open override func construct() {
		super.construct()
		addTarget(self, action: #selector(respondToTouch(_:)), for: .touchUpInside)
	}

	@objc func respondToTouch(_ sender: CheckBox) {
		toggle()
	}
	
	public func toggle() {
		if isSelected {
			setAttributedTitle(blank, for: .normal)
			isSelected = false
		} else {
			setAttributedTitle(check, for: .normal)
			isSelected = true
		}
	}

	override open func fill() {
		super.fill()
		setAttributedTitle(blank, for: .normal)
		isSelected = false
	}
	
	public lazy var blank = NSMutableAttributedString(string: "", attributes: [NSAttributedString.Key.font : iconFont])
	public lazy var check = NSMutableAttributedString(string: checkIcon.rawValue, attributes: [NSAttributedString.Key.font : iconFont])
	
	lazy var iconFont: UIFont = { UIFont(name: "MaterialIcons-Regular", size: 24)! }()
	var checkIcon: Fonts.materialIcons { return .check }
}
