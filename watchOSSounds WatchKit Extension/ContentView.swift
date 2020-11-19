//
//  ContentView.swift
//  watchOSSounds WatchKit Extension
//
//  Created by Cloutier, Vincent on 2020-11-19.
//

import SwiftUI

struct ContentView: View {
    @State var timer:Timer?
    var body: some View {
        VStack {
            Button(action:{
                nil
            }){
                Text(timer==nil ? "Start Sound" : "Stop Sound")
            }
            HStack{
                Text(timer==nil ? "Sound On" : "Sound Off")
                Image(systemName:"speaker")
            }.foregroundColor(timer==nil ? .red : .green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
