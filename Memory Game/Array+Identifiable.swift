//
//  Array+Identifiable.swift
//  Memory Game 
//
//  Created by Elena Rybina on 1/25/21.
//  Copyright © 2021 Elena Rybina. All rights reserved.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return 0 // TODO: bogus!
    }
}


