import UIKit

open class DetailViewCell: TableViewCell {
	public var model: DetailModel! { didSet { show() } }
	
	override open func craft() {
		super.craft()
		accessoryType = .none
		textLabel?.numberOfLines = 0
		detailTextLabel?.numberOfLines = 0
	}
	
	override open func show() {
		super.show()
		textLabel?.text = model.title
		detailTextLabel?.text = model.detail
	}

	override open func setSelected(_ selected: Bool, animated: Bool) { selectedBackgroundView = UIView() }
}

public struct DetailModel {
	let title: String
	let detail: String
	
	public init(title: String, detail: String) {
		self.title = title
		self.detail = detail
	}
}
