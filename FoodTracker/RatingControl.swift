//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Christian McMullin on 1/4/17.
//  Copyright © 2017 Christian McMullin. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //MARK: Properties
    
    private var ratingButtons = [UIButton]()
    
    var rating = 0

    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
        
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    
    func ratingButtonTapped(button: UIButton) {
        print("button pressed!")
    }
    
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        for _ in 0..<5 {
    
            //create the button
            let button = UIButton()
            button.backgroundColor = .red
            
            // add Constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // setup the button action
            
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // add button to stack
            addArrangedSubview(button)
            
            // add the new button to the rating button array
            
            ratingButtons.append(button)
            
        }
    }

}
