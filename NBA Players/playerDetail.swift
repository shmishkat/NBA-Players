//
//  ContentView.swift
//  NBA Players
//
//  Created by Sarowar H. Mishkat on 26/2/20.
//  Copyright © 2020 Sarowar H. Mishkat. All rights reserved.
//

import SwiftUI

struct playerDetail: View{
    var player: Player
    var body: some View {
        VStack{
            Image(player.team.imageName)
                .resizable().aspectRatio(contentMode: .fit)
                
            
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(Color.white,lineWidth: 4))
                .offset(y: -90)
                .padding(.bottom, -90)
                .shadow(radius: 15)
            
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.heavy)
                .lineLimit(1)
                .padding(.horizontal)
                .minimumScaleFactor(0.5)
            
            statsText(statName: "Age", statValue: "\(player.age)")
            statsText(statName: "Height", statValue: player.height)
            statsText(statName: "Weight", statValue: "\(player.weight)lbs")
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //playerDetail(player: players[2]).previewLayout(.sizeThatFits)
        Group{
            playerDetail(player: players[2])
                .environment(\.sizeCategory, .extraExtraExtraLarge)
                .previewDevice("iPhone SE")
            
            playerDetail(player: players[2])
                .environment(\.sizeCategory, .extraSmall)
                .previewDevice("iPhone SE")
            
            playerDetail(player: players[2])
                .environment(\.sizeCategory, .extraExtraExtraLarge)
                .previewDevice("iPhone 11 Max Pro")
            
            playerDetail(player: players[2])
                .environment(\.sizeCategory, .extraSmall)
                .previewDevice("iPhone 11 Max Pro")        }
        
    }
}
