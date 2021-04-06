//
//  FoodItemsOverViewViewController.swift
//  Restaurant
//
//  Created by imran shaik on 06/04/21.
//

import UIKit
//  MARK:- Closure
typealias Completion = (_ isSelected :Int) ->()

class FoodItemsOverViewViewController: UIViewController {
//  MARK:- Outlets
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
//  MARK:- Variables & Constants
    var completion:Completion!
    var selectedName = ""
    var descriptionDict = [ "Pepperoni Pizza": "Pepperoni Pizza Pepperoni Pizza Pepperoni Pizza  Pepperoni Pizza",
                            "Meat Pizza": "Meat Pizza Meat Pizza Meat Pizza Meat Pizza Meat Pizza Meat Pizza Meat Pizza Meat Pizza Meat Pizza Meat",
                            "Hawaiian Pizza": "Hawaiian Pizza Hawaiian Pizza Hawaiian Pizza Hawaiian Pizza Hawaiian Pizza Hawaiian Pizza Hawaiian Pizza Hawaiian Pizza Hawaiian Pizza",
                            "Buffalo Pizza": "Buffalo Pizza Buffalo Pizza Buffalo Pizza Buffalo Pizza Buffalo Pizza Buffalo Pizza Buffalo Pizza Buffalo Pizza Buffalo Pizza Buffalo Pizza",
                            "Beef Burgers": "Beef Burgers Beef Burgers Beef Burgers",
                            "Elk Burgers": "Elk Burgers Elk Burgers Elk Burgers",
                            "Turkey Burgers": "Turkey Burgers Turkey Burgers Turkey Burgers Turkey Burgers Turkey Burgers",
                            "Black Bean Burgers": "Black Bean Burgers Black Bean Burgers Black Bean Burgers Black Bean Burgers Black Bean Burgers Black Bean Burgers ",
                            "Lemonade": "Lemonade Lemonade Lemonade Lemonade",
                            "Iced tea": "Iced tea Iced tea Iced tea",
                            "Hot chocolate": "Hot chocolate Hot chocolate Hot chocolate",
                            "Milkshake": "Milkshake Milkshake Milkshake "
    ]
//  MARK:- ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedName
        productImageView.image = UIImage(named: selectedName)
        descriptionLabel.text = descriptionDict[selectedName] ?? ""
        self.navigationController?.isNavigationBarHidden = true
    }
//   MARK:- Back button action
    @IBAction func onBackButtonTap(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
//    MARK:- Done button action
    @IBAction func onDoneButtonTap(_ sender: UIButton) {
        if let completion = completion {
            completion(sender.tag)
            navigationController?.popViewController(animated: true)
        }
    }
}
