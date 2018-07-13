//
//  ViewController.swift
//  ces
//
//  Created by ljkj on 2018/7/5.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit
//import YYModel


class ViewController: UIViewController {

    
    var isChanged:Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "next", style: .plain, target: self, action: #selector(nextCLick))
        
        isChanged ? setUpCustomeView() : setUpUserInfoView()
        NotificationCenter.default.addObserver(self, selector: #selector(click), name: NSNotification.Name("ce"), object: nil)
        
    }
    
    func setUpCustomeView()  {
    
        let v = CustomView(frame: UIScreen.main.bounds)
        v.backgroundColor = UIColor.gray
        view.addSubview(v)
    }
    
    
    
    func setUpUserInfoView() {
        
        let v = UserInfoView(frame: UIScreen.main.bounds)
        v.backgroundColor = UIColor.brown
        view.addSubview(v)
    }
    
    @objc func click(){
        
        isChanged = !isChanged
        view = nil
        NotificationCenter.default.removeObserver(self)
    }
    
   @objc func nextCLick() {
    
        navigationController?.pushViewController(OneViewController(), animated: true)
    
    }

    
}


