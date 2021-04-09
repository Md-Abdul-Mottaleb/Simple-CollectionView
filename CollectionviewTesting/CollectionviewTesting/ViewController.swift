//
//  ViewController.swift
//  CollectionviewTesting
//
//  Created by MacBook Pro on 8/4/21.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    let width = UIScreen.main.bounds.width
    
    var imagearray = [UIImage (named: "Africa"),
                      UIImage (named: "Antarctica"),
                      UIImage (named: "Asia"),
                      UIImage (named: "Australia"),
                      UIImage (named: "Europe"),
                      UIImage (named: "North America"),
                      UIImage (named: "South America")
    
    ]
    
    
    @IBOutlet weak var collectionview: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionview.delegate = self
        self.collectionview.dataSource = self
        
    }
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagearray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sell = collectionview.dequeueReusableCell(withReuseIdentifier: "xell", for: indexPath) as! CollectionViewCell
        
        sell.imageview.image = imagearray[indexPath.row]
        
        return sell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 8, bottom: 0, right: 8)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
         let container = self.width - 24
         let cellSize = container/2
        
        return CGSize (width: cellSize, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }

}

/*extension ViewController: UICollectionViewDelegateFlowLayout{
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 16, left: 6, bottom: 0, right: 6)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
      //  let container = self.width - 28
      //  let cellSize = container/4
        
        return CGSize(width: 100, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 16
    }
}
*/

