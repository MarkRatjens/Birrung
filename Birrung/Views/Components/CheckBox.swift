import UIKit

open class CheckBox: Button {

	override open var isSelected: Bool { didSet
		{
			if isSelected { setAttributedTitle(check, for: .normal) }
			else { setAttributedTitle(blank, for: .normal) }
		}
	}

	override open func crafting() {
		super.crafting()
		setAttributedTitle(blank, for: .normal)
		isSelected = false
	}
	
	public lazy var blank = NSMutableAttributedString(string: "", attributes: [NSAttributedString.Key.font : iconFont])
	public lazy var check = NSMutableAttributedString(string: checkIcon.rawValue, attributes: [NSAttributedString.Key.font : iconFont])
	
	lazy var iconFont: UIFont = { UIFont(name: "MaterialIcons-Regular", size: 24)! }()
	var checkIcon: Fonts.materialIcons { return .check }
}
