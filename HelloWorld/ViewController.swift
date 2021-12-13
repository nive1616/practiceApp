//
//  ViewController.swift
//  HelloWorld
//
//  Created by Nivedita Chellam on 10/14/21.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
           super.viewDidLoad()

           let ghost = CustomButton()
           ghost.setTitle("👻", for: .normal)
           ghost.backgroundColor = .orange
           ghost.titleLabel?.font =  UIFont(name: "Helvetica", size: 40)
           ghost.translatesAutoresizingMaskIntoConstraints = false
           ghost.frame.origin = CGPoint(x: 5, y: 100)
           //print(ghost.myValue) // prints 0
        
           let wink = CustomButton()
           wink.setTitle("😉", for: .normal)
           wink.backgroundColor = .yellow
           wink.titleLabel?.font =  UIFont(name: "Helvetica", size: 40)
           wink.translatesAutoresizingMaskIntoConstraints = false
           wink.frame.origin = CGPoint(x:5, y: 250)
        
        
           let angel = CustomButton()
           angel.setTitle("😇", for: .normal)
           angel.backgroundColor = .red
           angel.titleLabel?.font =  UIFont(name: "Helvetica", size: 40)
           angel.translatesAutoresizingMaskIntoConstraints = false
           angel.frame.origin = CGPoint(x: 5, y: 400)
        
           let crazy = CustomButton()
           crazy.setTitle("🤪", for: .normal)
           crazy.backgroundColor = .brown
           crazy.titleLabel?.font =  UIFont(name: "Helvetica", size: 40)
           crazy.translatesAutoresizingMaskIntoConstraints = false
           crazy.frame.origin = CGPoint(x:5, y: 550)
        
           view.addSubview(ghost)
           view.addSubview(wink)
           view.addSubview(angel)
           view.addSubview(crazy)
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

