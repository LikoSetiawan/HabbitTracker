//
//  Habbit.swift
//  HabbitTracker
//
//  Created by Liko Setiawan on 27/02/24.
//

import SwiftUI
import Observation

struct Habbit: Hashable, Codable, Identifiable, Equatable{
    var id = UUID()
    var title : String
    var description : String
    
}

@Observable
class Habbits{
    var activity = [Habbit](){
        didSet{
            if let encoded = try? JSONEncoder().encode(activity){
                UserDefaults.standard.set(encoded, forKey: "Activity")
            }
        }
    }
    
    init(){
        if let savedActivity = UserDefaults.standard.data(forKey: "Activity"){
            if let decodedActivity = try? JSONDecoder().decode([Habbit].self, from: savedActivity){
                activity = decodedActivity
                return
            }
        }
        activity = []
    }
}
