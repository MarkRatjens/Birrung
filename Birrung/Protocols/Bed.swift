public protocol Bed: class {
	func embedding()
	
	var beds: [Bed] { get }
}
