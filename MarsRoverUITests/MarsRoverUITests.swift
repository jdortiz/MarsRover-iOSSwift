//
//  MarsRoverUITests.swift
//  MarsRoverUITests
//
//  Created by Jorge D. Ortiz Fuentes on 14/3/18.
//  Copyright © 2018 Canonical Examples. All rights reserved.
//

import XCTest

class MarsRoverUITests: XCTestCase {

    private var app: XCUIApplication!
    override func setUp() {
        super.setUp()

        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        app = XCUIApplication()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testUserInputRRPrintsPositionOriginSouth() {
        app.launch()
        let commandsTextField = app.textFields["CommandsTextField"]
        let positionLabel = app/*@START_MENU_TOKEN@*/.staticTexts["PositionLabel"]/*[[".staticTexts[\"(0, 0, S)\"]",".staticTexts[\"PositionLabel\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/

        commandsTextField.tap()
        commandsTextField.typeText("RR\n")
        app/*@START_MENU_TOKEN@*/.buttons["ExecuteButton"]/*[[".buttons[\"Move Rover\"]",".buttons[\"ExecuteButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()

        XCTAssertEqual("(0, 0, S)", positionLabel.label)
    }
}
