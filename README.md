# RandomNumberPad

`RandomeNumberPad` is a custom SwiftUI component that provides a random number pad interface. It supports customizable UI options like background color, text color, border, and corner radius. This component also provides features like clearing the input, deleting the last entered value, and displaying a shuffled number sequence.

## Features

- Randomized number pad buttons
- Customizable UI properties:
  - Border color
  - Corner radius
  - Background color
  - Text color
  - Font
- Includes 'clear' and 'delete' buttons
- Customizable image support for action buttons

## Installation

To use `RandomeNumberPad` in your project:

1. Clone the repository or download the file.
2. Add `RandomeNumberPad.swift` to your SwiftUI project.
3. Use it in your SwiftUI view by providing a binding for `enteredNumber`.

## Example Usage

Here’s how to integrate the `RandomeNumberPad` in your SwiftUI project:

```swift
import SwiftUI

struct ContentView: View {
    @State private var enterdNumber = ""

    var body: some View {
        VStack {
            Text("Entered Number: \(enterdNumber)")
                .font(.title)
                .padding()

            RandomeNumberPad(enterdNumber: $enterdNumber)
        }
        .padding()
    }
}
