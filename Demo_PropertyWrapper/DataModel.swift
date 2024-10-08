//
//  DataModel.swift
//  Demo_PropertyWrapper
//
//  Created by Min Hu on 2024/10/7.
//

import Foundation

class DataModel: ObservableObject {
    @Published var number: Int = 0
    @Published var displayBool: Bool = true
}
