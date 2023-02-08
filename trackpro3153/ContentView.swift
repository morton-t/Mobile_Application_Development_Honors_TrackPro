//
//  ContentView.swift
//  trackpro3153
//
//  Created by Thomas Morton on 2/2/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskCollection = TaskCollection()
    var body: some View {
        NavigationView{
            VStack {
                VStack {
//
                    Text("Demo Text")
#warning("This text should be deleted after demo")
//
                    List(self.taskCollection.tasks) { task in
                        Text(task.taskTitle)
                    }
                }
                
                Spacer() //Aligns buttons to bottom of screen
                HStack(spacing: 44) {   //Spacing separates horizontal view
                    
                    Button (role: .none){ //Role may provide actions
#warning("Button action required here!")
                    }
                    
                label: {
                    Text("Add Task")
                }
                    //Set Button display characteristics
                .frame(width:72, height:72)
                .foregroundColor(Color.white)
                .background(Color.black)
                .clipShape(Circle())
                    
                    Button {
#warning("Button action required here!")
                    }
                label: {
                    Text("Mark Complete")
                }
                    //Set Button display characteristics
                .frame(width:72, height:72)
                .foregroundColor(Color.white)
                .background(Color.black)
                .clipShape(Circle())
                    
                    Button {
#warning("Button action required here!")
                    }
                label: {
                    Text("Delete Task")
                }
                    //Set Button display characteristics
                .frame(width:72, height:72)
                .foregroundColor(Color.white)
                .background(Color.black)
                .clipShape(Circle())
                }
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
