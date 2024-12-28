//
//  UIViewController+Extension.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import UIKit

extension UIViewController {
    func showErrorAlert(error: String) {
        let errorAlert = UIAlertController(title: "Error", message: error, preferredStyle: .alert)
        let dismissAction = UIAlertAction(title: "Dismiss", style: .default)
        errorAlert.addAction(dismissAction)
        self.present(errorAlert, animated: true)
    }
}
