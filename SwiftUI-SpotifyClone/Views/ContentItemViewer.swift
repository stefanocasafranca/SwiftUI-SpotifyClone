//
//  ContentItemViewer.swift
//  SwiftUI-SpotifyClone
//
//  Created by Stefano Casafranca Laos on 6/15/24.
//

import SwiftUI

struct ContentItemViewer: View {
    
    var topSpacerHeight:CGFloat = 400
    @State var playButtonOffset:CGFloat = 335
    
    var body: some View {
        ZStack{
            
            //Layer 0
            LinearGradient(gradient: Gradient(colors: [Color.init(red:61/255, green:189/255,blue:115/255), Color.black]
                                        
        ), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)

            //Layer 1
            VStack {
                Spacer ()   . frame(height: 50)
                Image ("CanserberoCover")
                    .resizable()
                    .frame(width:200 , height:200)
                Text ("Title")
                    .foregroundColor(.white)
                    .font(.system(size: 24, weight: .bold))
                Text ("SubTitle")
                    .foregroundColor(.init(red:0.5, green:0.5,blue:0.5))
                Spacer ()
                
            }
            
            //Layer 2
            ScrollView(){
                VStack (spacing:0){
                    HStack {
                        Spacer ()
                            .frame(height:topSpacerHeight)
                            .background(LinearGradient(gradient: Gradient(colors: [
                                Color.clear,
                                Color.clear,
                                Color.clear,
                                Color.clear,
                                Color.clear,
                                Color.clear,
                                Color.black
                            ]), startPoint: .top, endPoint: .bottom))
                    }
                    
                    VStack {
                        ForEach(0..<100) { indicator in
                            
                            HStack {
                                SongsButton()
                                Spacer ()
                            }
                            
                        }
                        
                    }.background(Color.black)
                    
                } .background(Color.clear)
            }
            //Layer 3
            VStack{
                Spacer ()
                    .frame(height: playButtonOffset)
                Text ("PLAY")
                    .foregroundColor(.white)
                    .frame(width: 240, height: 50)
                    .background(Color.init(red:30/255,green:215/255, blue:96/255))
                    .cornerRadius (25)
                    .font(.system(size:20, weight:.bold))
                Spacer()
            }
            
        }
    }
}

#Preview {
    ContentItemViewer()
}
