public protocol Component: class {
	func construct()
	func associate()
	func arrange()
	func craft()
	func show()
	func navigate()
	
	var components: [Component] { get }	
	var navigator: Navigator? { get set }
}
