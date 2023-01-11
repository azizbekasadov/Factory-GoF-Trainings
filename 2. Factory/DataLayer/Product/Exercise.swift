//
//  Exercise.swift
//  2. Factory
//
//  Created by Azizbek Asadov on 11/01/23.
//

import Foundation

protocol ExerciseBehavior {
    func start()
    func stop()
}

// MARK: - PRODUCT (see the `Structure` in the README)
protocol Exercise: ExerciseBehavior {
    var name: String { get }
    var type: String { get }
}
