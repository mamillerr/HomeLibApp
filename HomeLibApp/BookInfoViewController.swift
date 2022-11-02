//
//  BookInfoViewController.swift
//  HomeLibApp
//
//  Created by Ma Millerr on 24.10.2022.
//

import UIKit

class BookInfoViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var pubTF: UITextField!
    @IBOutlet weak var genreTF: UITextField!
    
    @IBOutlet weak var statusTF: UITextField!
    @IBOutlet weak var authorTF: UITextField!
    
    var book: Book!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        authorTF.borderStyle = .none
        
        authorTF.layer.borderWidth = 0
        
        authorTF.text = book.author
        pubTF.text = book.pubHouse
        genreTF.text = book.genre
        statusTF.text = book.status
        
        if let bookImage = UIImage(named: book.name) {
            image.image = bookImage
        } else {
            image.image = UIImage(named: "Заглушка")
        }
    
        titleLabel.text = book.name
    }
    
    
    @IBAction func saveBUttonPressed(_ sender: UIButton) {
        book.author = authorTF.text!
    }
}
