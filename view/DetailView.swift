//
//  DetailView.swift
//  HabbitTracker
//
//  Created by Liko Setiawan on 04/03/24.
//

import SwiftUI

struct DetailView: View {
    
    let activity : Habbit
    @State private var habbits = Habbits()
    
    @State private var completionCount = 0
    

    var body: some View {
        NavigationStack{
            VStack{
                Text(activity.description)
                Text("Completion Count : \(completionCount)")
                
            }
            .navigationTitle(activity.title)
        }
    }
//    
//    func incrementCompletion() {
//           // Increment completion count
//           completionCount += 1
//
//           // Copy the activity and update its completion count
//           var updatedActivity = activity
//           updatedActivity.completionCount += 1
//
//           // Update the @State variable to reflect changes in UI
//           activity = updatedActivity
//       }
}

#Preview {
    let sampleHabbit = Habbit(id: UUID(), title: "Sample Title", description: "Sample Description", completionCount: 0)
    return DetailView(activity: sampleHabbit)
}
