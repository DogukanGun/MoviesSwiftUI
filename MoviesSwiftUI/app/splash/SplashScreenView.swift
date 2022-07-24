//
//  SplashScreenView.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 24.07.2022.
//

import SwiftUI

struct SplashScreenView: View {
    
    @AppStorage("isOnboard") private var isOnboard:Bool = true
    @State private var selectedPage = 0
    
    var body: some View {
        TabView(selection: $selectedPage){
            ForEach(0..<splashScreenData.count){ index in
                SplashScreen(
                splashScreenData:splashScreenData[index],
                index: index,
                nextButtonClicked: {
                    withAnimation {
                        incrementIndex()
                    }
                },
                skipButtonClicked: {}
                )
                .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .interactive))
        .ignoresSafeArea()
    }
     
    func incrementIndex(){
        if selectedPage < splashScreenData.count - 1{
            selectedPage += 1
        }else{
            isOnboard.toggle()
        }
    }
    
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
