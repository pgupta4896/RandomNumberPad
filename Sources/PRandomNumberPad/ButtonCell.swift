//
//  ButtonCell.swift
//  
//
//  Created by prakhar.unofficial on 15/09/24.
//

import SwiftUI

public struct ButtonCell: View {
    let data: String
    let size: CGFloat
    let backGroundColor: Color
    let borderColor: Color
    let cornerRadius: CGFloat
    let textColor: Color
    let font: Font
    let imageName: String
    let isImageShow: Bool
    public var buttonOutput: (String) -> Void

    public var body: some View {
        Button(action: {
            buttonOutput(data)
        }) {
            if isImageShow {
                Image(systemName: imageName) // Display system image icon
                    .resizable()
                    .frame(width: 25, height: 30)
                    .rotationEffect(.degrees(90)) // Rotate icon by 90 degrees
                    .frame(width: size, height: size * 0.6)
                    .foregroundColor(textColor)
                    .background(backGroundColor)
                    .cornerRadius(cornerRadius)
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(borderColor, lineWidth: 2) // Border with color and width
                    )
            } else {
                Text(data) // Display button text
                    .foregroundColor(textColor)
                    .font(font)
                    .padding()
                    .frame(width: size, height: size * 0.6)
                    .background(backGroundColor)
                    .cornerRadius(cornerRadius)
                    .overlay(
                        RoundedRectangle(cornerRadius: cornerRadius)
                            .stroke(borderColor, lineWidth: 2) // Border with color and width
                    )
            }
        }
    }
}
