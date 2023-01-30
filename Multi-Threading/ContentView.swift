//
//  ContentView.swift
//  Multi-Threading
//
//  Created by Noye Samuel on 30/01/2023.
//

import SwiftUI



struct ContentView: View {
    @StateObject var vm = BackgroundThreadViewModel()
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 10){
                Text("LOAD DATA")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .onTapGesture {
                        vm.fetchData()
                    }
                ForEach(vm.dataArray, id: \.self){ item in
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
