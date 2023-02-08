//
//  TaskData.swift
//  trackpro3153
//
//  Created by Thomas Morton on 2/8/23.
//

import Foundation
import SwiftUI
import Combine

struct Task: Identifiable {
    var id: ObjectIdentifier // Suggested to add to fix error - what?
    
    var taskTitle = String()
    var taskDetails = String()
}

class TaskCollection : ObservableObject {
    @Published var tasks = [Task]()
}
