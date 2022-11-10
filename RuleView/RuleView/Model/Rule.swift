//
//  Rule.swift
//  RuleView
//
//  Created by Bimal@AppStation on 10/11/22.
//

import Foundation

class Rule {
    
    var rule: String = ""
   
    init(_ dict: [String: Any]) {
        self.rule = dict["rule"] as? String ?? ""
    }
}
