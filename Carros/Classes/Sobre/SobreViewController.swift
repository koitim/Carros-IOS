//
//  SobreViewController.swift
//  Carros
//
//  Created by user136953 on 11/5/19.
//  Copyright © 2019 koitim. All rights reserved.
//

import UIKit

let URL_SOBRE = "http://www.livroiphone.com.br/carros/sobre.htm"

class SobreViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet var webView: UIWebView!
    @IBOutlet var progress: UIActivityIndicatorView!
    
    // Chamado apenas na primeira vez
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Sobre"
        //self.webView.delegate = self
    }
    
    // Chamado sempre que a tela for mostrada
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.progress.startAnimating()
        let url = URL(string: URL_SOBRE)
        let request = URLRequest(url: url!)
        self.webView.loadRequest(request)    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        progress.stopAnimating()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
