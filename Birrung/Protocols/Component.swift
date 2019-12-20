public protocol Component: class {
	func constructing()
	func associating()
	func arranging()
	func crafting()
	func showing()
	func navigating()
	
	var components: [Component] { get }	
	var navigator: Navigator? { get set }
}
