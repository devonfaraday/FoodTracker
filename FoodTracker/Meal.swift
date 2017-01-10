//
//  Meal.swift
//  FoodTracker
//
//  Created by Christian McMullin on 1/10/17.
//  Copyright © 2017 Christian McMullin. All rights reserved.
//

import Foundation
import UIKit


class Meal {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // Initialization should fail if there is no name or if the rating is negative.
    
    
    
    //MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        
        guard !name.isEmpty else {
            
            return nil
            
        }
        guard (rating >= 0 && rating <= 5) else {
            return nil
        }
        
        self.name = name
        self.photo = photo
        self.rating = rating
        
    }
}







