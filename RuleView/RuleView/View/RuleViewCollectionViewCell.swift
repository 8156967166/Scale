//
//  RuleViewCollectionViewCell.swift
//  RuleView
//
//  Created by Bimal@AppStation on 10/11/22.
//

import UIKit

class RuleViewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var labelKgInRuleView: UILabel!
    @IBOutlet weak var outlerViewInRuleView: UIView!
    
    var cellmodel: RuleViewTableViewCellModel! {
        didSet {
            setRuleViewItems()
            drawLine()
            drawSmallLine()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func drawLine() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to:  CGPoint(x: 0, y: 40))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 2
        outlerViewInRuleView.layer.addSublayer(shapeLayer)
    }
    
    func drawSmallLine() {
        let path = UIBezierPath()
        for i in stride(from: 10, to: 100, by: 10) {
            path.move(to: CGPoint(x: i, y: 0))
            path.addLine(to:  CGPoint(x: i, y: 20))
        }
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 2
        outlerViewInRuleView.layer.addSublayer(shapeLayer)
    }
    
    func setRuleViewItems() {
        labelKgInRuleView.text = cellmodel.setRuler()
    }
  
}
