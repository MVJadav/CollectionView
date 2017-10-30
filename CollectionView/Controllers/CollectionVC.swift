//
//  CollectionVC.swift
//  CollectionView
//
//  Created by MV JADAV on 28/10/17.
//  Copyright © 2017 MV JADAV. All rights reserved.
//

import UIKit

class CollectionVC: UIViewController {

    
    @IBOutlet weak var IBClvList: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setView()
        self.IBClvList.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//MARK: - Other Methods
extension CollectionVC {
    
    func setView() {
        self.title = "Collection List"
        self.navigationController?.navigationBar.isTranslucent = false
        IBClvList.register(UINib(nibName: "CollectionVCCell", bundle: nil), forCellWithReuseIdentifier: "CollectionVCCell")
    }
}


//MARK: - CollectionView DataSource & Delegate Methods
extension CollectionVC : UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        
        var cell:CollectionVCCell? = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionVCCell", for: indexPath) as? CollectionVCCell
        if (cell == nil) {
            let nib: NSArray = Bundle.main.loadNibNamed("CollectionVCCell", owner: self, options: nil)! as NSArray
            cell = (nib.object(at: 0) as? CollectionVCCell)!
        }
        
//        cell?.IBbtnCancel.tag     = indexPath.row
        
//        cell?.initObject(indexPath: indexPath,objWishList : (self.objWishListModel?.Data?.Items?[indexPath.row])!)
//        cell?.IBbtnCancel.addTarget(self, action: #selector(self.BTClickedClose), for: .touchUpInside)
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.IBClvList {
            let picDimension: CGFloat = self.IBClvList.frame.size.width - 30
            return CGSize(width: picDimension/2.0, height: 170)  // height of CollectionCell
        }
        return CGSize(width: 0, height: 0)
    }
    
    //MARK: - Cell select Event
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//    }
    
    //MARK: - Cell Button Click Event
    
//    @IBAction func BTClickedClose(_ sender: Any) {
//        
//        let btn = (sender as! UIButton)
//        self.serviceCallRemoveWishList(ProductID: (self.objWishListModel?.Data?.Items?[(btn.tag)].ProductID)!, index: btn.tag)
//    }
    
}
