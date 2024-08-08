import Microsoft.Quantum.Measurement.MResetZ as MRZ;

//import SubPackage.SubPackage.Hello as SubHello2;
import SubPackage.SubPackage.Hello;
//import SubPackage.SubPackage.SubHello;
//import SubPackage.SubPackage.Hello;
//import SubPackage.SubPackage.SubHello;

export Hello;
export Hello as SubHello2;

//export HelloFromGithub, IntAsDouble, SubHello2, Mapped as Thingy;

/// This is a Doc String!
operation HelloFromGithub() : Unit {
    let x = 40;
    let y = 2;
    let z = x + y;

    use q = Qubit();
    H(q);
    MRZ(q);

    Hello();

    let x = 3.0^1.4;

    Message("Hello from github!");
    SubHello2();
    SubHello2();
    SubHello2();
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

/// # Summary
/// Given an array and a function that is defined
/// for the elements of the array, returns a new array that consists
/// of the images of the original array under the function.
///
/// # Type Parameters
/// ## 'T
/// The type of `array` elements.
/// ## 'U
/// The result type of the `mapper` function.
///
/// # Input
/// ## mapper
/// A function from `'T` to `'U` that is used to map elements.
/// ## array
/// An array of elements over `'T`.
///
/// # Output
/// An array `'U[]` of elements that are mapped by the `mapper` function.
///
/// # See Also
/// - Microsoft.Quantum.Arrays.ForEach
function Mapped<'T, 'U>(mapper : ('T -> 'U), array : 'T[]) : 'U[] {
    mutable mapped = [];
    for element in array {
        set mapped += [mapper(element)];
    }
    mapped
}
