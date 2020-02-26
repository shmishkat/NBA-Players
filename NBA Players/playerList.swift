//
//  playerList.swift
//  NBA Players
//
//  Created by Sarowar H. Mishkat on 27/2/20.
//  Copyright © 2020 Sarowar H. Mishkat. All rights reserved.
//

import SwiftUI

struct playerList: View {
    
    var body: some View {
        
        NavigationView{
            List(players){
                
                currentPlayers in
                NavigationLink(destination: playerDetail(player: currentPlayers)){
                    
                    playerRow(player: currentPlayers)
                        .frame(height: 60)
                    
                }

            }.navigationBarTitle(Text("NBA Finals Players"))
        }
    }
}

struct playerList_Previews: PreviewProvider {
    static var previews: some View {
        playerList()
    }
}
