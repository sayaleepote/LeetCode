//
//  WordFilter.swift
//  LeetCode
//
//  Created by Sayalee Pote on 01/05/21.
//

class WordFilter {
    
    let words: [String]

    init(_ words: [String]) {
        self.words = words
    }
    
    func f(_ prefix: String, _ suffix: String) -> Int {
        for index in stride(from: (words.count - 1), through: 0, by: -1)  {
            let word = words[index]
            if word.count == 1, word == prefix, word == suffix {
                return index
            } else if word.startsWith(prefix), word.endsWith(suffix) {
                return index
            }
        }
        return -1
    }
}

extension String {
    func startsWith(_ prefix: String) -> Bool {
        return self.prefix(prefix.count) == prefix
    }
    
    func endsWith(_ suffix: String) -> Bool {
        return self.suffix(suffix.count) == suffix
    }
}
