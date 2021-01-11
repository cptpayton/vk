//
//  ContenttView.swift
//  VezdecodVK
//
//  Created by Денис Котов on 12.09.2020.
//  Copyright © 2020 WeYoy. All rights reserved.
//

import SwiftUI


struct OpenGallary: UIViewControllerRepresentable {
    
    let isShown: Binding<Bool>
    let image: Binding<Image?>
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        
        let isShown: Binding<Bool>
        let image: Binding<Image?>
        
        init(isShown: Binding<Bool>, image: Binding<Image?>) {
            self.isShown = isShown
            self.image = image
        }
        
        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            self.image.wrappedValue = Image(uiImage: uiImage)
            self.isShown.wrappedValue = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            isShown.wrappedValue = false
        }
        
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShown: isShown, image: image)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<OpenGallary>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<OpenGallary>) {
        
    }
}


struct ContenttView: View {
    @State var showImagePicker: Bool = false
    @State var image: Image?
    
    var body: some View {
        Text("22")
    }
}

struct ContenttView_Previews: PreviewProvider {
    static var previews: some View {
        ContenttView()
    }
}
