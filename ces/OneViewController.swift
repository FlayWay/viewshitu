
//
//  OneViewController.swift
//  ces
//
//  Created by ljkj on 2018/7/13.
//  Copyright © 2018年 ljkj. All rights reserved.
//

import UIKit

class OneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
        btn.backgroundColor = UIColor.red
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
        
        
        
    }
    
     @objc func btnClick() {
        
        NotificationCenter.default.post(name: NSNotification.Name("ce"), object: nil)

        self.navigationController?.popViewController(animated: true)

    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
