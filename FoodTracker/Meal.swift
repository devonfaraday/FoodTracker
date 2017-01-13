//
//  Meal.swift
//  FoodTracker
//
//  Created by Christian McMullin on 1/10/17.
//  Copyright © 2017 Christian McMullin. All rights reserved.
//

import Foundation
import UIKit
import os.log


class Meal: NSObject, NSCoding {
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // Initialization should fail if there is no name or if the rating is negative.
    
    //MARK: Types
    
    struct propertyKey {
        static let name = "name"
        static let photo = "photo"
        static let rating = "rating"
    }
    
    
    
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
    //MARK: NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: propertyKey.name)
        aCoder.encode(photo, forKey: propertyKey.photo)
        aCoder.encode(rating, forKey: propertyKey.rating)
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        // The name is required. If we cannot decode a name string, the initializer should fail.
        guard let name = aDecoder.decodeObject(forKey: propertyKey.name) as? String else {
            os_log("Unable to decode the name for a Meal object.", log: OSLog.default, type: .debug)
            return nil
        }
    }
}







