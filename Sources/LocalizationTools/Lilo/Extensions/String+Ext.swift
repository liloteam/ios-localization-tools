//
//  File.swift
//  
//
//  Created by François Bonnin on 18/09/2024.
//

import Foundation

extension String {
    // .replacingOccurrencesAllCasses(of: "firefox", with: "lilo")
    func replacingOccurrencesAllCasses(of: String, with: String) -> String {
        let sources = [of.lowercased(), of.uppercased(), of.capitalized]
        let targets = [with.lowercased(), with.uppercased(), with.capitalized]
        var newString = self
        for (index, source) in sources.enumerated() {
            newString = newString.replacingOccurrences(of: source, with: targets[index])
        }
        print("DBG:Loc: new string: \(newString)")
        return newString
    }
}
