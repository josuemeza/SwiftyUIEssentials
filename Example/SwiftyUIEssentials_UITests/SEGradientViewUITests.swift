//
//  SwiftyUIEssentials_UITests.swift
//  SwiftyUIEssentials_UITests
//
//  Created by Josue Meza on 6/6/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest
import SwiftyUIEssentials

class SEGradientViewUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        super.tearDown()
    }

}

extension SEGradientViewUITests {
    
    func testChangeFirstColor() {
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["SEGradientView"]/*[[".cells.staticTexts[\"SEGradientView\"]",".staticTexts[\"SEGradientView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Green"]/*[[".segmentedControls.buttons[\"Green\"]",".buttons[\"Green\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Apply"].tap()
        sleep(5)
        app.terminate()
    }
    
    func testChangeSecondColor() {
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["SEGradientView"]/*[[".cells.staticTexts[\"SEGradientView\"]",".staticTexts[\"SEGradientView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Purple"]/*[[".segmentedControls.buttons[\"Purple\"]",".buttons[\"Purple\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Apply"].tap()
        sleep(5)
        app.terminate()
    }
    
    func testChangeBothColors() {
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["SEGradientView"]/*[[".cells.staticTexts[\"SEGradientView\"]",".staticTexts[\"SEGradientView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Green"]/*[[".segmentedControls.buttons[\"Green\"]",".buttons[\"Green\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Purple"]/*[[".segmentedControls.buttons[\"Purple\"]",".buttons[\"Purple\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Apply"].tap()
        sleep(5)
        app.terminate()
    }
    
}
