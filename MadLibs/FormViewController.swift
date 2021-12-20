//
//  FormViewController.swift
//  MadLibs
//
//  Created by administrator on 20/12/2021.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var adjectiveTextField: UITextField!
    @IBOutlet weak var verb1TextField: UITextField!
    @IBOutlet weak var verb2TextField: UITextField!
    @IBOutlet weak var NounTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func submitButtonPressed(_ sender: UIButton) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        (segue.destination as! ViewController).infoDelegate = self
    }
    

}

extension FormViewController : Info{
    func getAdjective() -> String {
        return adjectiveTextField.text!
    }
    
    func getVerb1() -> String {
        return verb1TextField.text!
    }
    
    func getVerb2() -> String {
        return verb2TextField.text!
    }
    
    func getNoun() -> String {
        return NounTextField.text!
    }
    
    
}
