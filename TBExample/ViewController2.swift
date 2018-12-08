//
//  ViewController2.swift
//  TBExample
//
//  Created by TA Trung Thanh on 08/12/2018.
//  Copyright © 2018 TA Trung Thanh. All rights reserved.
//

import UIKit

class ViewController2 : UIViewController {
    private let l = UILabel()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        let icon = UIImage(named: "Rock")
        let tbi = UITabBarItem(title: "view 2", image: icon, tag: 2)
        self.tabBarItem = tbi
        self.title = "View 2" //used by the navigation controller
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view = UIView(frame: UIScreen.main.bounds)
        self.view.backgroundColor = UIColor.red
        l.text = "this is View 2"
        l.textColor = UIColor.white
        l.textAlignment = .center
        self.view.addSubview(l)
        self.drawInSize(UIScreen.main.bounds.size)
    }
    func drawInSize(_ size:CGSize) {
        l.frame = CGRect(x: 10.0, y: 100.0, width: size.width - 20, height: 20.0)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        self.drawInSize(size)
    }
}
