//
//  LeftViewController.swift
//  LGSideMenuControllerDemo
//

class LeftViewController: UITableViewController {

    private let titlesArray = ["Engine Tunning Parameters","Data Acquisition","Formula Social","Emergency","Customer Service"]
    var identities = ["A","B","C","D","E"]
    
    init() {
        super.init(style: .plain)
        view.backgroundColor = .clear
        tableView.register(LeftViewCell.self, forCellReuseIdentifier: "cell")
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets(top: 44.0, left: 0.0, bottom: 44.0, right: 0.0)
        tableView.showsVerticalScrollIndicator = false
        tableView.backgroundColor = .clear
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }

    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .fade
    }
    
    // MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LeftViewCell
        cell.textLabel!.text = titlesArray[indexPath.row]
        cell.separatorView.isHidden = true
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainViewController = sideMenuController!
        let vcName = identities[indexPath.row]
        let viewController: UIViewController! = storyboard.instantiateViewController(withIdentifier: vcName)
        if let theNavigationController = mainViewController.rootViewController as? UINavigationController {
            theNavigationController.pushViewController(viewController!, animated: true)
            mainViewController.hideLeftView(animated: true, completionHandler: nil)
            }
        
    }
    
}
