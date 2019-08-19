import UIKit

open class TableView: UITableView {
	public override init(frame: CGRect, style: UITableView.Style) {
		super.init(frame: frame, style: style)
		construct()
		arrange()
		self.style()
	}
	
	open func construct() {}
	open func arrange() {}
	open func style() { backgroundColor = .clear }
	open func fill() {}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}
