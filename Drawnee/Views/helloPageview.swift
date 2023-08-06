//
//  helloPageview.swift
//  Drawnee
//
//  Created by Eric Rojas Pech on 23/03/23.
//

import SwiftUI

struct helloPageview: View {
    @State private var showChooseObject = false
    
    var body: some View {
        VStack {
            Text("hello!\n   🙋🏻‍♂️")
                .font(.custom("Cocogoose Pro Semilight-trial", size: 60))
                .foregroundColor(.gray)
                .bold()
            
            Text("My name is Eric Rojas Pech, and I don’t have skills for draw ✍🏼")
                .font(.custom("Cocogoose Pro Semilight-trial", size: 38))
                .foregroundColor(.gray)
                .padding(.top,60)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 200)
                .padding(.bottom,25)

            
            Text("This app will help you to improve your skills for draw, choose an object that you wanna draw, and start to improve your skills!")
                .font(.custom("Cocogoose Pro Semilight-trial", size: 38))
                .foregroundColor(.gray)
                .padding(.top,70)
                .padding(.bottom,50)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 100)
                .padding(.bottom,25)
            
            Button {
                showChooseObject.toggle()
            } label: {
                Text("Ok")
                    .padding(.vertical,10)
                    .padding(.horizontal,20)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .ignoresSafeArea()

            }
            .fullScreenCover(isPresented: $showChooseObject) {
                chooseObject()
                    .transition(.move(edge: .leading))
            }
        }
    }
}


struct helloPageview_Previews: PreviewProvider {
    static var previews: some View {
        helloPageview()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
