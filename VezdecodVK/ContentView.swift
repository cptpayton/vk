//
//  ContentView.swift
//  VezdecodVK
//
//  Created by Денис Котов on 11.09.2020.
//  Copyright © 2020 WeYoy. All rights reserved.
//

import SwiftUI
struct ChanelView: View {
    
    
    var body: some View{
        NavigationView{
            
            VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.9607843160629272, green: 0.9607843160629272, blue: 0.9607843160629272, alpha: 1)))
                    
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.07999999821186066)), lineWidth: 0.33000001311302185)
                    NavigationLink(destination: TargetView(), label: {
                        Text("Целевой сбор")}).accentColor(Color.init(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    
                    
                    
                }
                    
                .frame(width: 351, height: 62)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 0.9607843160629272, green: 0.9607843160629272, blue: 0.9607843160629272, alpha: 1)))
                    
                    RoundedRectangle(cornerRadius: 10)
                        .strokeBorder(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.07999999821186066)), lineWidth: 0.33000001311302185)
                    NavigationLink(destination: RegularView(), label: {
                        Text("Регулярный сбор")}).accentColor(Color.init(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                    
                }
                .frame(width: 351, height: 62)
            }.padding(20)
            
        }
            
        .navigationBarTitle(Text("Тип Сбора"), displayMode: .inline)
        
        
    }
}



struct ContentView: View {
    var body: some View {
        NavigationView{
          
            
            GeometryReader{ geometry in
                VStack{
                    
                    
                    Text("У Вас пока нет сборов.\nНачните доброе дело.").font(.system(size: 16, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.51, green: 0.55, blue: 0.6, alpha: 1))).tracking(-0.32).multilineTextAlignment(.center)
                    NavigationLink(destination: ChanelView(), label: {
                        Text("Создать сбор")}).frame(width: geometry.size.width / 2 - 10, height: 50).accentColor(Color.init(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).background(Color.init(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))).cornerRadius(10).padding(40)
                }.frame(width: 420, height: 900)
            }
                
            .navigationBarTitle(Text("Пожертвования"), displayMode: .inline)
            
        
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
