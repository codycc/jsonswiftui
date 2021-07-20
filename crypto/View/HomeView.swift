//
//  HomeView.swift
//  crypto
//
//  Created by Cody Condon on 2021-07-19.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = CharacterViewModel()
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.characters) { character in
                    CharacterCell(character: character)
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
