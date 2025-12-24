//
//  CPPMath.hpp
//  BasicMath
//
//  Created by Theo S   on 22/12/2025.
//

// ---------------------------------------------------------------
//  CPPMath.hpp   – Declaration of the CPPMath class
// ---------------------------------------------------------------
#ifndef CPPMATH_HPP
#define CPPMATH_HPP

/// Simple helper that stores two integers and can compute
/// their sum, difference, and product.
class CPPMath {
public:
    // -----------------------------------------------------------
    //  Public data members – analogous to Swift's `var x: Int`,
    //  kept public for a one‑to‑one API match.
    // -----------------------------------------------------------
    int x;   ///< first operand
    int y;   ///< second operand
    
    // -----------------------------------------------------------
    //  Constructor – mirrors Swift's `init(x:y:)`
    // -----------------------------------------------------------
    CPPMath(int x_, int y_);
    
    // -----------------------------------------------------------
    //  Public API – same names & return types as the original Swift API
    // -----------------------------------------------------------
    
    /// Returns `x + y`.
    int sum() const;
    
    /// Returns `x - y`.
    int difference() const;
    
    /// Returns `x * y`.
    int product() const;
};

#endif // CPPMATH_HPP
