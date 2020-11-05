//
//  UniversityTableViewCell.swift
//  UniversityInYogyakrta
//
//  Created by Aji_sahputra on 31/10/20.
//

import UIKit

class UniversityTableViewCell: UITableViewCell {
  @IBOutlet weak var photoUniversity: UIImageView!
  @IBOutlet weak var nameUniversity: UILabel!
  @IBOutlet weak var descUniversity: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
    
}
