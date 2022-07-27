//
//  FilledRoundedButton.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 27.07.2022.
//

import SwiftUI

struct FilledRoundedButton: View {
    
    var buttonText:String
    var buttonWidth:CGFloat
    
    var body: some View {
        Button {
            
        } label: {
            Text(buttonText.uppercased())
                .foregroundColor(.white)
                .fontWeight(.bold)
                
        }
        .padding(10)
        .background(Color.red)
        .clipShape(Capsule())
    }
}

struct FilledRoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        FilledRoundedButton(buttonText: "watch trailer", buttonWidth: UIScreen.main.bounds.width/1.5)
    }
}
