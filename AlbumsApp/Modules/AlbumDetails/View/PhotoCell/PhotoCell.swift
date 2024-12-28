//
//  PhotoCell.swift
//  AlbumsApp
//
//  Created by Engy on 28/12/2024.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoImageView.clean()
    }
    
    func config(photoPath: String) {
        photoImageView.setImage(urlString: photoPath)
    }
    
}
