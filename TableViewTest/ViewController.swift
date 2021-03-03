//
//  ViewController.swift
//  TableViewTest
//
//  Created by mamidisetty Vikash on 02/03/21.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var scrollVw: UIScrollView!
    //    private let myArray: NSArray = ["First","Second","Third"]
//       private var myTableView: UITableView!
    var images = [UIImage]()

       override func viewDidLoad() {
           super.viewDidLoad()
        images = [#imageLiteral(resourceName: "Unknown")]
        
        for i in 0..<images.count {
            let imageView = UIImageView()
            let x = self.view.frame.size.width * CGFloat(i)
            imageView.frame = CGRect(x: x, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            imageView.contentMode = .scaleAspectFit
            imageView.image = images[i]
                    
            scrollVw.contentSize.width = scrollVw.frame.size.width * CGFloat(i + 1)
            scrollVw.addSubview(imageView)
        }
//           let barHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
//           let displayWidth: CGFloat = self.view.frame.width
//           let displayHeight: CGFloat = self.view.frame.height
//
//           myTableView = UITableView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: displayHeight - barHeight))
//           myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
//           myTableView.dataSource = self
//           myTableView.delegate = self
//           self.view.addSubview(myTableView)
//       }
//
//       func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//           print("Num: \(indexPath.row)")
//           print("Value: \(myArray[indexPath.row])")
//       }
//
//       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//           return myArray.count
//       }
//
//       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//           let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath as IndexPath)
//           cell.textLabel!.text = "\(myArray[indexPath.row])"
//           return cell
       }

}

