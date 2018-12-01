import Expression
import Foundation

guard CommandLine.argc > 1 else {
    print("Error: please supply a expression like ./cal 2+2")
    exit(1)
}

let e = Expression(value: CommandLine.arguments.dropFirst().joined())
print(e.evaluate())
