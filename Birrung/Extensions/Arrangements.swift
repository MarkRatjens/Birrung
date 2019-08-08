import UIKit

extension UIView {
	
	public func fit(in outer: UIView) { fit(in: outer, pad: [0]) }
	public func fit(in outer: UILayoutGuide) { fit(in: outer, pad: [0]) }
	public func hang(in outer: UIView) { hang(in: outer, pad: [0]) }
	public func hang(in outer: UILayoutGuide) { hang(in: outer, pad: [0]) }
	public func stand(in outer: UIView) { stand(in: outer, pad: [0]) }
	public func stand(in outer: UILayoutGuide) { stand(in: outer, pad: [0]) }
	public func hangLoose(in outer: UIView) { hangLoose(in: outer, pad: 0) }
	public func hangLoose(in outer: UILayoutGuide) { hangLoose(in: outer, pad: 0) }
	public func standLoose(in outer: UIView) { standLoose(in: outer, pad: 0) }
	public func standLoose(in outer: UILayoutGuide) { standLoose(in: outer, pad: 0) }
	public func hangLeftLoose(in outer: UIView) { hangLeftLoose(in: outer, pad: 0) }
	public func hangLeftLoose(in outer: UILayoutGuide) { hangLeftLoose(in: outer, pad: 0) }
	public func hangRightLoose(in outer: UIView) { hangRightLoose(in: outer, pad: 0) }
	public func hangRightLoose(in outer: UILayoutGuide) { hangRightLoose(in: outer, pad: 0) }
	public func hangLeft(in outer: UIView) { hangLeft(in: outer, pad: [0]) }
	public func hangLeft(in outer: UILayoutGuide) { hangLeft(in: outer, pad: [0]) }
	public func hangRight(in outer: UIView) { hangRight(in: outer, pad: [0]) }
	public func hangRight(in outer: UILayoutGuide) { hangRight(in: outer, pad: [0]) }
	public func justifyX(in outer: UIView) { justifyX(in: outer, pad: [0]) }
	public func justifyX(in outer: UILayoutGuide) { justifyX(in: outer, pad: [0]) }
	public func justifyY(in outer: UIView) { justifyY(in: outer, pad: [0]) }
	public func justifyY(in outer: UILayoutGuide) { justifyY(in: outer, pad: [0]) }
	public func topLeft(in other: UIView) { topLeft(in: other, pad: [0]) }
	public func topLeft(in other: UILayoutGuide) { topLeft(in: other, pad: [0]) }
	public func topRight(in other: UIView) { topRight(in: other, pad: [0]) }
	public func topRight(in other: UILayoutGuide) { topRight(in: other, pad: [0]) }
	public func bottomLeft(in other: UIView) { bottomLeft(in: other, pad: [0]) }
	public func bottomLeft(in other: UILayoutGuide) { bottomLeft(in: other, pad: [0]) }
	public func bottomRight(in other: UIView) { bottomRight(in: other, pad: [0]) }
	public func bottomRight(in other: UILayoutGuide) { bottomRight(in: other, pad: [0]) }
	public func justifyLeft(in outer: UIView) { justifyLeft(in: outer, pad: 0) }
	public func justifyLeft(in outer: UILayoutGuide) { justifyLeft(in: outer, pad: 0) }
	public func justifyRight(in outer: UIView) { justifyRight(in: outer, pad: 0) }
	public func justifyRight(in outer: UILayoutGuide) { justifyRight(in: outer, pad: 0) }
	public func centerLeft(in other: UIView) { centerLeft(in: other, pad: 0) }
	public func centerRight(in other: UIView) { centerRight(in: other, pad: 0) }
	public func centerLeft(in other: UILayoutGuide) { centerLeft(in: other, pad: 0) }
	public func centerRight(in other: UILayoutGuide) { centerRight(in: other, pad: 0) }
	public func link(under other: UIView) { link(under: other, pad: 0) }
	public func link(after other: UIView) { link(after: other, pad: 0) }
	public func link(before other: UIView) { link(before: other, pad: 0) }

	public func width(_ w: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalToConstant: w).isActive = true
	}

	public func height(_ h: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		heightAnchor.constraint(equalToConstant: h).isActive = true
	}

	public func center(with other: UIView) {
		centerX(with: other)
		centerY(with: other)
	}

	public func center(with other: UILayoutGuide) {
		centerX(with: other)
		centerY(with: other)
	}

	public func centerX(with other: UIView) {
		translatesAutoresizingMaskIntoConstraints = false
		centerXAnchor.constraint(equalTo: other.centerXAnchor).isActive = true
	}

	public func centerX(with other: UILayoutGuide) {
		translatesAutoresizingMaskIntoConstraints = false
		centerXAnchor.constraint(equalTo: other.centerXAnchor).isActive = true
	}

	public func centerY(with other: UIView) {
		translatesAutoresizingMaskIntoConstraints = false
		centerYAnchor.constraint(equalTo: other.centerYAnchor).isActive = true
	}

	public func centerY(with other: UILayoutGuide) {
		translatesAutoresizingMaskIntoConstraints = false
		centerYAnchor.constraint(equalTo: other.centerYAnchor).isActive = true
	}

	public func scaleWidth(to other: UIView, ratio: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalTo: other.widthAnchor, multiplier: ratio).isActive = true
	}

	public func scaleHeight(to other: UIView, ratio: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		heightAnchor.constraint(equalTo: other.heightAnchor, multiplier: ratio).isActive = true
	}

	public func scaleWidth(to other: UILayoutGuide, ratio: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalTo: other.widthAnchor, multiplier: ratio).isActive = true
	}
	
	public func scaleHeight(to other: UILayoutGuide, ratio: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		heightAnchor.constraint(equalTo: other.heightAnchor, multiplier: ratio).isActive = true
	}

	public func aspect(_ ratio: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		widthAnchor.constraint(equalTo: heightAnchor, multiplier: ratio).isActive = true
	}
	
	public func fit(in outer: UIView, pad: [CGFloat]) {
		justifyY(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		justifyX(in: outer, pad: [pad[1 % pad.count], pad[3 % pad.count]])
	}

	public func fit(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyY(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		justifyX(in: outer, pad: [pad[1 % pad.count], pad[3 % pad.count]])
	}

	public func stand(in outer: UIView, pad: [CGFloat]) {
		justifyX(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		bottomAnchor.constraint(equalTo: outer.bottomAnchor, constant: -pad[1 % pad.count]).isActive = true
	}

	public func stand(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyX(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		bottomAnchor.constraint(equalTo: outer.bottomAnchor, constant: -pad[1 % pad.count]).isActive = true
	}

	public func hang(in outer: UIView, pad: [CGFloat]) {
		justifyX(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		topAnchor.constraint(equalTo: outer.topAnchor, constant: pad[1 % pad.count]).isActive = true
	}

	public func hang(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyX(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		topAnchor.constraint(equalTo: outer.topAnchor, constant: pad[1 % pad.count]).isActive = true
	}
	
	public func standLoose(in outer: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		bottomAnchor.constraint(equalTo: outer.bottomAnchor, constant: -pad).isActive = true
	}
	
	public func standLoose(in outer: UILayoutGuide, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		bottomAnchor.constraint(equalTo: outer.bottomAnchor, constant: -pad).isActive = true
	}
	
	public func hangLoose(in outer: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		topAnchor.constraint(equalTo: outer.topAnchor, constant: pad).isActive = true
	}
	
	public func hangLoose(in outer: UILayoutGuide, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		topAnchor.constraint(equalTo: outer.topAnchor, constant: pad).isActive = true
	}
	
	public func hangLeftLoose(in outer: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		leftAnchor.constraint(equalTo: outer.leftAnchor, constant: pad).isActive = true
	}
	
	public func hangLeftLoose(in outer: UILayoutGuide, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		leftAnchor.constraint(equalTo: outer.leftAnchor, constant: pad).isActive = true
	}
	
	public func hangRightLoose(in outer: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		rightAnchor.constraint(equalTo: outer.rightAnchor, constant: -pad).isActive = true
	}
	
	public func hangRightLoose(in outer: UILayoutGuide, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		rightAnchor.constraint(equalTo: outer.rightAnchor, constant: -pad).isActive = true
	}

	public func hangLeft(in outer: UIView, pad: [CGFloat]) {
		justifyY(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		leftAnchor.constraint(equalTo: outer.leftAnchor, constant: pad[1 % pad.count]).isActive = true
	}

	public func hangLeft(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyY(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		leftAnchor.constraint(equalTo: outer.leftAnchor, constant: pad[1 % pad.count]).isActive = true
	}
	
	public func hangRight(in outer: UIView, pad: [CGFloat]) {
		justifyY(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		rightAnchor.constraint(equalTo: outer.rightAnchor, constant: -pad[1 % pad.count]).isActive = true
	}

	public func hangRight(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyY(in: outer, pad: [pad[0 % pad.count], pad[2 % pad.count]])
		rightAnchor.constraint(equalTo: outer.rightAnchor, constant: -pad[1 % pad.count]).isActive = true
	}

	public func justifyX(in outer: UIView, pad: [CGFloat]) {
		justifyLeft(in: outer, pad: pad[0 % pad.count])
		justifyRight(in: outer, pad: pad[1 % pad.count])
	}

	public func justifyX(in outer: UILayoutGuide, pad: [CGFloat]) {
			justifyLeft(in: outer, pad: pad[0 % pad.count])
			justifyRight(in: outer, pad: pad[1 % pad.count])
	}

	public func justifyLeft(in outer: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		leftAnchor.constraint(equalTo: outer.leftAnchor, constant: pad).isActive = true
	}

	public func justifyRight(in outer: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		rightAnchor.constraint(equalTo: outer.rightAnchor, constant: -pad).isActive = true
	}

	public func justifyLeft(in outer: UILayoutGuide, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		leftAnchor.constraint(equalTo: outer.leftAnchor, constant: pad).isActive = true
	}
	
	public func justifyRight(in outer: UILayoutGuide, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		rightAnchor.constraint(equalTo: outer.rightAnchor, constant: -pad).isActive = true
	}
	
	public func centerLeft(in outer: UIView, pad: CGFloat) {
		centerY(with: outer)
		justifyLeft(in: outer, pad: pad)
	}

	public func centerRight(in outer: UIView, pad: CGFloat) {
		centerY(with: outer)
		justifyRight(in: outer, pad: pad)
	}
	
	public func centerLeft(in outer: UILayoutGuide, pad: CGFloat) {
		centerY(with: outer)
		justifyLeft(in: outer, pad: pad)
	}
	
	public func centerRight(in outer: UILayoutGuide, pad: CGFloat) {
		centerY(with: outer)
		justifyRight(in: outer, pad: pad)
	}

	public func topLeft(in outer: UIView, pad: [CGFloat]) {
		justifyLeft(in: outer, pad: pad[0 % pad.count])
		hangLoose(in: outer, pad: pad[1 % pad.count])
	}
	
	public func topLeft(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyLeft(in: outer, pad: pad[0 % pad.count])
		hangLoose(in: outer, pad: pad[1 % pad.count])
	}

	public func topRight(in outer: UIView, pad: [CGFloat]) {
		justifyRight(in: outer, pad: -pad[0 % pad.count])
		hangLoose(in: outer, pad: pad[1 % pad.count])
	}
	
	public func topRight(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyRight(in: outer, pad: -pad[0 % pad.count])
		hangLoose(in: outer, pad: pad[1 % pad.count])
	}

	public func bottomLeft(in outer: UIView, pad: [CGFloat]) {
		justifyLeft(in: outer, pad: pad[0 % pad.count])
		standLoose(in: outer, pad: pad[1 % pad.count])
	}
	
	public func bottomLeft(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyLeft(in: outer, pad: pad[0 % pad.count])
		standLoose(in: outer, pad: pad[1 % pad.count])
	}

	public func bottomRight(in outer: UIView, pad: [CGFloat]) {
		justifyRight(in: outer, pad: -pad[0 % pad.count])
		standLoose(in: outer, pad: pad[1 % pad.count])
	}

	public func bottomRight(in outer: UILayoutGuide, pad: [CGFloat]) {
		justifyRight(in: outer, pad: -pad[0 % pad.count])
		standLoose(in: outer, pad: pad[1 % pad.count])
	}

	public func justifyY(in outer: UIView, pad: [CGFloat]) {
		translatesAutoresizingMaskIntoConstraints = false
		topAnchor.constraint(equalTo: outer.topAnchor, constant: pad[0 % pad.count]).isActive = true
		bottomAnchor.constraint(equalTo: outer.bottomAnchor, constant: -pad[1 % pad.count]).isActive = true
	}
	
	public func justifyY(in outer: UILayoutGuide, pad: [CGFloat]) {
		translatesAutoresizingMaskIntoConstraints = false
		topAnchor.constraint(equalTo: outer.topAnchor, constant: pad[0 % pad.count]).isActive = true
		bottomAnchor.constraint(equalTo: outer.bottomAnchor, constant: -pad[1 % pad.count]).isActive = true
	}
	
	public func link(under other: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		topAnchor.constraint(equalTo: other.bottomAnchor, constant: pad).isActive = true
	}
	
	public func link(after other: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		leftAnchor.constraint(equalTo: other.rightAnchor, constant: pad).isActive = true
	}
	
	public func link(before other: UIView, pad: CGFloat) {
		translatesAutoresizingMaskIntoConstraints = false
		rightAnchor.constraint(equalTo: other.leftAnchor, constant: -pad).isActive = true
	}
}
