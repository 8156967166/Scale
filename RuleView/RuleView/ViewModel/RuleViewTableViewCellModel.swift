//
//  RuleViewTableViewCellModel.swift
//  RuleView
//
//  Created by Bimal@AppStation on 10/11/22.
//

import Foundation


enum RuleViewCellType {
    case ruleViewCell
   
}

class RuleViewTableViewCellModel: NSObject {
    var identifier: String = "ruleView.Cell"
    var cellType: RuleViewCellType = .ruleViewCell
//    var date = Date()
    var ruleViewDetails:  Rule = Rule([:])
    
    init(strNumber: String, cellType: RuleViewCellType) {
        self.cellType = cellType
        self.ruleViewDetails.rule = strNumber
        switch cellType {
        case .ruleViewCell:
            identifier = "ruleView.Cell"
        }
    }
    
    func setRuler() -> String {
        return ruleViewDetails.rule
    }
}
