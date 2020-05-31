//
//  Constants.swift
//  OnBoardingApp
//
//  Created by Navnit Baldha on 31/05/20.
//  Copyright © 2020 Navneet Baldha. All rights reserved.
//

import Foundation


enum FrameType:String {
    
    case ColorFilmRainbowFrames = "Color Film: Rainbow Frames"
    case BWFilmRainbowFrames = "B&W Film: Rainbow Frames"
    case ColorFilmGradientFrames = "Color Film: Gradient Frames"
}

struct Constants {
    
    static let walkthrow_1_image_name = "1.png"
    static let walkthrow_2_image_name = "2.png"
    static let walkthrow_3_image_name = "3.png"
    
    static let walkthrow_1_title_txt = "Start a Program"
    static let walkthrow_2_title_txt = "Daily workout recommendations"
    static let walkthrow_3_title_txt = "Nutrition & Wellness Guidance From Experts"
    
    static let walkthrow_1_disc_txt = "Get unlimited access to fintness & nutrition expertise from our Master Trainers."
    static let walkthrow_2_disc_txt = "Working out of a program? In addition to our 180+ free Workouts"
    static let walkthrow_3_disc_txt = "Get unlimited access to fintness & nutrition expertise from our Master Trainers."
    
   
    
    static let appGrayColor = Common.shared.uicolorFromHex(hexValue: 0x787878, alpha: nil)
    static let appBlueColor = Common.shared.uicolorFromHex(hexValue: 0x3CBEFF, alpha: nil)
    
    static let appExclusiveYellowColor = Common.shared.uicolorFromHex(hexValue: 0xFFCC00, alpha: nil)
    
    static let appGoldenColor = Common.shared.uicolorFromHex(hexValue: 0xFFCC00, alpha: nil)
 

    //037AFF
    
    static let text_Regular = "SFProText-Regular"
    static let text_Bold = "SFProText-Bold"
    static let text_Medium = "SFProText-Medium"
    static let text_SemiBold = "SFProText-Semibold"
    
    

}

