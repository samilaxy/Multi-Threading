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
        DispatchQueue.global(qos: .background).async { [self] in
            let newData = downloadData()
            
            print("check 1: \(Thread.isMainThread)")
            print("check 1: \(Thread.current)")
            
            DispatchQueue.main.async { [self] in
                dataArray = newData
                print("check 2: \(Thread.isMainThread)")
                print("check 2: \(Thread.current)")
            }
           
        }
      
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
