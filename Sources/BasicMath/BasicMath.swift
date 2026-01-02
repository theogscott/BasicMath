// The Swift Programming Language
// https://docs.swift.org/swift-book


 open class BasicMath {
    // MARK: - Public stored properties
    public var x: Int = 0
    public var y: Int = 0
    
    // MARK: - Public initializer
    /// Creates a new `BasicMath` instance.
    ///
    /// - Parameters:
    ///   - x: The first integer operand.
    ///   - y: The second integer operand.
    public init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    // MARK: - Public API
    
    /// Returns `x + y`.
    open func sum() -> Int {
        return x + y
    }
    
    /// Returns `x - y`.
    open func difference() -> Int {
        return x - y
    }
    
    /// Returns `x * y`.
    open func product() -> Int {
        return x * y
    }
}
