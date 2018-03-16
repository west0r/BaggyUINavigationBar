import UIKit

class SecondViewController: UIViewController {
   
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item = UIBarButtonItem(
            image: UIImage(named: "back"),
            style: .plain,
            target: nil,
            action: #selector(pop)
        )

        navigationItem.leftBarButtonItem = item
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: nil, action: nil)
        navigationController?.interactivePopGestureRecognizer?.delegate = nil
        navigationItem.titleView = TitleView()
    }
    
    @objc private func pop() {
        navigationController?.popViewController(animated: true)
    }
}
