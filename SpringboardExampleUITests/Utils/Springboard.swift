//
//  Springboard.swift
//  SpringboardExampleUITests
//
//  Created by Mac on 10/04/2022.
//

import Foundation
import XCTest

class Springboard {
    
    static let springboard = XCUIApplication(bundleIdentifier: "com.apple.springboard")
    
    class func deleteApp () {
        //terminate app and activate Springboard
        XCUIApplication().terminate()
        springboard.activate()
        
        //tap on app icon
        let appIcon = springboard.icons.matching(identifier: "SpringboardExample").firstMatch
        
        if appIcon.exists {
            
            appIcon.press(forDuration: 2.0)
            
            //Access first alert button (Remove App)
            let _ = springboard.buttons["Remove App"].waitForExistence(timeout: 1.0)
            springboard.buttons["Remove App"].tap()
            
            //Access second alert button (Delete App)
            let _ = springboard.alerts.buttons["Delete App"].waitForExistence(timeout: 1.0)
            springboard.buttons["Delete App"].tap()
            
            //Access second alert button (Delete)
            let _ = springboard.alerts.buttons["Delete"].waitForExistence(timeout: 1.0)
            springboard.buttons["Delete"].tap()
        }
        
    }
}
