//
//  playerRow.swift
//  NBA Players
//
//  Created by Sarowar H. Mishkat on 27/2/20.
//  Copyright © 2020 Sarowar H. Mishkat. All rights reserved.
//

import SwiftUI

struct playerRow: View {
    
    var player: Player
    
    var body: some View {
        
        HStack{
            Image(player.imageName)
                .resizable().aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .background(Circle())
                .foregroundColor(player.team.color)
                
                
            Text(player.name)
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct playerRow_Previews: PreviewProvider {
    static var previews: some View {
        playerRow(player: players[0])
            .previewLayout(.fixed(width: 500, height: 100))
    }
}
