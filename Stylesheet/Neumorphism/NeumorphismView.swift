//
//  NeumorphismView.swift
//  Stylesheet
//
//  Created by Artem Kutasevich on 5.04.22.
//

import SwiftUI

struct NeumorphismView: View {
    let color = Color(red: 239/255, green: 242/255, blue: 249/255)
    let size: CGFloat = 100
    
    var body: some View {
        ZStack {
            color
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: size, height: size)
                        .padding()
                        .foregroundColor(color)
                        .overlay(
                            RoundedRectangle(cornerRadius: size / 4)
                                .stroke(color, lineWidth: 3)
                                .shadow(color: .gray, radius: 3, x: 3, y: 3)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: size / 4)
                                )
                                .shadow(color: .white, radius: 3, x: -3, y: -3)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: size / 4)
                                )
                        )
                        .background(color)
                        .cornerRadius(size / 4)
                }
                
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: size, height: size)
                        .padding()
                        .foregroundColor(color)
                        .background(color)
                        .cornerRadius(size / 4)
                        .shadow(color: .white, radius: 3, x: -3, y: -3)
                        .shadow(color: .gray, radius: 3, x: 3, y: 3)
                }
                
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: size, height: size)
                        .padding()
                        .foregroundColor(color)
                        .overlay(
                            RoundedRectangle(cornerRadius: size / 4)
                                .stroke(color, lineWidth: 1)
                                .shadow(color: .gray, radius: 3, x: 3, y: 3)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: size / 4)
                                )
                                .shadow(color: .white, radius: 3, x: -3, y: -3)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: size / 4)
                                )
                        )
                        .background(color)
                        .cornerRadius(size / 4)
                        .shadow(color: .white, radius: 3, x: -3, y: -3)
                        .shadow(color: .gray, radius: 3, x: 3, y: 3)
                }
            }
        }
    }
}

struct NeumorphismView_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismView()
    }
}
