import UIKit

class Home: UIViewController {

  lazy var animCurve: CurvedView = {
    let cv = CurvedView()
    cv.frame = view.frame
    cv.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    return cv
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    setupViews()
    let tap = UITapGestureRecognizer(target: self, action: #selector(triggerAnimations))
    view.addGestureRecognizer(tap)
  }
  
  func setupViews(){
//    view.addSubview(animCurve)
  }

  @objc func triggerAnimations(){
    let to = arc4random_uniform(20)
    (0...to).forEach { (_) in
      generateAnimatedViews()
    }
  }
  
  func generateAnimatedViews(){
    let i = arc4random_uniform(2) == 1 ? #imageLiteral(resourceName: "heart") : #imageLiteral(resourceName: "thumbs_up")
    let image = UIImageView(image: i)
    image.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
    // add animation to the image.
    let animation = CAKeyframeAnimation(keyPath: "position")
    animation.path = customPath().cgPath
    animation.duration = 1
    animation.fillMode = kCAFillModeForwards
    animation.isRemovedOnCompletion = false
    
    image.layer.add(animation, forKey: nil)
    view.addSubview(image)
  }
}

