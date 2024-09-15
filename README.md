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

   
## App Preview and Demo

### Screenshot

Below is a screenshot showing the `RandomNumberPad` in action:

<div style="display: flex; justify-content: center; margin-bottom: 20px;">
    <img src="https://github.com/pgupta4896/RandomNumberPad/blob/main/Resources/Simulator%20Screenshot%20-%20iPhone%2015%20-%202024-09-15%20at%2013.12.30.png" alt="App Preview" width="300" height="500"/>
</div>

### Video Demo

Watch the video below to see a demo of the `RandomNumberPad` in action:

<div style="display: flex; justify-content: center;">
    <video width="300" height="500" controls>
        <source src="https://github.com/pgupta4896/RandomNumberPad/blob/main/Resources/Simulator%20Screen%20Recording%20-%20iPhone%2015%20-%202024-09-15%20at%2013.12.20.mp4" type="video/mp4">
        Your browser does not support the video tag.
    </video>
</div>

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
