import UIKit

open class TableViewCell: UITableViewCell {
	open func segue(from controller: UIViewController) {}
	
	public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		construct()
		delegate()
		arrange()
		embed()
	}

	open func arrange() { for s in nySubviews() { s.arrange() } }
	open func fill() { style() }

	open func style() { selectionStyle = .none }
	
	public func embed(controller: ViewController, in container: View) {
		controller.view.frame = container.bounds
		container.addSubview(controller.view)
	}

	open func embed() {}
	open func construct() {}
	open func delegate() {}
	
	public func nySubviews() -> [View] { return contentView.subviews.compactMap { $0 as? View } }

	open var viewController: UIViewController? { return ((superview as? UITableView)?.delegate as? UIViewController) }	
	
	open func present(_ controller: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
		viewController?.present(controller, animated: true, completion: completion)
	}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) } 
}
