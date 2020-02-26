//
//  statsText.swift
//  NBA Players
//
//  Created by Sarowar H. Mishkat on 27/2/20.
//  Copyright © 2020 Sarowar H. Mishkat. All rights reserved.
//

import SwiftUI

struct statsText: View {
    var statName: String
    var statValue: String
    
    var body: some View {
        
        HStack{
            
            Text(statName + ":")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .padding(.leading, 30)
                
            
            Text(statValue)
                .font(.system(size: 40))
                .fontWeight(.light)
                .padding(.trailing, 30)
            
            
            Spacer()
        }
    }
}

struct statsText_Previews: PreviewProvider {
    static var previews: some View {
        statsText(statName: "age", statValue: "24")
    }
}
