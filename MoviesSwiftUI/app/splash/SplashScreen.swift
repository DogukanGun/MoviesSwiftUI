//
//  SpashScreen.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 24.07.2022.
//

import SwiftUI

struct SplashScreen: View {
    
    var splashScreenData:SplashScreenData
    var index:Int
    var nextButtonClicked: () -> Void
    var skipButtonClicked: () -> Void

    
    var body: some View {
        ZStack {
            ZStack{
                Image(splashScreenData.getImageName(index: index))
                    .resizable()
                    .frame(maxHeight:UIScreen.main.bounds.size.height)
                    .ignoresSafeArea()
                Rectangle()
                        .foregroundColor(.clear)
                        .background(LinearGradient(gradient: Gradient(stops: [
                            Gradient.Stop(color: splashScreenData.colors[0], location: 0.40),
                            Gradient.Stop(color: splashScreenData.colors[0].opacity(0.1), location: 0.8),
                        ]), startPoint: .bottom, endPoint: .top)
                        )
            }
            
        }
        .frame(maxWidth:UIScreen.main.bounds.size.width)
        .overlay(
            VStack(spacing:20){
                Text(splashScreenData.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                Text(splashScreenData.headline)
                    .multilineTextAlignment(.center)
                    .font(.headline)
                    .foregroundColor(.white)
                RoundedButton(buttonText: splashScreenData.primaryButtonName, buttonIcon: "arrow.right",verticalPedding: 20,horizontalPadding: 30,lineWidth: 3,lineCorner: 20,fontSize: 20,fontWeight: .bold,onPressed: {nextButtonClicked()})
                    .padding(.bottom,50)

            }
                .padding(.bottom,UIScreen.main.bounds.height/15)
                .padding(.horizontal)
            ,alignment:.bottom
        )
        .overlay(
            RoundedButton(buttonText: splashScreenData.secondaryButtonName, buttonIcon: "",verticalPedding: 10,horizontalPadding: 10,lineWidth: 1,lineCorner: 20,fontSize: 15,fontWeight: .regular,onPressed: {skipButtonClicked()})
                .padding(.trailing)
                .padding(.bottom)
            ,alignment: .bottomTrailing
        )
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static let splashScreenData = SplashScreenData.getSplashScreenData()
    static var previews: some View {
        SplashScreen(splashScreenData: splashScreenData[0],index:1,nextButtonClicked: {},skipButtonClicked: {})
    }
}
