//
//  FlatView.swift
//  Stylesheet
//
//  Created by Artem Kutasevich on 7.04.22.
//

import SwiftUI

struct FlatView: View {
    let color = Color(red: 239/255, green: 242/255, blue: 249/255)
    let size: CGFloat = 80
    
    @State var toggle = true
    @State var slider = 0.5
    @State var picker = ["first", "second", "third"]
    
    var body: some View {
        ZStack {
            color
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                HStack {
                    Button(action: {}) {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: size, height: size)
                            .padding()
                            .foregroundColor(color)
                            .background(.black)
                            .cornerRadius(size / 4)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .frame(width: size, height: size)
                            .padding()
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: size / 4)
                                    .strokeBorder(.black, lineWidth: 3)
                            )
                            .background(color)
                            .cornerRadius(size / 4)
                    }
                }
                
                Toggle("", isOn: $toggle)
                    .tint(.black)
                
                Slider(value: $slider)
                    .tint(.black)
            }
            .padding()
        }
    }
}

struct FlatView_Previews: PreviewProvider {
    static var previews: some View {
        FlatView()
    }
}
