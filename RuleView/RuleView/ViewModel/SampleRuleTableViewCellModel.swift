//
//  SampleRuleView.swift
//  RuleView
//
//  Created by Bimal@AppStation on 10/11/22.
//

import Foundation


enum SampleRuleViewCellType {
    case ruleCell
   
}

class SampleRuleViewTableViewCellModel: NSObject {
    var identifier: String = "rule.Cell"
    var cellType: SampleRuleViewCellType = .ruleCell
//    var date = Date()
    var ruleViewDetails:  SampleRule = SampleRule([:])
    
    init(strNumber: String, cellType: SampleRuleViewCellType) {
        self.cellType = cellType
        self.ruleViewDetails.rule = strNumber
        switch cellType {
        case .ruleCell:
            identifier = "rule.Cell"
        }
    }
    
    func setRuler() -> String {
        return ruleViewDetails.rule
    }
}
