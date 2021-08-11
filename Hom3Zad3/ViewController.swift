//
//  ViewController.swift
//  Hom3Zad3
//
//  Created by  Yaroslav on 10.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    var knopkaCenter: UIButton = UIButton()
    
    var kub1: UIView = UIView()
    var kub2: UIView = UIView()
    var kub3: UIView = UIView()
    var kub4: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        knopkaCenter = UIButton(frame: CGRect(x: view.frame.maxX/2 - 50,
                                              y: view.frame.maxY/2 - 50,
                                              width: 100,
                                              height: 100))
        
        knopkaCenter.backgroundColor = .black
        //        добавляет нашу созданную вью в ту вью в которую мы хотим ее добавить, в данном случае во View
        view.addSubview(knopkaCenter)
        
        
        
        
        
        knopkaCenter.addTarget(self, action: #selector(newKnopkaCenter) , for: .touchUpInside)
        knopkaCenter.tag = 1
        
        view.addSubview(knopkaCenter)
        view.addSubview(kub1)
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { knopkaCenter.addTarget(self, action: #selector(newKnopkaCenter) , for: .touchUpInside)
//        knopkaCenter.tag = 1
//
//        view.addSubview(knopkaCenter)
//
//
//
//        view.addSubview(kub1)
//
//    }
    
    
    @objc func newKnopkaCenter(sender:UIButton) {
        
        kub1 = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.maxX/2, height: view.frame.maxY/2))
       
        
        
        kub2 = UIView(frame: CGRect(x: view.frame.maxX/2, y: view.frame.maxY/2, width: view.frame.maxX/2, height: view.frame.maxY/2))
        
        
        kub3 = UIView(frame: CGRect(x: view.frame.maxX/2, y: 0, width: view.frame.maxX/2, height: view.frame.maxY/2))
       
        
        kub4 = UIView(frame: CGRect(x: 0, y: view.frame.maxY/2, width: view.frame.maxX/2, height: view.frame.maxY/2))
    
      
        
        
        
        kub1.backgroundColor = .blue
        kub2.backgroundColor = .red
        kub3.backgroundColor = .green
        kub4.backgroundColor = .yellow
        
        
        
        view.addSubview(kub1)
        view.addSubview(kub2)
        view.addSubview(kub3)
        view.addSubview(kub4)
        
    }
    
    
    
    
}

