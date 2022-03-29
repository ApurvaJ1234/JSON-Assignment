//
//  ViewController.swift
//  JSON Assignment
//
//  Created by coditas on 29/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func fetchData(completion: @escaping ([String:Any]?, Error?) -> Void) {
        let url = URL(string: "https://api.github.com/search/users?q=")!

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            do {
                if let array = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String:Any]{
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}

