//
//  TokenCell.swift
//  crypto
//
//  Created by Cody Condon on 2021-07-19.
//

import SwiftUI

struct CharacterCell: View {
    let character: Character
    
    var body: some View {
        ZStack {
            HStack(alignment:.top) {
                Text(character.name)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding([.top,.leading], 3)
                Spacer()
                VStack(alignment:.trailing) {
                    Text(character.breedGroup ?? "no value")
                        .padding([.top,.trailing], 3)
                    Text(character.height?.metric ?? "no value")
                        .padding([.trailing,.bottom],3)
                }
            }
            .padding(.horizontal,10)
        }.background(
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.white)
                .shadow(color: .gray, radius: 2, x: 0, y: 0))
        .padding(.horizontal)
        
        
    }
}

struct CharacterCell_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCell(character: MOCK_CHARACTER[0] )
    }
}
