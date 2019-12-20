import UIKit

open class ListViewCell: TableViewCell {
	open override func crafting() {
		super.crafting()
		contentView.backgroundColor = .clear
		textLabel?.numberOfLines = 0
	}
}
