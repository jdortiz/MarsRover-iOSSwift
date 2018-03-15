//
//  ViewController.swift
//  MarsRover
//
//  Created by Jorge D. Ortiz Fuentes on 14/3/18.
//  Copyright © 2018 Canonical Examples. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties

    private var rover: Rover!
    @IBOutlet weak var commandsTextField: UITextField!
    @IBOutlet weak var positionLabel: UILabel!

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        rover = Rover(x: 0, y: 0, direction: "N")
    }

    // MARK: - UI actions

    @IBAction func moveRoverButtonTapped(_ sender: UIButton) {
        let commands = commandsTextField.text ?? ""
        rover.execute(commands: commands)
        positionLabel.text = rover.description
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
}
