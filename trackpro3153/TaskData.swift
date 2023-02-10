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
    var id: Int { objectID } // Suggested to add to fix error - what?
    var objectID: Int = 0
    var taskTitle: String = String()
    var taskDetails: String = String()
}

class TaskCollection : ObservableObject {
    @Published var tasks = [Task]()
}
