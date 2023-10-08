//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Sanjay Singh on 30/06/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var q: String
    var a: [String]
    var correctAnswer: String
    
    init(q: String, a: [String], correctAnswer: String){
        self.q = q
        self.a = a
        self.correctAnswer = correctAnswer
    }
    
    func checkAnswer(inputAnswer: String) -> Bool {
        if inputAnswer == correctAnswer {
            return true
        }
        return false
    }
}
