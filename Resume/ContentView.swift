//
//  ContentView.swift
//  Resume
//
//  Created by Larissa Nogueira da Rocha on 14/3/2024.
//

import SwiftUI
import SwiftData

extension Color {
    init(hex: String, alpha: Double = 1.0){
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexString = hexString.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb)
        let red = Double((rgb >> 16) & 0xff) / 255.0
        let green = Double((rgb >> 8) & 0xff) / 255.0
        let blue = Double(rgb & 0xff) / 255.0
        self.init(.sRGB , red: red, green: green, blue: blue, opacity: alpha)
    }
}

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            HStack{
                Image("LariProfile")
                    .resizable()
                    .frame(width: 90, height: 90)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                
                VStack{
                    Text("Larissa Rocha")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color(hex: "78290F"))
                        .padding(.top)
                    Text("Tech enthusiast")
                        .foregroundStyle(.secondary)
                }
            }
            Spacer()
            Group {
                Text("Skills")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(Color(hex: "ff7d00"))
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(height: 1)
                    .padding(.bottom)
                HStack {
                    Text("App Developer")
                        .bold()
                        .font(.title3)
                        .foregroundColor(Color(hex: "78290F"))
                    Spacer()
                }
                Text("Swift & Flutter")
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
                
            }
            
            
            Group {
                Text("Work Experience")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(Color(hex: "ff7d00"))
                Rectangle()
                    .foregroundColor(Color(hex: "ff7d00"))
                    .frame(height: 1)
                    .padding(.bottom)
                HStack {
                    Text("LIBERTY Steel Group")
                        .bold()
                        .font(.title3)
                        .foregroundColor(Color(hex: "78290F"))
                    Spacer()
                    Text("2023 - Present")
                }
                Text("Safety Specialist")
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
                
                HStack{
                    Text("FPF Tech")
                        .bold()
                        .font(.title3)
                        .foregroundColor(Color(hex: "78290F"))
                    Spacer()
                    Text("2021 - 2022")
                }
                Text("Software Developer")
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
                
            }
            
            
            Spacer()
            Group {
                
                Text("Education")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color(hex: "ff7d00"))
                Rectangle()
                    .foregroundColor(Color(hex: "ff7d00"))
                    .frame(height: 1)
                    .padding(.bottom)
                
                HStack{
                    Text("Bachelor's Degree")
                        .bold()
                        .font(.title3)
                        .foregroundColor(Color(hex: "78290F"))
                    Spacer()
                    Text("2009 - 2014")
                }
                Text("Uninorte - Laureate International")
                Text("Environmental Engineering")
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
                HStack{
                    Text("Posgraduate Degree")
                        .bold()
                        .font(.title3)
                        .foregroundColor(Color(hex: "78290F"))
                    Spacer()
                    Text("2015 - 2016")
                }
                Text("Uninorte - Laureate International")
                
                Text("Safety Engineering")
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
                
            }
            Spacer()
            Group {
                Text("Interest")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundColor(Color(hex: "ff7d00"))
                Rectangle()
                    .foregroundColor(Color(hex: "ff7d00"))
                    .frame(height: 1)
                    .padding(.bottom)
            }
            
            HStack(content: {
                Spacer()
                VStack(content: {
                    Text("📚")
                        .font(.system(size: 70))
                    Text("Reading books")
                        .bold()
                        .foregroundColor(Color(hex: "78290F"))
                })
                Spacer()
                VStack(content: {
                    Text("👩🏻‍💻")
                        .font(.system(size: 70))
                    Text("Coding")
                        .bold()
                        .foregroundColor(Color(hex: "78290F"))
                })
                Spacer()
                VStack(content: {
                    Text("🛫")
                        .font(.system(size: 70))
                    Text("Traveling")
                        .bold()
                        .foregroundColor(Color(hex: "78290F"))
                })
                Spacer()
            })
            
        }
        
        .padding()
        .background(Color(hex: "FFECD1"))
    }
    
    
}

#Preview {
    ContentView()
    
}
