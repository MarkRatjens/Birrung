import UIKit
import Yarngun

open class ThemeSet {
	public static var dark = ace.dark
	public static var light = ace.light

	public static var ace = ThemeSet()
	
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
	
	public static let floatingAddButton = Theme(
		border: basic.white,
		background: basic.red,
		title: basic.red,
		text: basic.white
	)
	
	public static let shutterButton = Theme(
		border: basic.white,
		background: basic.teal,
		title: basic.teal,
		text: basic.white
	)
	
	public static let homeButton = Theme(
		border: basic.white,
		background: basic.green,
		title: basic.green,
		text: basic.white
	)
	
	public static let grey = (
		red: UIColor(hex: "4D4641"),
		mustard: UIColor(hex: "4C4D41"),
		green: UIColor(hex: "424D41"),
		teal: UIColor(hex: "414A4D"),
		blue: UIColor(hex: "244349"),
		purple: UIColor(hex: "42414D")
	)
	
	public static let basic = (
		black: (UIColor(hex: "231f20")),
		white: UIColor(hex: "fbfbfb"),
		red: UIColor(hex: "EF4136"),
		mustard: UIColor(hex: "D4B62A"),
		lemon: UIColor(hex: "DECE22"),
		lime: UIColor(hex: "96AB3A"),
		green: UIColor(hex: "69BD45"),
		teal: UIColor(hex: "0E8174"),
		lilac: UIColor(hex: "8a57a4"),
		purple: UIColor(hex: "282663"),
		deepPurple: UIColor(hex: "121236"),
		aqua: UIColor(hex: "4AB5CC"),
		skyBlue: UIColor(hex: "71D4E8")
	)
}
