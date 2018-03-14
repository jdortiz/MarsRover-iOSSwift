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

import Foundation


class Rover: CustomStringConvertible {
    var x, y: Int
    var direction: Character
    var description: String {
        return "(\(x), \(y), \(direction))"
    }

    init(x: Int, y: Int, direction: Character) {
        self.x = x
        self.y = y
        self.direction = direction
    }

    func execute(commands: String) {
        for command in commands {
            if command == "R" {
                switch direction {
                case "N":
                    direction = "E"
                case "E":
                    direction = "S"
                case "S":
                    direction = "W"
                default:
                    direction = "N"
                }
            }
        }
    }
}
