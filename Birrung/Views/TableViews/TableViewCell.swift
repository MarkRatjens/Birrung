import UIKit

open class TableViewCell: UITableViewCell {
	open func segue(from controller: UIViewController) {}
	
	public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		construct()
		delegate()
		arrange()
	}

	open func arrange() { for s in nySubviews() { s.arrange() } }

	open func fill() { style() }

	open func style() {
		for s in nySubviews() { s.style() }
		selectionStyle = .none
	}
	
	open func construct() {}
	open func delegate() {}
	
	func nySubviews() -> [View] { return contentView.subviews.compactMap { $0 as? View } }

	open var viewController: UIViewController? { return ((superview as? UITableView)?.delegate as? UIViewController) }	
	
	open func present(_ controller: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
		viewController?.present(controller, animated: true, completion: completion)
	}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) } 
}
