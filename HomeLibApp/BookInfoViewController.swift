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
    @IBOutlet weak var pubTF: UITextField!
    @IBOutlet weak var genreTF: UITextField!
    @IBOutlet weak var translatorTF: UITextField!
    @IBOutlet weak var statusTF: UITextField!
    @IBOutlet weak var locationTF: UITextField!
//    @IBOutlet weak var authorTF: UITextField!
    
//
//    @IBOutlet weak var nameTF: UITextField!
//    @IBOutlet weak var authorTF: UITextField!
//    @IBOutlet weak var genreTF: UITextField!
//    @IBOutlet weak var languageTF: UITextField!
//    @IBOutlet weak var pubHouseTF: UITextField!
//    @IBOutlet weak var translatorTF: UITextField!
//    @IBOutlet weak var statusTF: UITextField!
//    @IBOutlet weak var locationTF: UITextField!
//    @IBOutlet weak var imageIV: UIImageView!

    
    var book: Book!
    
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
    
        titleLabel.text = book.name
        titleLabel2.text = book.author
    }
    
    
//    @IBAction func saveBUttonPressed(_ sender: UIButton) {
//        book.author = authorTF.text!
//    }
}
