//
//  RoundedButton.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 24.07.2022.
//

import SwiftUI

struct RoundedButton: View {
    
    var buttonText:String
    var buttonIcon:String
    var verticalPedding:CGFloat
    var horizontalPadding:CGFloat
    var lineWidth:CGFloat
    var lineCorner:CGFloat
    var fontSize:CGFloat
    var fontWeight:Font.Weight
    var onPressed: () -> Void
    
    var body: some View {
        Button {
            onPressed()
        } label: {
            HStack(spacing:20){
                Text(buttonText)
                    .fontWeight(fontWeight)
                    .font(.system(size: fontSize))
                if !buttonIcon.isEmpty{
                    Image(systemName: buttonIcon)
                        .font(.system(size: 20, weight: .bold, design: .monospaced))
                }
            }
            .padding(.vertical,verticalPedding)
            .padding(.horizontal,horizontalPadding)
        }
        .foregroundColor(.white)
        .background(RoundedRectangle(cornerRadius: lineCorner).stroke(.white,lineWidth: lineWidth))

    }
}

struct RoundedButton_Previews: PreviewProvider {
    
    static var previews: some View {
        RoundedButton(buttonText: "Okay", buttonIcon: "",verticalPedding: 0,horizontalPadding: 0, lineWidth: 3,lineCorner: 20,fontSize: 20,fontWeight: .bold, onPressed: {})
            .background(Color.black)
            .previewLayout(.sizeThatFits)
    }
}
