import UIKit

open class ViewController: UIViewController {
	public var prefersLargeTitles: Bool = false {
		didSet {
			if let b = navigationBar {
				b.prefersLargeTitles = prefersLargeTitles
			}
		}
	}

	open override func viewDidLoad() {
		super.viewDidLoad()
		construct()
		delegate()
		fill()
		arrange()
		style()
		guide()
		embed()
	}
	
	open override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		reconstruct()
		redelegate()
		refill()
		restyle()
		reguide()
	}

	open override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(true)
		if isMovingFromParent { slideBack() }
		else { slideNext() }
	}

	open func reconstruct() {}

	open func arrange() { for s in nySubviews { s.arrange() } }
	
	public var contained: Bool {
		var r = false
		if let p = self.parent {
			if !(p is UINavigationController) { r = true }
		}
		return r
	}
	
	var nySubviews: [View] { return view.subviews.compactMap { $0 as? View } }

	open func embed() {}
	
	public func embed(controller: ViewController, in container: View) {
		addChild(controller)
		controller.view.frame = container.bounds
		container.addSubview(controller.view)
		controller.didMove(toParent: self)
	}

	open func fill() {}
	open func delegate() {}
	open func guide() {}
	open func construct() {}
	open func style() {}
	open func restyle() {}
	open func refill() {}
	open func redelegate() {}
	open func reguide() {}
	open func slideNext() {}
	open func slideBack() {}

	public lazy var navigationBar = navigationController?.navigationBar
	public lazy var safeGuide = view.safeAreaLayoutGuide
	public lazy var marginsGuide = view.layoutMarginsGuide
	private var toolbarParts = { return [UIBarButtonItem]() }()
}
