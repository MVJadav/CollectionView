//
//  CollectionVCCell.swift
//  CollectionView
//
//  Created by MV JADAV on 28/10/17.
//  Copyright © 2017 MV JADAV. All rights reserved.
//

import UIKit

class CollectionVCCell: UICollectionViewCell {

    @IBOutlet weak var IBviewMain: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        IBviewMain.clipsToBounds          = true
        IBviewMain.layer.masksToBounds    = true
        IBviewMain.layer.cornerRadius     = 5.0
        // Initialization code
    }

}
