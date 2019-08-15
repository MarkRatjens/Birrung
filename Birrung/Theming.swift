import UIKit

open class ThemeSet {
	public static var dark = instance.dark
	public static var light = instance.light

	public static var instance = ThemeSet()
	
	public var sets = [String: Theme]()
	
	public var usual: Theme { return dark }
	public var light: Theme { return sets["light"]! }
	public var dark: Theme { return sets["dark"]! }
}

open class Theme {
	public let border: UIColor
	public let background: UIColor
	public let title: UIColor
	public let text: UIColor
	
	public init(border: UIColor, background: UIColor, title: UIColor, text: UIColor) {
		self.border = border
		self.background = background
		self.title = title
		self.text = text
	}
}
