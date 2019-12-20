import UIKit

open class ViewController: UIViewController {
	
	open override func viewDidLoad() {
		super.viewDidLoad()
		assemble()
		guide()
		log()
	}
	
	open override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		reshow()
	}

	open override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(true)
		if isMovingFromParent { slideBack() }
		else { slideNext() }
	}

	open func assemble() {
		navigator = self
		construct()
		associate()
		show()
		arrange()
		craft()
		embedding()
	}
	
	public weak var navigator: Navigator? { didSet { navigate() } }

	open func guide() {}
	open func log() {}

	open func slideNext() {}
	open func slideBack() {}

	public lazy var navigationBar = navigationController?.navigationBar
	public lazy var safeGuide = view.safeAreaLayoutGuide
	public lazy var marginsGuide = view.layoutMarginsGuide
	private var toolbarParts = { return [UIBarButtonItem]() }()
	
	override public func embed(controller: UIViewController, in container: UIView) {
		if let c = controller as? ViewController { c.navigator = navigator }
		super.embed(controller: controller, in: container)
	}
	
	public var contained: Bool {
		var r = false
		if let p = self.parent {
			if !(p is UINavigationController) { r = true }
		}
		return r
	}
	
	public var prefersLargeTitles: Bool = false {
		didSet {
			if let b = navigationBar {
				b.prefersLargeTitles = prefersLargeTitles
			}
		}
	}
}


extension ViewController: Component {

	@objc open func construct() { for c in components { c.construct() } }
	@objc open func associate() { for c in components { c.associate() } }
	@objc open func arrange() { for c in components { c.arrange() } }
	@objc open func craft() { for c in components { c.craft() } }
	@objc open func navigate() { for c in components { c.navigator = self } }
	@objc open func embed() { for v in views { v.embed() }}

	@objc open func show() {}
	@objc open func reshow() {}

	public var components: [Component] { return view.subviews.compactMap { $0 as? Component } }
	public var views: [View] { return view.subviews.compactMap { $0 as? View } }
}


extension ViewController: Bed {
	@objc open func embedding() { for b in beds { b.embedding() } }
	public var beds: [Bed] { return view.subviews.compactMap { $0 as? Bed } }
}


extension ViewController: Navigator {
	
	open func push(_ controller: UIViewController) {
		if let nc = navigationController { nc.pushViewController(controller, animated: true) }
		else { navigator?.push(controller) }
	}

	open func pop() {
		if let nc = navigationController { nc.popViewController(animated: true) }
		else { navigator?.pop() }
	}
	
	public func present(_ controller: UIViewController, animated: Bool) {
		present( controller, animated: animated, completion: nil)
	}
}
