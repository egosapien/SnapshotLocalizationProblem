//
//  SnapshotLocalizationUITests.swift
//  SnapshotLocalizationUITests
//
//  Created by Alex Stonehouse on 19/02/16.
//  Copyright © 2016 AlexanderStonehouse. All rights reserved.
//

import XCTest

class SnapshotLocalizationUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()

        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEnterText() {
        let text = "Test text entry in English. Jetzt Texteingabe auf Deutsch. Sacré bleu, Omelet du Fromage"
        
        let app = XCUIApplication()
        let inputTextView = app.textViews["Input"]
        inputTextView.tap()
        inputTextView.typeText(text)
        snapshot("Localization0")
    }
    
}
