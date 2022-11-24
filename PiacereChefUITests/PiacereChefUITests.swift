//
//  PiacereChefUITests.swift
//  PiacereChefUITests
//
//  Created by Mario Rúa on 18/11/22.
//

import XCTest

final class PiacereChefUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
        
        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["buttonId"].staticTexts["Button"]/*[[".buttons[\"Button\"].staticTexts[\"Button\"]",".buttons[\"buttonId\"].staticTexts[\"Button\"]",".staticTexts[\"Button\"]"],[[[-1,2],[-1,1],[-1,0]]],[1]]@END_MENU_TOKEN@*/.tap()
        
        let resultText = app.staticTexts.element(matching: .any, identifier: "labelId")
        XCTAssertEqual(resultText.label, "Button tapped!")
                        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

/*
    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }*/
}
