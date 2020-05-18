//
//  ViewController.swift
//  SudokuSolver
//
//  Created by Paul Cote on 5/17/20.
//  Copyright © 2020 Paul Cote. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet var cells: [UITextField]! {
        didSet {
            cells.sort { $0.tag < $1.tag }
        }
    }
    @IBAction func solveButtonPressed(_ sender: UIButton) {
        for cell in cells {
            print(cell.text!)
        }
    }
    
}

