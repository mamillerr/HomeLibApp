//
//  AddNewBookViewController.swift
//  HomeLibApp
//
//  Created by Ma Millerr on 27.10.2022.
//

import UIKit

class AddNewBookViewController: UIViewController {
    
    var book = Book(name: "", author: "", genre: "", pubHouse: "", translator: "", status: "", location: "", image: "")

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var authorTF: UITextField!
    @IBOutlet weak var genreTF: UITextField!
    @IBOutlet weak var pubHouseTF: UITextField!
    @IBOutlet weak var translatorTF: UITextField!
    @IBOutlet weak var statusTF: UITextField!
    @IBOutlet weak var locationTF: UITextField!
    @IBOutlet weak var imageIV: UIImageView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButtonState()

        
    }
    
    private func saveButtonState() {
        let nameTF = nameTF.text ?? ""
        let authorTF = authorTF.text ?? ""
//        let genreTF = genreTF.text ?? ""
//        let languageTF = languageTF.text ?? ""
//        let pubHouseTF = pubHouseTF.text ?? ""
//        let translaorTF = translatorTF.text ?? ""
//        let statusTF = statusTF.text ?? ""
//        let locationTF = locationTF.text ?? ""
//        let imageIV = imageIV.image

        saveButton.isEnabled = !nameTF.isEmpty && !authorTF.isEmpty 

    }
    
    @IBAction func textFieldChanged(_ sender: UITextField) {
        saveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let name = nameTF.text ?? ""
        let author = authorTF.text ?? ""
        let genre = genreTF.text ?? ""
        let pubHouse = pubHouseTF.text ?? ""
        let translator = translatorTF.text ?? ""
        let status = statusTF.text ?? ""
        let location = locationTF.text ?? ""
        
        self.book = Book(name: name, author: author, genre: genre, pubHouse: pubHouse, translator: translator, status: status, location: location, image: name)
        
    }
}
