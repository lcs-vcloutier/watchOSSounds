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
                
                
                if self.timer == nil {
                    self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        WKInterfaceDevice.current().play(.success)
                    }
                } else {
                    self.timer?.invalidate()
                    self.timer = nil
                }
                
                
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
