//
//  SpringboardExampleUITests.swift
//  SpringboardExampleUITests
//
//  Created by Mac on 10/04/2022.
//

import XCTest

class SpringboardExampleUITests: XCTestCase {

    var app: XCUIApplication!
    
    override func setUp() {
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }
    
    func test_to_check_auto_delete_app_functionality_via_spring_board() {
       
        let button = app.buttons["clickButton"]
        button.tap()
        
        let text = app.staticTexts["labelText"]
        
        XCTAssertEqual(text.label, "Testing...")
    }
    
    override func tearDown() {
        Springboard.deleteApp()
    }
}
