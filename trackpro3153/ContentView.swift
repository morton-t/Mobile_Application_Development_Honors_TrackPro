//
//  ContentView.swift
//  trackpro3153
//
//  Created by Thomas Morton on 2/2/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskCollection = TaskCollection()
    
    
//
#warning("Convert newTask into a function")
    @State var newTask: String = ""
    @State var taskObjectID = 0
    var addTaskTextField: some View {
        HStack {
            TextField("Enter a new task", text: self.$newTask)
        }
    }
    func addTask() {
        taskCollection.tasks.append(
            Task(objectID: taskObjectID, taskTitle: String(taskCollection.tasks.count + 1), taskDetails: newTask))
        self.taskObjectID += 1
        self.newTask = ""
    }
//
    
#warning("Delete currentDate placeholder variable")
    let currentDate: String = "Jan 00, 0000"
        
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
                    }.navigationTitle("Tasks for \(currentDate)")
                }
                //Aligns buttons and task entry to bottom of screen
                Spacer()
                VStack{
                    addTaskTextField.padding()
                }
                
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
                    Text("Mark Finished")
                        
                        
                        
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
