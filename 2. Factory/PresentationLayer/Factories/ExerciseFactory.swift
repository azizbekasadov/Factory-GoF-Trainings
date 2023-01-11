//
//  ExerciseFactory.swift
//  2. Factory
//
//  Created by Azizbek Asadov on 11/01/23.
//

import Foundation

enum ExerciseType: CaseIterable {
    case jumpings, squads
}

// MARK: Creator
final class ExerciseFactory {
    // 1. Singleton (see the 1. Singleton repo)
    static let `default`: ExerciseFactory = ExerciseFactory()
    
    func createExercise(type: ExerciseType) -> Exercise {
        switch type {
        case .jumpings:
            return Jumping()
        case .squads:
            return Squads()
        }
    }
}
