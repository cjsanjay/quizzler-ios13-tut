//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Sanjay Singh on 30/06/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
                Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
                Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")


    ]
    
    var quizIndex = 0
    var result = [Int:Bool]()
    var score = 0
    
    func getCurrentQuestion() -> String {
        return quiz[quizIndex].q
    }
    
    func getCurrentOptions() -> [String] {
        return quiz[quizIndex].a
    }
    
    func getCurrentProgress() -> Float {
        return Float(result.count)/Float(quiz.count)
    }
    
    func getCurrentScore() -> Int {
        return score
    }
    
    mutating func checkAnswer(inputAnswer: String) -> Bool {
        if (quiz[quizIndex].checkAnswer(inputAnswer: inputAnswer)) {
            result[quizIndex] = true
            score += 1
            return true
        } else {
            result[quizIndex] = false
            return false
        }
    }
    
    mutating func nextQuestion() {
        quizIndex += 1
        if quizIndex >= quiz.count {
            quizIndex = 0
            score = 0
            result = [Int:Bool]()
        }
    }
}
