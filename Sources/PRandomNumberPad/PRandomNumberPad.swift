//
//  RandomNumberPad.swift
//  randomkeyboard
//
//  Created by prakhar.unofficial on 15/09/24.
//

import SwiftUI

public struct RandomNumberPad: View {
    @State private var output: [String] = []
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    @State private var shuffledNumbers: [String] = []
    @Binding public var enterNumber: String
    var borderColor: Color
    var cornerRadius: CGFloat
    var backGroundColor: Color
    var textColor: Color
    var font: Font
    var horizontalSpacing: CGFloat
    
    public init(enterNumber: Binding<String>, borderColor: Color = .black, cornerRadius: CGFloat = 5, backGroundColor: Color = .black, textColor: Color = .white, font: Font = .system(size: 24, weight: .bold), horizontalSpacing: CGFloat = 10) {
        self._enterNumber = enterNumber
        self.borderColor = borderColor
        self.cornerRadius = cornerRadius
        self.backGroundColor = backGroundColor
        self.textColor = textColor
        self.font = font
        self.horizontalSpacing = horizontalSpacing
    }

    public var body: some View {
        VStack {
            if shuffledNumbers.count == numbers.count {
                VStack {
                    ForEach(0..<3, id: \.self) { rowIndex in
                        HStack {
                            ForEach(0..<3, id: \.self) { columnIndex in
                                let index = rowIndex * 3 + columnIndex
                                if index < shuffledNumbers.count {
                                    ButtonCell(
                                        data: shuffledNumbers[index],
                                        size: UIScreen.main.bounds.width / 3 - horizontalSpacing,
                                        backGroundColor: backGroundColor,
                                        borderColor: borderColor,
                                        cornerRadius: cornerRadius,
                                        textColor: textColor,
                                        font: font,
                                        imageName: "",
                                        isImageShow: false
                                    ) { value in
                                        handleButtonAction(value)
                                    }
                                }
                            }
                        }
                    }
                    HStack {
                        ButtonCell(
                            data: "clear",
                            size: UIScreen.main.bounds.width / 3 - horizontalSpacing,
                            backGroundColor: backGroundColor,
                            borderColor: borderColor,
                            cornerRadius: cornerRadius,
                            textColor: textColor,
                            font: font,
                            imageName: "",
                            isImageShow: false
                        ) { _ in handleClear() }

                        ButtonCell(
                            data: shuffledNumbers[9],
                            size: UIScreen.main.bounds.width / 3 - horizontalSpacing,
                            backGroundColor: backGroundColor,
                            borderColor: borderColor,
                            cornerRadius: cornerRadius,
                            textColor: textColor,
                            font: font,
                            imageName: "",
                            isImageShow: false
                        ) { value in handleButtonAction(value) }

                        ButtonCell(
                            data: "",
                            size: UIScreen.main.bounds.width / 3 - horizontalSpacing,
                            backGroundColor: backGroundColor,
                            borderColor: borderColor,
                            cornerRadius: cornerRadius,
                            textColor: textColor,
                            font: font,
                            imageName: "xmark.shield",
                            isImageShow: true
                        ) { _ in remove() }
                    }
                }
            }
        }
        .onAppear {
            shuffledNumbers = numbers.shuffled()
        }
    }

    private func handleButtonAction(_ value: String) {
        output.append(value)
        enterNumber = output.joined()
    }

    private func handleClear() {
        output.removeAll()
        enterNumber = ""
    }

    private func remove() {
        if !output.isEmpty {
            output.removeLast()
            enterNumber = output.joined()
        }
    }
}
