//
//  Homescreen.swift
//  MyStart
//
//  Created by Abduqaxxor on 28/1/22.
//

import SwiftUI

struct Homescreen: View {
    
    @State var showingAlert = false
    @State var isSheet: Bool = false
    
    var actionSheet: ActionSheet{
        let sheetTitle = "iOS"
        let sheetMessage = "Here we go?"
        return ActionSheet(title: Text(sheetTitle), message: Text(sheetMessage), buttons: [ .default(Text("OK") , action: {
        }), .destructive(Text("NO"), action: {
        })
                         ])
    }
    var body: some View {
        TabView{
            Button(action: {
                self.showingAlert = true
            }, label: {
                Text("Alert Dialog").font(.title)
            }).alert(isPresented: $showingAlert){
                let title = "iOS"
                let message = "Here we go?"
                return Alert(title: Text(title), message: Text(message), primaryButton: .destructive(Text("NO")), secondaryButton: .default(Text("OK")))
            }
                .tabItem({
                    Image(systemName: "circle")
                    Text("Alert")
                })
            Button(action: {
                self.isSheet = true
            }, label: {
                Text("Action Sheet").font(.title)
            }).actionSheet(isPresented: $isSheet, content: {
                self.actionSheet
            })
                .tabItem({
                    Image(systemName: "circle")
                    Text("Sheet")
                })
        }
    }
}

struct Homescreen_Previews: PreviewProvider {
    static var previews: some View {
        Homescreen()
    }
}
