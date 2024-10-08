//
//  SwitchButton.swift
//  Demo_PropertyWrapper
//
//  Created by Min Hu on 2024/10/2.
//

import SwiftUI

struct SwitchButton: View {
    @ObservedObject var model: DataModel
    var body: some View {
        Button("切換是/否") {
            model.displayBool.toggle() // 改變 model 的 displayBool
            model.number += 1
        }
    }
}
