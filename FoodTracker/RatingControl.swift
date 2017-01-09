//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Christian McMullin on 1/4/17.
//  Copyright © 2017 Christian McMullin. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {

    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
        
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        //create the button
        let button = UIButton()
        button.backgroundColor = .red
        // add Constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        // add button to stack
        addArrangedSubview(button)
    }

}
