//
//  chooseObject.swift
//  GridView
//
//  Created by Eric Rojas Pech on 23/03/23.
//

import SwiftUI

struct chooseObject: View {
    @State private var canvasImageDraw = false

    let emojis = ["🚙","☂️","🎮","🛰️","🎢","🌋","🛴","🚁","🛸","🗽","🚀", "🚜","🛩️","🚄", "🚢", "⛵️", "🕌","🏰"]
    let columns = [
        GridItem(.adaptive(minimum: 160)),
    ]
        
    var body: some View {
            
        VStack{
            Text("Choose your object to draw 👇")
                .font(.custom("Cocogoose Pro Semilight-trial", size: 60))
                .foregroundColor(.gray)
                .padding(.top,30)
                .padding(.bottom,50)
                
                LazyVGrid(columns: columns) {
                    ForEach(emojis, id: \.self) { emoji in
                        
                        Button {
                            canvasImageDraw.toggle()
                        } label: {
                        Text("\(emoji)")
                            .foregroundColor(.black)
                            .font(.system(size: 120))
                            .padding(.bottom)
                        }
                        .fullScreenCover(isPresented: $canvasImageDraw) {
                            Drawnee.canvasImageDraw()
                                .transition(.move(edge: .leading))
                        }
                        
                    }
                }
                .padding()
        }
    }
}

struct chooseObject_Previews: PreviewProvider {
    static var previews: some View {
        chooseObject()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
