//
//  BookInfoViewController.swift
//  HomeLibApp
//
//  Created by Ma Millerr on 24.10.2022.
//

import UIKit

class BookInfoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleLabel2: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var genreS: UIStackView!
    @IBOutlet weak var genreTF: UITextField!
    @IBOutlet weak var line1S: UIStackView!

    @IBOutlet weak var pubS: UIStackView!
    @IBOutlet weak var pubTF: UITextField!
    @IBOutlet weak var line2S: UIStackView!
    
    @IBOutlet weak var translatorS: UIStackView!
    @IBOutlet weak var translatorTF: UITextField!
    @IBOutlet weak var line3S: UIStackView!
    
    @IBOutlet weak var statusS: UIStackView!
    @IBOutlet weak var statusTF: UITextField!
    @IBOutlet weak var line4S: UIStackView!
    
    @IBOutlet weak var locationS: UIStackView!
    @IBOutlet weak var locationTF: UITextField!
    @IBOutlet weak var line5S: UIStackView!
    
    var book: Book!
    
    func checkEmpty(stack: UIStackView, textField: UITextField, line: UIStackView) {
        if  textField.text == "" {
            stack.isHidden = true
            line.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        authorTF.borderStyle = .none
        
//        authorTF.layer.borderWidth = 0
        
        genreTF.text = book.genre
        pubTF.text = book.pubHouse
        translatorTF.text = book.translator
        statusTF.text = book.status
        locationTF.text = book.location
        
        if let bookImage = UIImage(named: book.name) {
            image.image = bookImage
        } else {
            image.image = UIImage(named: "Заглушка")
        }
    
        
        checkEmpty(stack: genreS, textField: genreTF, line: line1S)
        checkEmpty(stack: pubS, textField: pubTF, line: line2S)
        checkEmpty(stack: translatorS, textField: translatorTF, line: line3S)
        checkEmpty(stack: statusS, textField: statusTF, line: line4S)
        checkEmpty(stack: locationS, textField: locationTF, line: line5S)
        
        
        titleLabel.text = book.name
        titleLabel2.text = book.author
        
    }
    
    
//    @IBAction func saveBUttonPressed(_ sender: UIButton) {
//        book.author = authorTF.text!
//    }
}
