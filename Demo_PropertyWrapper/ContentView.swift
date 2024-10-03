//
//  ContentView.swift
//  Demo_PropertyWrapper
//
//  Created by Min Hu on 2024/9/30.
//

import SwiftUI

struct ContentView: View {
    @State var displayBool: Bool = true // parent view 管理的狀態
    var body: some View {
        VStack(spacing: 20) {
            
            if displayBool {
                Image(systemName: "checkmark")
                    .foregroundStyle(.black)
                Text("是")
            } else {
                Image(systemName: "x.circle")
                    .foregroundStyle(.red)
                Text("否")
            }
                
            SwitchButton(displayBool: $displayBool) // 將狀態傳遞給 child view
            
        }
        .font(.largeTitle)
        .imageScale(.large)
        .buttonBorderShape(.capsule)
        .buttonStyle(.borderedProminent)
        .padding()
    }
        
}

#Preview {
    ContentView()
}
