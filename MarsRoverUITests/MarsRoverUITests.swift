//
//  MarsRoverUITests.swift
//  MarsRoverUITests
//
//  Created by Jorge D. Ortiz Fuentes on 14/3/18.
//  Copyright © 2018 Canonical Examples. All rights reserved.
//

import XCTest

class MarsRoverUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUserInputRRPrintsPositionOriginSouth() {

        let app = XCUIApplication()
        let commandsTextField = app.textFields["CommandsTextField"]
        let positionLabel = app/*@START_MENU_TOKEN@*/.staticTexts["PositionLabel"]/*[[".staticTexts[\"(0, 0, S)\"]",".staticTexts[\"PositionLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/

        commandsTextField.tap()
        commandsTextField.typeText("RR\n")
        app/*@START_MENU_TOKEN@*/.buttons["ExecuteButton"]/*[[".buttons[\"Move Rover\"]",".buttons[\"ExecuteButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        XCTAssertEqual("(0, 0, S)", positionLabel.label)
    }
    
}
