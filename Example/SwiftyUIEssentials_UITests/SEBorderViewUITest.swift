//
//  SEBorderViewUITest.swift
//  SwiftyUIEssentials_UITests
//
//  Created by Josue Meza on 6/7/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import XCTest

class SEBorderViewUITest: XCTestCase {

    override func setUp() {
        continueAfterFailure = false
        XCUIApplication().launch()
    }

    override func tearDown() {
        super.tearDown()
    }

}

extension SEBorderViewUITest {
    
    func testChangeBorderRadious() {
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["SEBorderView"]/*[[".cells.staticTexts[\"SEBorderView\"]",".staticTexts[\"SEBorderView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let textField = app.textFields["borderRadiousTextField"]
        guard let stringValue = textField.value as? String else {
            XCTFail("Error getting radious value")
            return
        }
        let deleteString = Array(stringValue).map { _ in XCUIKeyboardKey.delete.rawValue }.joined(separator: "")
        textField.tap()
        textField.typeText(deleteString)
        textField.typeText("60")
        app.buttons["Apply"].tap()
        sleep(3000)
        app.terminate()
    }
    
    func testChangeBorderWidth() {
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["SEBorderView"]/*[[".cells.staticTexts[\"SEBorderView\"]",".staticTexts[\"SEBorderView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        let textField = app.textFields["borderWidthTextField"]
        guard let stringValue = textField.value as? String else {
            XCTFail("Error getting radious value")
            return
        }
        let deleteString = Array(stringValue).map { _ in
            XCUIKeyboardKey.delete.rawValue
        }.joined(separator: "")
        textField.tap()
        textField.typeText(deleteString)
        textField.typeText("20")
        app.buttons["Apply"].tap()
        sleep(3000)
        app.terminate()
    }
    
    func testChangeBorderColor() {
        let app = XCUIApplication()
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["SEBorderView"]/*[[".cells.staticTexts[\"SEBorderView\"]",".staticTexts[\"SEBorderView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["Green"]/*[[".segmentedControls.buttons[\"Green\"]",".buttons[\"Green\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["Apply"].tap()
        sleep(3000)
        app.terminate()
    }
    
}
