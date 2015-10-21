//
//  FirstViewController.swift
//  learnJap
//
//  Created by ジエーンポール ソリバ on 10/20/15.
//  Copyright © 2015 ジエーンポール ソリバ. All rights reserved.
//

import UIKit

//class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

//    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableView: UITableView!
    
    var categories = ["あ", "か", "さ", "た", "な", "は", "ま", "ら"]
    
    let textCellIdentifier = "TextCell"
    
    let showCategorieView = "showCategorieIdentifier"
    let showCategorieController = CategorieViewController()
    
    var selectedCategoryIndex = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == showCategorieView {
            if let destination = segue.destinationViewController as? CategorieViewController {
                destination.categorieNameTitle = "test"
                destination.categoryIndex = selectedCategoryIndex
            }
        }
    }


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func categorieLength() -> Int {
        return categories.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.categorieLength()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath) as UITableViewCell
        
        let row = indexPath.row
        cell.textLabel?.text = categories[row]
        return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        print("You selected cell #\(indexPath.row)!")
        print(indexPath)
        print(categorieLength())
        print("debug----")
        
        let row = indexPath.row
        selectedCategoryIndex = categories.indexOf(categories[row])!
        print(categories[row])
        
    }
    
}

