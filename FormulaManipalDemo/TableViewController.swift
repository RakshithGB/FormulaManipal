//
//  TableViewController.swift
//  LGSideMenuControllerDemo
//

class TableViewController: UITableViewController {

    private let titlesArray = [""]

    init() {
        super.init(style: .plain)

        tableView.separatorStyle = .none

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    // MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        cell.accessoryType = .disclosureIndicator
        cell.textLabel!.font = UIFont.systemFont(ofSize: 16.0)
        cell.textLabel!.text = titlesArray[indexPath.row]
        
        return cell
    }
    
    // MARK: - UITableViewDelegate

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44.0
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
    
    override func viewDidLoad() {
    
        Timer.scheduledTimer(timeInterval: 0.10, target: self, selector: #selector(dothis), userInfo: nil, repeats: false)
       
        
    }
    
    func dothis(){
        let viewController: UIViewController
        viewController = ViewController()
        let navigationController = NavigationController(rootViewController: viewController)
        
        let mainViewController = MainViewController()
        mainViewController.rootViewController = navigationController
        mainViewController.setit()
        
        let window = UIApplication.shared.delegate!.window!!
        window.rootViewController = mainViewController
        
        UIView.transition(with: window, duration: 0.3, options: [.transitionCrossDissolve], animations: nil, completion: nil)
    }
    
        
  
}
