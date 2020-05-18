//
//  Sudoku.swift
//  SudokuSolver
//
//  Created by Paul Cote on 5/17/20.
//  Copyright © 2020 Paul Cote. All rights reserved.
//

import Foundation

class Sudoku {
    var cells = Array(repeating: 0, count: 81)
    
    init(cellValues: [Int]) {
        for i in 0..<81 {
            cells[i] = cellValues[i]
        }
    }
    
    func getColumn(columnNumber: Int) -> [Int] {
        var columnValues: [Int] = []
        for rowNumber in 0..<9 {
            columnValues.append(cells[columnNumber * 9 + rowNumber])
        }
        return columnValues
    }
    
    func getRow(rowNumber: Int) -> [Int] {
        var rowValues: [Int] = []
        for rowValue in (9 * rowNumber)..<(9 * rowNumber + 9) {
            rowValues.append(rowValue)
            
        }
        return rowValues
    }
    
    func rowIsValid(rowNumber: Int) -> Bool {
        var seen = [1: false, 2: false, 3: false, 4: false, 5: false, 6: false, 7: false, 8: false, 9: false]
        let row = getRow(rowNumber: rowNumber)
        for i in row {
            if i != 0 {
                if seen[i]! {
                    return false
                } else {
                    seen[i] = true
                }
            }
        }
        return true;
    }
    
    func columnIsValid(columnNumber: Int) -> Bool {
        var seen = [1: false, 2: false, 3: false, 4: false, 5: false, 6: false, 7: false, 8: false, 9: false]
        let column = getColumn(columnNumber: columnNumber)
        for i in column {
            if i != 0 {
                if seen[i]! {
                    return false
                } else {
                    seen[i] = true
                }
            }
        }
        return true
    }
}
