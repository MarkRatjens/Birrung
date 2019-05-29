import UIKit

open class DetailViewCell: TableViewCell {
	public var model: DetailModel! { didSet { fill() } }
	
	override open func style() {
		super.style()
		accessoryType = .none
		textLabel?.numberOfLines = 0
		detailTextLabel?.numberOfLines = 0
	}
	
	override open func fill() {
		super.fill()
		textLabel?.text = model.title
		detailTextLabel?.text = model.detail
	}

	override open func setSelected(_ selected: Bool, animated: Bool) { selectedBackgroundView = UIView() }
	
	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: .value1, reuseIdentifier: reuseIdentifier)
	}
	
	public required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
}

public struct DetailModel {
	let title: String
	let detail: String
	
	public init(title: String, detail: String) {
		self.title = title
		self.detail = detail
	}
}
