//
//  Lucky_Day_Watch_Version_Watch_AppUITestsLaunchTests.swift
//  Lucky-Day-Watch-Version Watch AppUITests
//
//  Created by Faxin Xu on 2024/1/18.
//

import XCTest

final class Lucky_Day_Watch_Version_Watch_AppUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
