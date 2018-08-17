//
//  PageCell.swift
//  singleviewswipe
//
//  Created by Timothy Lee on 8/16/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(named: "page1")
        iv.clipsToBounds = true
        iv.backgroundColor = .yellow
        return iv
    }()
    
    let textView: UITextView = {
        let tv = UITextView()
        tv.text = "Sample"
        tv.isEditable = false
        return tv
    }()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .red
        addSubview(imageView)
        addSubview(textView)
        imageView.anchorToTop(topAnchor, left: leftAnchor, bottom: textView.topAnchor, right: rightAnchor)
        textView.anchorToTop(nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor)
        textView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
    }
}
