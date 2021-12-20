//
//  ViewController.swift
//  MadLibs
//
//  Created by administrator on 20/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var infoDelegate: Info?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func unwind( _ seg: UIStoryboardSegue){
        
        if let adjective = infoDelegate?.getAdjective(),
        let verb1 = infoDelegate?.getVerb1(),
        let verb2 = infoDelegate?.getVerb2(),
           let noun = infoDelegate?.getNoun() {
            textLabel.text = "We are having a perfectly \"\(adjective)\" right now. Later we will \"\(verb1)\" and \"\(verb2)\" in the \"\(noun)\""
        }
    }


}

