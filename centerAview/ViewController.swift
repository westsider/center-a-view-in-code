//
//  ViewController.swift
//  centerAview
//
//  Created by Warren Hansen on 7/12/21.
//

import UIKit

class ViewController: UIViewController {

    let parentView = UIImageView(image: UIImage(named: "warren"))
    var childView = UIView();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createParrentView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
       
        let width = parentView.frame.width * 0.66
        let height = parentView.frame.height * 0.5
        
        let frame = CGRect(x: 0, y: 0, width: width, height: height)
        childView = DrawView(frame: frame)
        childView.backgroundColor = UIColor.clear
        childView.translatesAutoresizingMaskIntoConstraints = false
        parentView.addSubview(childView)
        childView.center = CGPoint(x: parentView.frame.size.width  / 2,
                                     y: parentView.frame.size.height / 2)
    }


    func createParrentView(){

        parentView.translatesAutoresizingMaskIntoConstraints = false
        parentView.contentMode = .scaleAspectFit
        view.addSubview(parentView);
        
        //Constraints
        NSLayoutConstraint.activate([
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: parentView.trailingAnchor, multiplier: 1),
            parentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            parentView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            parentView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
        ])
    }
}

