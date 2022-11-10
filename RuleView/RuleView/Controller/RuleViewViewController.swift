//
//  ViewController.swift
//  RuleView
//
//  Created by Bimal@AppStation on 09/11/22.
//

import UIKit

class RuleViewViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var labelInRuleView: UILabel!
    
    // MARK: - Variable
    
    var rulerViewArray = [RuleViewTableViewCellModel]()
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelInRuleView.text = "0"
        // Do any additional setup after loading the view.
        setRulerModel()
    }
    
    // MARK: - Functions
    
    func setRulerModel() {
        for i in 0...100 {
            rulerViewArray.append(RuleViewTableViewCellModel(strNumber: "\(i)", cellType: .ruleViewCell))
        }    
    }

    func loadData() {
//        let middle = (collectionView.frame.size.width )/2
        if let indexPath = collectionView.indexPathForItem(at: CGPoint(x: collectionView.bounds.midX , y: collectionView.bounds.midY)) {
        
            debugPrint(indexPath)
            
            collectionView.scrollToItem(at: indexPath, at: .top, animated: true)
            let cell = collectionView.cellForItem(at: indexPath) as! RuleViewCollectionViewCell
            print("cell label ---- \(cell.labelKgInRuleView.text!)")
            
//            let font:UIFont? = UIFont(name: "Helvetica", size:20)
//            let fontSuper:UIFont? = UIFont(name: "Helvetica", size:10)
//            let attString:NSMutableAttributedString = NSMutableAttributedString(string: "\(cell.labelKgInRuleView.text!)kg", attributes: [.font:font!])
//            attString.setAttributes([.font:fontSuper!,.baselineOffset:10], range: NSRange(location:1,length:2))
//            labelInRuleView.attributedText = attString
            labelInRuleView.text = cell.labelKgInRuleView.text
        }
    }
    
    
}

// MARK: - ScrollDelegate

extension RuleViewViewController: UIScrollViewDelegate {
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("scrollViewDidEndDragging")
        loadData()
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("scrollViewDidEndDecelerating")
        
        loadData()
    }
}

// MARK: - CollectionView

extension RuleViewViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return rulerViewArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellModel = rulerViewArray[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellModel.identifier, for: indexPath) as! RuleViewCollectionViewCell
        cell.cellmodel = cellModel
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        let leftInset = (collectionView.frame.size.width )/2
        let rightInset = leftInset

        return UIEdgeInsets(top: 0, left: leftInset, bottom: 0, right: rightInset)
    }
}
