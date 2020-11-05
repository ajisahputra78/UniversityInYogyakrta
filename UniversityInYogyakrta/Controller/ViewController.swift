//
//  ViewController.swift
//  UniversityInYogyakrta
//
//  Created by Aji_sahputra on 31/10/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
  
  //Initialization extension UITableViewDataSource
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return universities.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    if let cell = tableView.dequeueReusableCell(withIdentifier: "UniversityCell", for: indexPath) as? UniversityTableViewCell
    {
      let university = universities[indexPath.row]
      cell.nameUniversity.text = university.name
      cell.descUniversity.text = university.description
      cell.photoUniversity.image = university.photo
      cell.photoUniversity.layer.cornerRadius = cell.photoUniversity.frame.height / 2
      cell.photoUniversity.clipsToBounds = true
      return cell
    } else
      {
        return UITableViewCell()
      }
  }
  
  
  @IBOutlet weak var universityTableView: UITableView!
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    self.navigationItem.title = "Universitas IT Terbaik Di Yogyakarta"
    universityTableView.dataSource = self
    universityTableView.delegate = self
    universityTableView.register(UINib(nibName: "UniversityTableViewCell",bundle:nil),forCellReuseIdentifier: "UniversityCell")
  }
}


extension ViewController: UITableViewDelegate
{
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
  {
    let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
    detail.university = universities[indexPath.row]
    self.navigationController?.pushViewController(detail, animated: true)
  }
}


  
