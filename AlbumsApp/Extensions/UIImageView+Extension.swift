//
//  UIImageView+Extension.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import UIKit
import Kingfisher

extension UIImageView {
    func setImage(urlString: String) {
        guard let url = URL(string: urlString) else {
            self.image = UIImage(named: Constants.loadingFail)
            return
        }
        self.kf.setImage(
            with: url,
            placeholder: UIImage(named: Constants.loadingImage),
            options: [.cacheOriginalImage]
        ) { result in
            if case .failure = result {
                self.image = UIImage(named: Constants.loadingFail)
            }
        }
    }
    
    func clean() {
        self.kf.cancelDownloadTask()
        self.image = nil
    }
}
