//
//  ContentView.swift
//  Demo_PropertyWrapper
//
//  Created by Min Hu on 2024/9/30.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = DataModel()
    var body: some View {
        VStack(spacing: 20) {
            
            if model.displayBool {
                Image(systemName: "checkmark")
                    .foregroundStyle(.black)
                Text("是")
            } else {
                Image(systemName: "x.circle")
                    .foregroundStyle(.red)
                Text("否")
            }
                
            SwitchButton(model: model)  // 將 model 傳遞給 SwitchButton
            Text("按了 \(model.number) 次")
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
