//
//  MainView.swift
//  HabbitTracker
//
//  Created by Liko Setiawan on 27/02/24.
//

import SwiftUI

struct MainView: View {
    
    @State private var title = "Habbit Tracker"
    
    @State private var showModal = false
    
    @State private var habbits = Habbits()
    
    var body: some View {
        NavigationStack {
            List{
                
                ForEach(habbits.activity){ activity in
                    NavigationLink(value: activity){
                        Text(activity.title)
                    }
                    
                }
                .onDelete(perform: removeItems )
            }
            .navigationTitle($title)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                Button("Add Activity", systemImage: "plus"){
                    showModal = true
                    //
                }
            }
            .sheet(isPresented: $showModal ) {
                AddActivityView(habbits: habbits)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        habbits.activity.remove(atOffsets: offsets)
    }
}

#Preview {
    MainView()
}
