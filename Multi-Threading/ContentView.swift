//
//  ContentView.swift
//  Multi-Threading
//
//  Created by Noye Samuel on 30/01/2023.
//

import SwiftUI

class  BackgroundThreadViewModel: ObservableObject {
    @Published var dataArray: [String] = []
}

struct ContentView: View {
    @StateObject var vm = BackgroundThreadViewModel()
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("LOAD DATA")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                ForEach(vm.dataArray, id: \.self){item in
                    Text(item)
                    
                }
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
