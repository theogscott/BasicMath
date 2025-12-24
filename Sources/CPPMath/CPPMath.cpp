//
//  CPPMath.cpp
//  BasicMath
//
//  Created by Theo S   on 22/12/2025.
//

// ---------------------------------------------------------------
//  CPPMath.cpp   – Implementation of the CPPMath class
// ---------------------------------------------------------------
#include "CPPMath.hpp"

// ----------------------------------------------------------------
//  Constructor – store the two operands.
// ----------------------------------------------------------------
CPPMath::CPPMath(int x_, int y_)
: x{x_}, y{y_} {}

// ----------------------------------------------------------------
//  Member functions – straightforward arithmetic.
// ----------------------------------------------------------------
int CPPMath::sum() const {
    return x + y;
}

int CPPMath::difference() const {
    return x - y;
}

int CPPMath::product() const {
    return x * y;
}
