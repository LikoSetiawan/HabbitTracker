//
//  AddActivityView.swift
//  HabbitTracker
//
//  Created by Liko Setiawan on 27/02/24.
//

import SwiftUI

struct AddActivityView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State private var activityName = ""
    @State private var description = ""
    
    var habbits : Habbits
    
    var body: some View {
        NavigationStack{
            Form{
                TextField("Activity Name", text: $activityName)
                
                TextField("Description", text: $description, axis: .vertical)
            }
            .navigationTitle("Add Activity")
            .toolbar{
                Button("Save"){
                    //
                    let save = Habbit(title: activityName, description: description)
                    habbits.activity.append(save)
                    dismiss()
                }
            }
        }
    }
}

#Preview {
    AddActivityView(habbits : Habbits())
}
