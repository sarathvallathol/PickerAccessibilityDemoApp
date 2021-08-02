//
//  MainViewController.swift
//  PickerAccessibilityDemoApp
//
//  Created by sarath V on 02/08/21.
//

import UIKit
import SafariServices


class MainViewController: UIViewController, SFSafariViewControllerDelegate {

    let urlString = "https://www.w3schools.com/tags/tryit.asp?filename=tryhtml_select"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func safariBrowserTapped(_ sender: UIButton) {
        guard let url = URL(string: urlString) else { return }
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }

    @IBAction func safariVcTapped(_ sender: UIButton) {
        guard let url = URL(string: urlString) else { return }
        let safariVC = SFSafariViewController(url: url)
        safariVC.delegate = self
        present(safariVC, animated: true, completion: nil)
    }

    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        controller.dismiss(animated: true, completion: nil)
    }
}
