//
//  DetailViewController.swift
//  UniversityInYogyakrta
//
//  Created by Aji_sahputra on 01/11/20.
//

import UIKit

class DetailViewController: UIViewController {
  @IBOutlet weak var nameUniversity: UILabel!
  @IBOutlet weak var photoUniversity: UIImageView!
  @IBOutlet weak var descUniversity: UILabel!
  
  var university : University?
  
  override func viewDidLoad() {
        super.viewDidLoad()

    if let result = university {
      photoUniversity.image = result.photo
      nameUniversity.text = result.name
      descUniversity.text = result.description
    }
    }
}
