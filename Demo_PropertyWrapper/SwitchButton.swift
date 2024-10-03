//
//  SwitchButton.swift
//  Demo_PropertyWrapper
//
//  Created by Min Hu on 2024/10/2.
//

import SwiftUI

struct SwitchButton: View {
    @Binding var displayBool: Bool // child view 接收並操作 parentView 的狀態
    
    var body: some View {
        Button("切換是/否") {
            displayBool.toggle() // 修改狀態，parentView 也會更新
        }
    }
}
