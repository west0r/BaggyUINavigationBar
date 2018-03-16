import UIKit

class FirstViewController: UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First"
        button.backgroundColor = .red
        button.setTitle("Push", for: .normal)
        button.addTarget(self, action: #selector(push), for: .touchUpInside)
        view.addSubview(button)
        
        DispatchQueue.main.async {
            self.push()
        }
    }
    
    @objc private func push() {
        navigationController?.pushViewController(SecondViewController(), animated: true)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        button.sizeToFit()
        button.center = view.center
    }
}

