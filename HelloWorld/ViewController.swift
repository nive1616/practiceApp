//
//  ViewController.swift
//  HelloWorld
//
//  Created by Nivedita Chellam on 10/14/21.
//

import UIKit

class ViewController: UIViewController {

    let ghost = CustomButton()
    let wink = CustomButton()
    let angel = CustomButton()
    let crazy = CustomButton()
    
    
    override func viewDidLoad() {
           super.viewDidLoad()

           ghost.setTitle("👻", for: .normal)
           ghost.backgroundColor = .orange
           ghost.titleLabel?.font =  UIFont(name: "Helvetica", size: 40)
           ghost.translatesAutoresizingMaskIntoConstraints = false
           ghost.frame.origin = CGPoint(x: 5, y: 100)
           ghost.addTarget(self, action: #selector(ghostButtonTapped), for: .touchUpInside)
           //print(ghost.myValue) // prints 0
        
           wink.setTitle("😉", for: .normal)
           wink.backgroundColor = .yellow
           wink.titleLabel?.font =  UIFont(name: "Helvetica", size: 40)
           wink.translatesAutoresizingMaskIntoConstraints = false
           wink.frame.origin = CGPoint(x:5, y: 250)
           wink.addTarget(self, action: #selector(winkButtonTapped), for: .touchUpInside)
        
           angel.setTitle("😇", for: .normal)
           angel.backgroundColor = .red
           angel.titleLabel?.font =  UIFont(name: "Helvetica", size: 40)
           angel.translatesAutoresizingMaskIntoConstraints = false
           angel.frame.origin = CGPoint(x: 5, y: 400)
           angel.addTarget(self, action: #selector(angelButtonTapped), for: .touchUpInside)

           crazy.setTitle("🤪", for: .normal)
           crazy.backgroundColor = .brown
           crazy.titleLabel?.font =  UIFont(name: "Helvetica", size: 40)
           crazy.translatesAutoresizingMaskIntoConstraints = false
           crazy.frame.origin = CGPoint(x:5, y: 550)
           crazy.addTarget(self, action: #selector(crazyButtonTapped), for: .touchUpInside)

        
           view.addSubview(ghost)
           view.addSubview(wink)
           view.addSubview(angel)
           view.addSubview(crazy)
            
           createStackView()
        
       }
        func createStackView() {
            let buttonArray:[CustomButton] = [ghost,wink,angel,crazy]
            let stackView = UIStackView(arrangedSubviews: buttonArray)
            stackView.axis = .vertical
            stackView.distribution = .fillEqually
            stackView.alignment = .fill
            stackView.spacing = 20
            view.addSubview(stackView)
            stackView.translatesAutoresizingMaskIntoConstraints = false
            stackView.topAnchor.constraint(equalTo: view.topAnchor,constant: 100.0).isActive = true
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor,constant: -100.0).isActive = true
            stackView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        }

        @objc fileprivate func ghostButtonTapped() {
            let alertController = UIAlertController(title: "Im a ghost,boo!", message: "", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
            present(alertController,animated: true,completion: nil)
        }
        
        @objc fileprivate func winkButtonTapped() {
            let alertController = UIAlertController(title: "Wink, wink!", message: "", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
            present(alertController,animated: true,completion: nil)
        }
        
        @objc fileprivate func angelButtonTapped() {
            let alertController = UIAlertController(title: "I'm an angellll", message: "", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
            present(alertController,animated: true,completion: nil)
        }
        
        @objc fileprivate func crazyButtonTapped() {
            let alertController = UIAlertController(title: "Yeah, I'm crazy.", message: "", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil));
            present(alertController,animated: true,completion: nil)
            
        }

}

