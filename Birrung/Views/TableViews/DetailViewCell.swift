import UIKit

open class DetailViewCell: TableViewCell {
	public var model: DetailModel! { didSet { showing() } }
	
	override open func crafting() {
		super.crafting()
		accessoryType = .none
		textLabel?.numberOfLines = 0
		detailTextLabel?.numberOfLines = 0
	}
	
	override open func showing() {
		super.showing()
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
