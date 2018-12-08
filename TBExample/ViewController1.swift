import UIKit

class ViewController1 : UIViewController {
    private let l = UILabel()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        let tbi = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
        self.tabBarItem = tbi
        self.title = "View 1" //used by the navigation controller
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view = UIView(frame: UIScreen.main.bounds)
        self.view.backgroundColor = UIColor.yellow
        l.text = "View 1"
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

