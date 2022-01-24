//
//  RatingTableViewCell.swift
//  RatingApp
//
//  Created by Shilpa on 24/01/22.
//

import UIKit

class RatingTableViewCell: UITableViewCell {
    
    @IBOutlet var starButtons: [UIButton]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state    }
}
    @IBAction func StarButtontapped(_ sender: UIButton) {
        print("Rated \(sender.tag) star.")
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
    
}
