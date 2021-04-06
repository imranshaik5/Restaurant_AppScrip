//
//  MenuViewModel.swift
//  Restaurant
//
//  Created by imran shaik on 05/04/21.
//

import UIKit
//protocol MenuViewModelDelegate {
//    func didTap()
//}
class MenuViewModel: NSObject {
//    var delegate: MenuVieModelDelegate?
//    var table:UITableView!
//    var selectedIndexPath = [IndexPath]()
//    var itemsArray = ["Pizza","Burgers","Beverages"]
//    var expandPizzaSction = false
//    var expandBurgersSection = false
//    var expandBeveragesSection = false
//    var dictData = ["Pizza" : ["Pepperoni Pizza","Meat Pizza","Hawaiian Pizza","Buffalo Pizza"],
//                    "Burgers" : ["Beef Burgers","Elk Burgers","Turkey Burgers","Black Bean Burgers"],
//                    "Beverages" : ["Lemonade","Iced tea","Hot chocolate","Milkshake"]]
//
//    func tableRegister(tableView:UITableView, completion: @escaping(_ status: Bool) -> ()){
//        let headerNib = UINib.init(nibName: "HeaderTableViewCell", bundle: nil)
//        tableView.register(headerNib, forHeaderFooterViewReuseIdentifier: "HeaderTableViewCell")
//        table = tableView
//        tableView.delegate = self
//        tableView.dataSource = self
//        completion(true)
//
//    }
//
//    @objc func pizzaSectionTapped(_ sender: UITapGestureRecognizer?) {
//        self.expandPizzaSction = !self.expandPizzaSction
//        DispatchQueue.main.async {
//            self.table.reloadData()
//        }
//    }
//    @objc func burgersSectionTapped(_ sender: UITapGestureRecognizer?) {
//        self.expandBurgersSection = !self.expandBurgersSection
//        DispatchQueue.main.async {
//            self.table.reloadData()
//        }
//    }
//    @objc func beveragesSectionTapped(_ sender: UITapGestureRecognizer?) {
//        self.expandBeveragesSection = !self.expandBeveragesSection
//        DispatchQueue.main.async {
//            self.table.reloadData()
//        }
//
//    }
//
//}
//
//extension MenuViewModel: UITableViewDataSource,UITableViewDelegate{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        switch section{
//        case 0:
//            return 1
//        default:
//            return 4
//        }
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        switch indexPath.section{
//        case 0:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell") as! ListTableViewCell
//            return cell
//         default:
//            let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTitleTableViewCell") as! ItemTitleTableViewCell
//            if indexPath.section == 1 {
//                cell.foodItemNameLabel.text = dictData["Pizza"]?[indexPath.row]
//            } else if indexPath.section == 2 {
//                cell.foodItemNameLabel.text = dictData["Burgers"]?[indexPath.row]
//            } else if indexPath.section == 3 {
//                cell.foodItemNameLabel.text = dictData["Beverages"]?[indexPath.row]
//            }
//            if selectedIndexPath.contains(indexPath) {
//                cell.viewBackground.backgroundColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
//            } else {
//                cell.viewBackground.backgroundColor = .white
//            }
//            return cell
//        }
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        guard let header = tableView.dequeueReusableCell(withIdentifier: "HeaderTableViewCell") as? HeaderTableViewCell else {
//            return UITableViewCell()
//        }
//        switch section{
//        case 0:
//            return nil
//        case 1:
//            header.lblTitle.text = itemsArray[0]
//            header.btnExpandable.addTarget(self, action: #selector(pizzaSectionTapped(_:)), for: .touchUpInside)
//        case 2:
//            header.lblTitle.text = itemsArray[1]
//            header.btnExpandable.addTarget(self, action: #selector(burgersSectionTapped(_:)), for: .touchUpInside)
//
//        default:
//            header.lblTitle.text = itemsArray[2]
//            header.btnExpandable.addTarget(self, action: #selector(beveragesSectionTapped(_:)), for: .touchUpInside)
//        }
//        return header
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        switch section{
//        case 0:
//            return 0
//        default:
//            return 50
//        }
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
////        let nextVC = storyboard?.instantiateViewController(identifier: "DetailsViewController") as! DetailsViewController
////        nextVC.completion = { (isSelected: Int) in
////            if self.selectedIndexPaths.contains(indexPath) {
////                self.selectedIndexPaths.removeAll(where: {
////                    $0 == indexPath
////                })
////            } else {
////                self.selectedIndexPaths.append(indexPath)
////            }
////            DispatchQueue.main.async {
////                tableView.reloadRows(at: [indexPath], with: .automatic)
////            }
////        }
////        if indexPath.section == 1 {
////            nextVC.selectedName = dictData["Pizza"]?[indexPath.row] ?? ""
////        } else if indexPath.section == 2 {
////            nextVC.selectedName = dictData["Burgers"]?[indexPath.row] ?? ""
////        } else if indexPath.section == 3 {
////            nextVC.selectedName = dictData["Beverages"]?[indexPath.row] ?? ""
////        }
////        self.navigationController?.pushViewController(nextVC, animated: true)
//    }

    
    
}
