//
//  AddNewBookViewController.swift
//  HomeLibApp
//
//  Created by Ma Millerr on 27.10.2022.
//

import UIKit

class AddNewBookViewController: UIViewController {
    
    var book = Book(name: "", author: "", genre: "", language: "", pubHouse: "", translator: "", status: "", location: "", image: "")

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var authorTF: UITextField!
    @IBOutlet weak var pubHouseTF: UITextField!
    @IBOutlet weak var genreTF: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var statusTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButtonState()

        
    }
    
    private func saveButtonState() {
        let nameTF = nameTF.text ?? ""
        let authorTF = authorTF.text ?? ""
        let pubHouseTF = pubHouseTF.text ?? ""
        let genreTF = genreTF.text ?? ""
        let statusTF = statusTF.text ?? ""
        
        saveButton.isEnabled = !nameTF.isEmpty && !authorTF.isEmpty && !pubHouseTF.isEmpty && !genreTF.isEmpty && !statusTF.isEmpty


    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        saveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let name = nameTF.text ?? ""
        let author = authorTF.text ?? ""
        let pubHouse = pubHouseTF.text ?? ""
        let genre = genreTF.text ?? ""
        let status = statusTF.text ?? ""
        
        self.book = Book(name: name, author: author, genre: genre, language: "", pubHouse: pubHouse, translator: "", status: status, location: "", image: name)
        
    }

}
