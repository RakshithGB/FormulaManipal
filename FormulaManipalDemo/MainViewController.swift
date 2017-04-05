//
//  MainViewController.swift
//  LGSideMenuControllerDemo
//

class MainViewController: LGSideMenuController {

    private var type: UInt?
    
    func setit()
    {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        var leftViewController: LeftViewController
      
        
        if (self.storyboard != nil) {
            leftViewController = self.storyboard!.instantiateViewController(withIdentifier: "LeftViewController") as! LeftViewController
        }
        else {
            leftViewController = LeftViewController()
            leftViewWidth = 250.0;
            leftViewBackgroundImage = UIImage(named: "1")
            leftViewBackgroundColor = UIColor(red: 0.5, green: 0.6, blue: 0.5, alpha: 0.9)
        }
   
        leftViewPresentationStyle = .scaleFromLittle
        leftViewCoverBlurEffect = UIBlurEffect(style: .dark)
        leftViewCoverColor = nil
        rootViewCoverBlurEffectForLeftView = UIBlurEffect(style: .dark)
        rootViewCoverAlphaForLeftView = 0.8
        
        self.leftViewController = leftViewController
       
    }

    override func leftViewWillLayoutSubviews(with size: CGSize) {
        super.leftViewWillLayoutSubviews(with: size)

        if !isLeftViewStatusBarHidden {
            leftView?.frame = CGRect(x: 0.0, y: 20.0, width: size.width, height: size.height - 20.0)
        }
    }
    
   }
