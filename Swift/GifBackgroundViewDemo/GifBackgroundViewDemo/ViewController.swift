//
//  ViewController.swift
//  GifBackgroundViewDemo
//
//  Created by Vincent on 4/25/17.
//  Copyright © 2017 zssr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // override
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadHTML()
    }
    
    private func loadHTML() {
        let path = Bundle.main.path(forResource: "background", ofType: "html")
        let url = URL(fileURLWithPath: path!)
        let data = try? Data(contentsOf: url)
        print(path!)
        webView.load(data!, mimeType: "text/html", textEncodingName: "utf-8", baseURL: url.deletingLastPathComponent())
    }
    
    @IBOutlet weak var webView: UIWebView!
}

