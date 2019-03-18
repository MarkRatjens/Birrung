import UIKit

open class StackView: UIStackView {
	public override init(frame: CGRect) {
		super.init(frame: frame)
		construct()
		arrange()
		style()
	}
	
	open func arrange() {
		alignment = .fill
		spacing = 0
	}

	open func construct() {}
	open func style() {}
	open func fill() {}

	public required init(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}


open class HorizontalStack: StackView {
	open override func arrange() {
		super.arrange()
		axis = .horizontal
		distribution = .equalCentering
	}
}


open class VerticalStack: StackView {
	open override func arrange() {
		super.arrange()
		axis = .vertical
		distribution = .fill
	}
}
