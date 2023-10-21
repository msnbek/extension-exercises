//
//  View.swift
//  Extensions
//
//  Created by Mahmut Senbek on 26.09.2023.
//

import Foundation
import UIKit

class ViewControllerView : UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemnented")
    }
    
    let label : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 24)
        label.font = UIFont(name: "HelveticaNeue-MediumItalic", size: 24)
        label.text = "You are yourself "
        return label
    }()
    
    let imageView : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "img1.jpg")
        
        return image
    }()
    
    let button : UIButton = {
       let button = UIButton()
        button.setTitle("Change", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        button.layer.cornerRadius = 4
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.5
        button.layer.shadowOffset = CGSize(width: 1, height: 1)
        return button
    }()
}

extension ViewController {
    func style() {
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        view.addSubview(setupView.label)
        view.addSubview(setupView.button)
        view.addSubview(setupView.imageView)
        setupView.button.translatesAutoresizingMaskIntoConstraints = false
        setupView.label.translatesAutoresizingMaskIntoConstraints = false
        setupView.imageView.translatesAutoresizingMaskIntoConstraints = false
        
        setupView.button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            // ------------------------------------------------------- //
            setupView.label.centerXAnchor.constraint(equalTo: view.centerXAnchor), 
            setupView.label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            // ------------------------------------------------------- //
            
            setupView.button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -(view.frame.size.width / 1.9)),
            setupView.button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            setupView.button.widthAnchor.constraint(equalToConstant: view.frame.size.width / 3),
            setupView.button.heightAnchor.constraint(equalToConstant: view.frame.size.width / 5),
            
            // ------------------------------------------------------- //
            
            setupView.imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            setupView.imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.size.width / 3),
            setupView.imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            setupView.imageView.heightAnchor.constraint(equalToConstant: view.frame.size.width / 2),
            
            
        ])
    }
}
