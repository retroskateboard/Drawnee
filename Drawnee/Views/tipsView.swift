//
//  tipsView.swift
//  Drawnee
//
//  Created by Eric Rojas Pech on 24/03/23.
//

import SwiftUI

struct tipsView: View {
    var body: some View {
        VStack {
            Text("How to improve my skills? ✍🏼")
                .font(.custom("Cocogoose Pro Semilight-trial", size: 60))
                .foregroundColor(.gray)
                .padding(.top,-60)
                .padding(.bottom,40)
            
            Text("Tip 1:")
                .font(.custom("Cocogoose Pro Semilight-trial", size: 38))
                .foregroundColor(.gray)
                .padding(.top,60)
                .padding(.trailing,900)
            Text("Tip 2:")
                .font(.custom("Cocogoose Pro Semilight-trial", size: 38))
                .foregroundColor(.gray)
                .padding(.top,60)
                .padding(.trailing,900)

            Text("Tip 3:")
                .font(.custom("Cocogoose Pro Semilight-trial", size: 38))
                .foregroundColor(.gray)
                .padding(.top,60)
                .padding(.trailing,900)

         
            
            Button {
                
            } label: {
                Text("Menu")
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.top,100)
                    .padding(.bottom,-100)
                    .ignoresSafeArea()
                    .padding(.leading,800)
            }
            
        }    }
}

struct tipsView_Previews: PreviewProvider {
    static var previews: some View {
        tipsView()
            .previewInterfaceOrientation(.landscapeRight)

    }
}
