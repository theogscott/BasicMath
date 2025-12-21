// The Swift Programming Language
// https://docs.swift.org/swift-book


public struct BasicMath {
    // MARK: - Public stored properties
    public var x: Int
    public var y: Int
    
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
    public func sum() -> Int {
        return x + y
    }
    
    /// Returns `x - y`.
    public func difference() -> Int {
        return x - y
    }
    
    /// Returns `x * y`.
    public func product() -> Int {
        return x * y
    }
}
