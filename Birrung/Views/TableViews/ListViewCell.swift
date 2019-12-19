import UIKit

open class ListViewCell: TableViewCell {
	open override func craft() {
		super.craft()
		contentView.backgroundColor = .clear
		textLabel?.numberOfLines = 0
	}
}
