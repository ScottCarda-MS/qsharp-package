import Microsoft.Quantum.Measurement.MResetZ as MRZ;

/// This is a Doc String!
operation HelloFromGithub() : Unit {
    let x = 40;
    let y = 2;
    let z = x + y;

    use q = Qubit();
    H(q);
    MRZ(q);

    Message("Hello from github!");
    SubHello();
}

/// # Summary
/// Converts a given integer `number` to an equivalent
/// double-precision floating-point number.
///
/// # Description
/// Converts a given integer to a double-precision floating point number.
/// Please note that the double-precision representation may have fewer
/// bits allocated to represent [significant digits](https://en.wikipedia.org/wiki/Significand)
/// so the conversion may be approximate for large numbers. For example,
/// the current simulator converts 4,611,686,018,427,387,919 = 2^64+15
/// to 4,611,686,018,427,387,904.0 = 2^64.
///
/// # Input
/// ## number
/// A number.
///
/// # Example
/// ```qsharp
/// Message($"{IntAsDouble(1)}"); // Prints 1.0 rather than 1
/// ```
function IntAsDouble(number : Int) : Double {
    let temp = number;
    1.5
}

export HelloFromGithub, IntAsDouble as Thingy;

import SubPackage.SubPackage.Hello as SubHello;

//export Hello;