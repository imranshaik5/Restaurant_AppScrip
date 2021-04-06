//
//  ListTableViewCell.swift
//  Restaurant
//
//  Created by imran shaik on 05/04/21.
//

import UIKit

class ListTableViewCell: UITableViewCell {
//    MARK:- Outlets
    @IBOutlet weak var itemsCollectionView: UICollectionView!
//    MARK:- Variables and constants
    var imagesArr = [#imageLiteral(resourceName: "Pizza"),#imageLiteral(resourceName: "Burgers"),#imageLiteral(resourceName: "beverages")]  // initilizing the images in array
    var timer : Timer?
    var currentIndex = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        itemsCollectionView.delegate = self
        itemsCollectionView.dataSource = self
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
//    MARK:- Additional Function to handel the scroll
    @objc func slideToNext() {
        if currentIndex < imagesArr.count-1{  // assigning the images from the imagesArr
            currentIndex = currentIndex + 1
            
        }else{
            currentIndex = 0
        }
        itemsCollectionView.scrollToItem(at: IndexPath(item: currentIndex, section: 0), at: .right, animated: true)
    }
}
//    MARK:- TableViewCell Extension for handeling the collection View
extension ListTableViewCell: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = itemsCollectionView.dequeueReusableCell(withReuseIdentifier: "ImagesCollectionViewCell", for: indexPath) as! ImagesCollectionViewCell
        cell.foodImage.image = imagesArr[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: itemsCollectionView.frame.width, height: itemsCollectionView.frame.height)
    }
}

