    //
    //  File.swift
    //  Multi-Threading
    //
    //  Created by Noye Samuel on 30/01/2023.
    //

import Foundation

class  BackgroundThreadViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    func fetchData(){
        
        let newData = downloadData()
        dataArray = newData
    }
    private  func downloadData() -> [String]{
        
        var data: [String] = []
        for x in 1..<100 {
            data.append("\(x)")
            print(data)
            
        }
        return data
    }
}
