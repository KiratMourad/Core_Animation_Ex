//
//  ContentView.swift
//  CoreAnimationExeample
//
//  Created by Mourad KIRAT on 18/02/2024.
//

import SwiftUI



struct ContentView: View {
    @State private var scale: CGFloat = 1.0
    @State private var image:String = "swiftui"

    var body: some View {
        Image(image)
         .resizable()
         .scaledToFit()
         .frame(width: 50.0, height: 50.0)
            .scaleEffect(scale)
            .gesture(
                TapGesture()
                    .onEnded { _ in
                        withAnimation(.easeInOut(duration: 1.0)) {
                            self.scale *= 1.5
                        }
                    }
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
