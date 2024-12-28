//
//  UICollectionView+Extension.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import UIKit

extension UICollectionView {
    func showEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: bounds)
        messageLabel.text = message
        messageLabel.textColor = .secondaryLabel
        messageLabel.textAlignment = .center
        messageLabel.font = .systemFont(ofSize: 16)
        messageLabel.numberOfLines = 0
        backgroundView = messageLabel
    }

    func clean() {
        backgroundView = nil
    }
}
