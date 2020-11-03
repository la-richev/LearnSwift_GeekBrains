//
//  ViewController.swift
//  Test1
//
//  Created by Dim Richev on 03.11.2020.
//

import UIKit

class ViewController: UIViewController {
    //override func viewDidLoad() {
    //    super.viewDidLoad()
    //    getImage.layer.cornerRadius = 10}
    
    @IBOutlet var avatar: UIImageView!
    
    @IBAction func getImage(_ sender: Any) {
        let url = URL(string: "https://picsum.photos/200")
        let data = try? Data(contentsOf: url!)
        let image = UIImage(data: data!)
        avatar.image = image
    }
}


/*@IBAction func getImage(_ sender: Any) {
    // https://picsum.photos/200
    let url = URL(string: "https://picsum.photos/200")
    URLSession.shared.downloadTask(with: url!) { localUrl, response, error in
        let data = try? Data(contentsOf: localUrl!)
        let image = UIImage(data: data!)
        DispatchQueue.main.async {
    //подключаем многопоточность
            self.avatar.image = image
        }
    }.resume()
}*/
