//
//  SplashScreenData.swift
//  MoviesSwiftUI
//
//  Created by Dogukan Gundogan on 24.07.2022.
//

import Foundation
import SwiftUI


let splashScreenData = [
    SplashScreenData(title: "OFFLINE", headline: "Watch to your favorite music anywhere without an internet connection", primaryButtonName: "Next", secondaryButtonName: "Skip", colors: [Color(UIColor(named: "Green")!),Color.white]),
    SplashScreenData(title: "Find movie".uppercased(), headline: "Watch and find movies that bring your mood back", primaryButtonName: "Next", secondaryButtonName: "Skip", colors: [Color(UIColor(named:"Yellow")!),Color.white]),
    SplashScreenData(title: "Real time".uppercased(), headline: "Movie & TV information and updates movie trailer", primaryButtonName: "Next", secondaryButtonName: "Skip", colors: [Color(UIColor(named:"Purple")!),Color.white]),
    SplashScreenData(title: "Invite friends".uppercased(), headline: "Create personal movie night space or accept your friends invitations!", primaryButtonName: "Finish", secondaryButtonName: "Go Home", colors: [Color(UIColor(named:"Blue")!),Color.white]),
]


class SplashScreenData{
    var title:String = ""
    var headline:String = ""
    var primaryButtonName:String = ""
    var secondaryButtonName:String = ""
    var colors = [Color]()
    
    init(title:String,headline:String,primaryButtonName:String,secondaryButtonName:String,colors:[Color]) {
        self.title = title
        self.headline = headline
        self.primaryButtonName = primaryButtonName
        self.secondaryButtonName = secondaryButtonName
        self.colors = colors
    }
    
    func getImageName(index:Int)->String{
        return "splash-\(index+1)"
    }
    
    static func getSplashScreenData()->[SplashScreenData]{
        return splashScreenData
    }
}
