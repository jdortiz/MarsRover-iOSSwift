/**
 * 14/3/18. Initial version created by jorge
 * for a Canonical Examples training.
 *
 * Copyright 2018 Jorge D. Ortiz Fuentes
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import XCTest
@testable import MarsRover


class RoverTests: XCTestCase {

    // MARK: - Parameters & Constants.
    let initialX = 0
    let initialY = 0
    let initialDirection: Character = "N"


    // MARK: - Test vatiables.

    var sut: Rover!


    // MARK: - Set up and tear down.

    override func setUp() {
        super.setUp()

        sut = Rover(x: initialX, y: initialY, direction: initialDirection)
    }

    override func tearDown() {
        sut = nil

        super.tearDown()
    }


    // MARK: - Basic test.

    func testSutIsNotNil() {
        XCTAssertNotNil(sut, "Sut must not be nil.")
    }

    func testOneRightSetsDirectionToEast() {
        sut.execute(commands: "R")

        XCTAssertEqual("E", sut.direction)
    }
}
