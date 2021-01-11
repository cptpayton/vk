//
//  RegularView.swift
//  VezdecodVK
//
//  Created by Денис Котов on 11.09.2020.
//  Copyright © 2020 WeYoy. All rights reserved.
//

import SwiftUI


struct RegularView: View {
    @State var username1: String = ""
    @State var username2: String = "₽"
    @State var username3: String = ""
    @State var username4: String = ""
    @State var username5: String = "Счёт VK Pay · 1234"
    @State var showImagePicker: Bool = false
    @State var image: Image?
    var body: some View {
        
        NavigationView{
            
            VStack(alignment: .leading) {
                Button(action: {
                    withAnimation {
                        self.showImagePicker.toggle()
                    }
                }) {
                    Text("Загрузить обложку").font(.system(size: 16, weight: .medium)).foregroundColor(Color(#colorLiteral(red: 0.25, green: 0.54, blue: 0.88, alpha: 1))).tracking(-0.32)
                }
                image?.frame(width: 10, height: 10)
                
                if (showImagePicker) {
                    OpenGallary(isShown: $showImagePicker, image: $image)
                }
                Group{
                    
                    Text("Название сбора").font(.system(size: 14, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.43, green: 0.47, blue: 0.52, alpha: 1))).tracking(-0.15)
                    TextField("Название сбора", text: self.$username1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Сумма, ₽").font(.system(size: 14, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.43, green: 0.47, blue: 0.52, alpha: 1))).tracking(-0.15)
                    TextField("Сколько нужно собрать?", text: self.$username2).keyboardType(.numberPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Цель").font(.system(size: 14, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.43, green: 0.47, blue: 0.52, alpha: 1))).tracking(-0.15)
                    TextField("Например, лечение человека", text: self.$username3)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Описание").font(.system(size: 14, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.43, green: 0.47, blue: 0.52, alpha: 1))).tracking(-0.15)
                    TextField("На что пойдут деньги и как они кому-то помогут?", text: self.$username4)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Куда получать деньги").font(.system(size: 14, weight: .regular)).foregroundColor(Color(#colorLiteral(red: 0.43, green: 0.47, blue: 0.52, alpha: 1))).tracking(-0.15)
                    TextField("Enter username...", text: self.$username5)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                GeometryReader{ geometry in
                    NavigationLink(destination: ChanelView(), label: {
                        Text("Создать сбор")}).frame(width: geometry.size.width / 2 - 10, height: 50).accentColor(Color.init(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).background(Color.init(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))).cornerRadius(10).padding(40)}
            }
            
            
            
        }.padding()
            .navigationBarTitle(Text("Пожертвования"), displayMode: .inline).padding(25)
    }
    
    
    
}



struct RegularView_Previews: PreviewProvider {
    static var previews: some View {
        RegularView()
    }
}
