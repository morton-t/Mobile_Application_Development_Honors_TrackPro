//
//  TaskProperties.swift
//  trackpro3153
//
//  Created by Thomas Morton on 2/22/23.
//

import SwiftUI

struct taskData {
    @State var taskTitle: String = ""
}

struct TaskProperties: View {
    
    @State var taskTitle: String = ""
    
    
    var body: some View {
        VStack{
#warning("TextFields all ref the wrong struct!! Fix to ref TaskData!!")
            TextField("Task Name", text: self.$taskTitle)
                .padding([.top, .leading], 20.0)
            TextField("Task Description", text: self.$taskTitle)
                .padding([.top, .leading], 20.0)
            
            Spacer()
            
            
            HStack(spacing: 44) {   //Spacing separates horizontal view
                
                Group {
                    Button {
                    }
                    label: {
                        Text("Confirm")
                    }
                    .frame(width:72, height:72)
                    .foregroundColor(Color.black)
                    .background(Color(red: 0.3, green: 0.8,  blue: 0.3))
                    .clipShape(Circle())
                    
                    //Set Button display characteristics
                        
                        
                    Button {
        #warning("Button action required here!")
                    }
                    label: {
                        Text("Mark Finished")
                    }
                    //Set Button display characteristics
                    .frame(width:72, height:72)
                    .foregroundColor(Color.black)
                    .background(Color(red: 0.0, green: 0.7,  blue: 1))
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
                    .background(Color(red: 0.8, green: 0.0,  blue: 0.0))
                    .clipShape(Circle())
                    }
                }
        }
    }
}

struct TaskProperties_Previews: PreviewProvider {
    static var previews: some View {
        TaskProperties()
    }
}
