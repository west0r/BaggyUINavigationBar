import UIKit

class TitleView: UIView {

    let label = UILabel()
    var previousScreenWidth = CGFloat(0)
    var previousFrame = CGRect.zero
    
    init() {
        super.init(frame: .zero)
        addSubview(label)
        
        label.textColor = .black
        label.text = "Test"
        
        backgroundColor = .red
        
        if #available(iOS 11, *) {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        return size
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: CGFloat.greatestFiniteMagnitude, height: 44)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        label.sizeToFit()
        label.center = CGPoint(x: bounds.width/2, y: bounds.height/2)
    }
}
