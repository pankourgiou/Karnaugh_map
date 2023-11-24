import Foundation

// Function to generate a 4-variable Karnaugh map
func generateKMap() {
    let variables = ["A", "B", "C", "D"]
    
    // Print header
    print(" \(variables[0])\(variables[1]) \(variables[2])\(variables[3]) | Output")
    
    // Loop through all possible combinations of variables
    for a in 0...1 {
        for b in 0...1 {
            for c in 0...1 {
                for d in 0...1 {
                    let input = "\(a)\(b)\(c)\(d)"
                    let output = calculateOutput(a, b, c, d)
                    
                    // Print K-map row
                    print("   \(a)\(b) \(c)\(d) | \(output)")
                }
            }
        }
    }
}

// Function to calculate the output for a given combination of variables
func calculateOutput(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int {
    // Replace this with your boolean expression logic
    // For example, the following expression represents the XOR of A, B, C, and D
    return (a ^ b ^ c ^ d)
}

// Call the function to generate and print the Karnaugh map
generateKMap()
