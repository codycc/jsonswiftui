//
//  TokenViewModel.swift
//  crypto
//
//  Created by Cody Condon on 2021-07-19.
//

import SwiftUI

let baseURL = "https://api.thedogapi.com/v1/breeds"

class CharacterViewModel: ObservableObject {
    @Published var characters = [Character]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = URL(string: baseURL) else { return }
        
        URLSession.shared.dataTask(with: url) { data, res, error in
            do {
                if let data = data {
                    print(data)
                    let result = try JSONDecoder().decode([Character].self, from : data)
                    
                    DispatchQueue.main.async {
                        self.characters = result
                    }
                }
            } catch (let error) {
                print(error)
            }
        }.resume()
    }
}
