//
//  SampleRuleCollectionViewCell.swift
//  RuleView
//
//  Created by Bimal@AppStation on 10/11/22.
//

import UIKit

class SampleRuleCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var viewOuterRule: UIView!
    
    var cellModel: SampleRuleViewTableViewCellModel! {
        didSet {
            setSampleRuleItems()
            drawLine()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func drawLine() {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to:  CGPoint(x: 0, y: 20))
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        shapeLayer.strokeColor = UIColor.black.cgColor
        shapeLayer.lineWidth = 2
        viewOuterRule.layer.addSublayer(shapeLayer)
    }
    
    func setSampleRuleItems() {
        label.text = cellModel.setRuler()
    }
}
