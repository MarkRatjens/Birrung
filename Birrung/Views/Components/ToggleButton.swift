import UIKit

open class ToggleButton: Button {
	open var offIcon: Fonts.materialIcons { return .off }
	open var onIcon: Fonts.materialIcons { return .on }
	
	public var isOn = true
	public var isOff: Bool { return !isOn }

	override open func craft() {
		super.craft()
		setAttributedTitle(offLabel, for: .normal)
	}
	
	public func toggle() {
		if isOn {
			setAttributedTitle(onLabel, for: .normal)
			isOn = false
		} else {
			setAttributedTitle(offLabel, for: .normal)
			isOn = true
		}
	}
	
	lazy var offLabel = NSMutableAttributedString(string: offIcon.rawValue, attributes: [NSAttributedString.Key.font : iconFont])
	lazy var onLabel = NSMutableAttributedString(string: onIcon.rawValue, attributes: [NSAttributedString.Key.font : iconFont])
	lazy var iconFont: UIFont = { UIFont(name: "MaterialIcons-Regular", size: 24)! }()
}
