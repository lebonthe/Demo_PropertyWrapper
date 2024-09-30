//
//  ContentView.swift
//  Demo_PropertyWrapper
//
//  Created by Min Hu on 2024/9/30.
//

import SwiftUI

struct ContentView: View {
    @State var displayBool: Bool = true
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
                
            Button {
                displayBool = !displayBool
            } label: {
                Text("切換是/否")
            }
            
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
