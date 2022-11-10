//
//  SampleRuleViewController.swift
//  RuleView
//
//  Created by Bimal@AppStation on 10/11/22.
//

import UIKit

class SampleRuleViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
  
    
    var rulerViewArray = [SampleRuleViewTableViewCellModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setRulerModel()
        
    }
    
    func setRulerModel() {
        for i in 0...100 {
            rulerViewArray.append(SampleRuleViewTableViewCellModel(strNumber: "\(i)", cellType: .ruleCell))
        }
    }
}

extension SampleRuleViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rulerViewArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellModel = rulerViewArray[indexPath.item]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellModel.identifier, for: indexPath) as! SampleRuleCollectionViewCell
        cell.cellModel = cellModel
        return cell
    }
    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//
//        let totalCellWidth = CellWidth * CellCount
//        let totalSpacingWidth = CellSpacing * (CellCount - 1)
//
//        let leftInset = (collectionViewWidth - CGFloat(totalCellWidth + totalSpacingWidth)) / 2
//        let rightInset = leftInset
//
//        return UIEdgeInsets(top: 0, left: leftInset, bottom: 0, right: rightInset)
//    }
}
