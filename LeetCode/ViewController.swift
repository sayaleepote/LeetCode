//
//  ViewController.swift
//  LeetCode
//
//  Created by Sayalee Pote on 01/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        executeMay1()
    }

    func executeMay1() {
        let obj = WordFilter(["apple", "text", "ate", "maple"])
        let result: Int = obj.f("a","le")
        print("May 1: Word Filter: \(result)")
    }

}

