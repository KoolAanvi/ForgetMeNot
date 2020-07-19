//
//  ViewController.swift
//  WordPuzzle
//
//  Created by Cray Jaeger on 6/2/18.
//  Copyright © 2018 Cray Jaeger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK Properties
    @IBOutlet weak var TestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func TestButtonPressed(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "secondVC") as? PuzzleSelectViewController
        navigationController?.pushViewController(vc!, animated: true)
    }
    
}

