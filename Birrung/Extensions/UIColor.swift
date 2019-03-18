import Foundation

extension UIColor {
	public convenience init(hex: String) {
		var s: String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
		
		if (s.hasPrefix("#")) {
			s.remove(at: s.startIndex)
		}
		
		if ((s.count) != 6) {
			self.init(cgColor: UIColor.gray.cgColor)
		} else {
			var rgbValue:UInt32 = 0
			Scanner(string: s).scanHexInt32(&rgbValue)
			
			self.init(
				red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
				green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
				blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
				alpha: CGFloat(1.0)
			)
		}
	}
	
	public var brighter: UIColor { return brighter(by: 0.33) }
	public var darker: UIColor { return darker(by: 0.33) }
	public var lighter: UIColor { return lighter(by: 0.33) }
	
	public func brighter(by value: CGFloat) -> UIColor {
		var h: CGFloat = 0, s: CGFloat = 0
		var b: CGFloat = 0, a: CGFloat = 0
		
		guard getHue(&h, saturation: &s, brightness: &b, alpha: &a)
			else {return self}
		
		return UIColor(hue: h, saturation: s, brightness: max(b + (b * value), 1.0), alpha: a)
	}
	
	public func darker(by value: CGFloat) -> UIColor {
		var h: CGFloat = 0, s: CGFloat = 0
		var b: CGFloat = 0, a: CGFloat = 0
		
		guard getHue(&h, saturation: &s, brightness: &b, alpha: &a)
			else {return self}
		
		return UIColor(hue: h, saturation: s, brightness: max(b - (b * value), 0.0), alpha: a)
	}
	
	public func lighter(by value: CGFloat) -> UIColor {
		var h: CGFloat = 0, s: CGFloat = 0
		var b: CGFloat = 0, a: CGFloat = 0
		
		guard getHue(&h, saturation: &s, brightness: &b, alpha: &a)
			else {return self}
		
		return UIColor(hue: h, saturation: max(s - (s * value), 0.0), brightness: max(b - (b * value), 0.0), alpha: a)
	}
}
