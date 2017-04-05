//
//  ViewController.swift
//  LGSideMenuControllerDemo
//

class ViewController : UIViewController {

    private lazy var imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "2.jpg"))
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()



    init() {
        super.init(nibName: nil, bundle: nil)


        view.backgroundColor = .white

        view.addSubview(imageView)
       
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
    }


    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        imageView.frame = CGRect(x: 0.0, y: 0.0, width: view.frame.size.width, height: view.frame.size.height)

      //  button.frame = CGRect(x: 0.0, y: view.frame.size.height-44.0, width: view.frame.size.width, height: 44.0)
    }

    // MARK: -

    func showLeftView(sender: AnyObject?) {
        sideMenuController?.showLeftView(animated: true, completionHandler: nil)
    }

    
    
}
