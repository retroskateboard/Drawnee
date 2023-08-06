//
//  canvasImageDraw.swift
//  Drawnee
//
//  Created by Eric Rojas Pech on 25/03/23.
//

import SwiftUI
import PencilKit

struct canvasImageDraw: View {
    @State private var canvasView = PKCanvasView()
    @State private var showResult = false

    var body: some View {
        ZStack {
            HStack {
                Image("line2")
                    .padding(.horizontal, 450)
                    .frame(width: 640)
                    .offset(x:240)
                
                CanvasViewRepresentable(canvasView: $canvasView)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.gray)
                    .padding(.horizontal, -90)
            }
            
            VStack {
                Image(systemName: "car.fill")
                    .font(.system(size: 320))
                    .frame(alignment: .center)
                    .offset(x: -320)
                    .offset(y: -10)
                
                Text("Record: 87.3%")
                    .font(.custom("Cocogoose Pro Italic-trial", size: 30))
                    .padding(.top, 40)
                    .padding(.bottom, -100)
                    .offset(x: -320)
                
                Button(action: {
                    showResult.toggle()
                }, label: {
                    Text("Finish")
                        .padding(.vertical, 10)
                        .padding(.horizontal, 20)
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(15)
                })
                .offset(y: 150)
                .offset(x: -320)
            }
        }
        .fullScreenCover(isPresented: $showResult) {
            chooseObject()
                .transition(.move(edge: .leading))
        }
        .padding()
    }
}



struct CanvasViewRepresentable: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvasView.drawingPolicy = .anyInput
        return canvasView
    }
    
  
    func updateUIView(_ uiView: PKCanvasView, context: Context) {}
}



struct canvasImageDraw_Previews: PreviewProvider {
    static var previews: some View {
        canvasImageDraw()
            .previewInterfaceOrientation(.landscapeRight)
    }
}
