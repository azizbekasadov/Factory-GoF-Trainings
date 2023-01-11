//
//  ViewController.swift
//  2. Factory
//
//  Created by Azizbek Asadov on 11/01/23.
//

import UIKit

final class ViewController: UIViewController {

    private var exercises: [Exercise] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ExerciseType.allCases.forEach { createExercise(type: $0) }
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        run()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        stop()
    }
    
    private func createExercise(type: ExerciseType) {
        let newExercise = ExerciseFactory.default.createExercise(type: type)
        exercises.append(newExercise)
    }
    
    private func run() {
        exercises.forEach { $0.start() }
    }
    
    private func stop() {
        exercises.forEach { $0.stop() }
    }
}

