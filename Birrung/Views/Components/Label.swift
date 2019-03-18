import UIKit

open class Label: UILabel {
	public override init(frame: CGRect) {
		super.init(frame: frame)
		style()
		fill()
	}
	
	open func style() {
		numberOfLines = 0
	}
	
	open func fill() {}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
