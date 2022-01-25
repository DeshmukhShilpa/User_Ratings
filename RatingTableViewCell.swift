//
//  RatingTableViewCell.swift
//  RatingApp
//
//  Created by Shilpa on 24/01/22.
//

import UIKit

class RatingTableViewCell: UITableViewCell {
    
    @IBOutlet var starButtons: [UIButton]!
    @IBOutlet var emailBtn: UIButton!

    @IBOutlet var emailheight: NSLayoutConstraint!
    @IBAction func StarButtontapped(_ sender: UIButton) {
        print("Rated \(sender.tag) star.")
        emailBtn.isHidden = false
        for button in starButtons {
            if button.tag <= sender.tag {
                
//                button.setBackgroundImage(UIImage.init(named: "red_star"), for: .normal)
                button.setImage(UIImage.init(named: "star2"), for: .normal)
            }
            else {
                button.setImage(UIImage.init(named: "star1"), for: .normal)
            }
        }
    }
    
    @IBAction func emailAction(_ sender: Any) {
        print("Send email")
    }
}
