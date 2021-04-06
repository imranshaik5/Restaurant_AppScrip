//
//  MenuViewController.swift
//  Restaurant
//
//  Created by imran shaik on 05/04/21.
//

import UIKit

class MenuViewController: UIViewController {
    //   MARK:- Outlets
    @IBOutlet weak var menuTableView: UITableView!
    //    MARK:- Constants & Variables
    var selectedIndexPath = [IndexPath]()
    var itemsArray = ["Pizza","Burgers","Beverages"]
    var expandPizzaSction = false
    var expandBurgersSection = false
    var expandBeveragesSection = false
    var dictData = ["Pizza" : ["Pepperoni Pizza","Meat Pizza","Hawaiian Pizza","Buffalo Pizza"],
                    "Burgers" : ["Beef Burgers","Elk Burgers","Turkey Burgers","Black Bean Burgers"],
                    "Beverages" : ["Lemonade","Iced tea","Hot chocolate","Milkshake"]]
    //    MARK:- ViewLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.tableFooterView = UIView()
        self.title = "FOOD ITEMS"
    }
    //    MARK:- Additional functions handeling the drop down
    @objc func pizzaSectionTapped(_ sender: UITapGestureRecognizer?) {
        self.expandPizzaSction = !self.expandPizzaSction
        DispatchQueue.main.async {
            self.menuTableView.reloadData()
        }
    }
    @objc func burgersSectionTapped(_ sender: UITapGestureRecognizer?) {
        self.expandBurgersSection = !self.expandBurgersSection
        DispatchQueue.main.async {
            self.menuTableView.reloadData()
        }
    }
    @objc func beveragesSectionTapped(_ sender: UITapGestureRecognizer?) {
        self.expandBeveragesSection = !self.expandBeveragesSection
        DispatchQueue.main.async {
            self.menuTableView.reloadData()
        }
        
    }
}
//    MARK:- ViewController Extension for implementation of table view
extension MenuViewController: UITableViewDataSource, UITableViewDelegate{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
            let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as! ListTableViewCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTitleTableViewCell") as! ItemTitleTableViewCell
            if indexPath.section == 1 {
                cell.foodItemNameLabel.text = dictData["Pizza"]?[indexPath.row]
            } else if indexPath.section == 2 {
                cell.foodItemNameLabel.text = dictData["Burgers"]?[indexPath.row]
            } else if indexPath.section == 3 {
                cell.foodItemNameLabel.text = dictData["Beverages"]?[indexPath.row]
            }
            if selectedIndexPath.contains(indexPath) {
                cell.viewBackground.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
            } else {
                cell.viewBackground.backgroundColor = .white
            }
            return cell
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = Bundle.main.loadNibNamed("HeaderTableViewCell", owner: self, options: nil)?.last as! HeaderTableViewCell
        switch section{
        case 0:
            return nil
        case 1:
            header.titleLabel.text = itemsArray[0]
            header.buttonExpandable.addTarget(self, action: #selector(pizzaSectionTapped(_:)), for: .touchUpInside)
        case 2:
            header.titleLabel.text = itemsArray[1]
            header.buttonExpandable.addTarget(self, action: #selector(burgersSectionTapped(_:)), for: .touchUpInside)
            
        default:
            header.titleLabel.text = itemsArray[2]
            header.buttonExpandable.addTarget(self, action: #selector(beveragesSectionTapped(_:)), for: .touchUpInside)
        }
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 {
            return 0
        } else {
            return 50
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let nextVC = storyboard?.instantiateViewController(identifier: "FoodItemsOverViewViewController") as! FoodItemsOverViewViewController
        nextVC.completion = { (isSelected: Int) in
            if self.selectedIndexPath.contains(indexPath) {
                self.selectedIndexPath.removeAll(where: {
                    $0 == indexPath
                })
            } else {
                self.selectedIndexPath.append(indexPath)
                DispatchQueue.main.async {
                    tableView.reloadData()
                }
            }
            tableView.reloadData()
            //            tableView.reloadRows(at: [indexPath], with: .left)
        }
        if indexPath.section == 1 {
            nextVC.selectedName = dictData["Pizza"]?[indexPath.row] ?? ""
        } else if indexPath.section == 2 {
            nextVC.selectedName = dictData["Burgers"]?[indexPath.row] ?? ""
        } else if indexPath.section == 3 {
            nextVC.selectedName = dictData["Beverages"]?[indexPath.row] ?? ""
        }
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section{
        case 0:
            return 210
        case 1:
            if expandPizzaSction{
                if dictData["Pizza"]?.isEmpty == false{
                    return 50
                } else {
                    return 0
                }
            }
        case 2:
            if expandBurgersSection {
                if dictData["Burgers"]?.isEmpty == false {
                    return 50
                } else {
                    return 0
                }
            }
        default:
            if expandBeveragesSection {
                if dictData["Beverages"]?.isEmpty == false {
                    return 50
                } else {
                    return 0
                }
            }
        }
        return 0
    }
}


