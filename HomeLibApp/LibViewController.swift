//
//  LibViewController.swift
//  HomeLibApp
//
//  Created by Ma Millerr on 24.10.2022.
//

import UIKit

class LibViewController: UITableViewController {

    private var books = Book.getBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
        navigationItem.leftBarButtonItem = editButtonItem

    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveSegue" else { return }
        guard let addVC = segue.source as? AddNewBookViewController else { return }
        let newBook = addVC.book
        
        let indexPath = IndexPath(row: books.count, section: 0)
        books.append(newBook)
        tableView.insertRows(at: [indexPath], with: .fade)
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "book", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let book = books[indexPath.row]
        
        content.text = book.name
        content.secondaryText = book.author
        
        if let bookImage = UIImage(named: book.name) {
            content.image = bookImage
        } else {
            content.image = UIImage(named: "Заглушка")
        }

        
        cell.contentConfiguration = content
        

        return cell
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            books.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade
            )
        }
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentBook = books.remove(at: sourceIndexPath.row)
        books.insert(currentBook, at: destinationIndexPath.row)
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bookInfoVC = segue.destination as? BookInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        bookInfoVC.book = books[indexPath.row]
    }

}
