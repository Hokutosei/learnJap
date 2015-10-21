//
//  CategorieViewController.swift
//  learnJap
//
//  Created by ジエーンポール ソリバ on 10/22/15.
//  Copyright © 2015 ジエーンポール ソリバ. All rights reserved.
//

import UIKit

class CategorieViewController: UIViewController {

    
    @IBOutlet weak var categorieName: UILabel!
    var categorieNameTitle = String()
    
    var categoryIndex = Int()
    
    override func viewWillAppear(animated: Bool) {
        categorieName.text = categorieNameTitle
        print(categoryIndex)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
