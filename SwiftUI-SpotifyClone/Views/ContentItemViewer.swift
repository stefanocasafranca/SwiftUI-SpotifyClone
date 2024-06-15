//
//  ContentItemViewer.swift
//  SwiftUI-SpotifyClone
//
//  Created by Stefano Casafranca Laos on 6/15/24.
//

import SwiftUI

struct ContentItemViewer: View {
    var body: some View {
        ZStack{
            VStack {
                Spacer ()   . frame(height: 50)
                Image (systemName: "music.note")
                Text ("Title")
                Text ("SubTitle")
                Spacer ()
                
            }
            
            ScrollView(){
                VStack (spacing:0){
                    HStack {
                        Spacer ()
                            .frame(height:200)
                            .background(Color.green.opacity(0.3))
                    }
                    
                    VStack {
                        ForEach(0..<100) { indicator in
                            
                            HStack {
                                Text("\(indicator)").foregroundColor(.white)
                                Spacer ()
                            }
                            
                        }
                        
                    }.background(Color.black.opacity(0.5))
                    
                } .background(Color.yellow.opacity(0.1))
            }
            
            
        }
    }
}

#Preview {
    ContentItemViewer()
}
