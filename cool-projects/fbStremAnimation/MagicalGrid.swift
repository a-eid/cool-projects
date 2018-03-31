import UIKit


class MagicalGrid: UIViewController {
  override var prefersStatusBarHidden: Bool {
    return true
  }
  
  override func viewDidLoad() {
    view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    setupViews()
    setupGestures()
  }
  
  func setupViews(){
    
    let width = view.frame.width / 15
    let numberRows = Int(view.frame.height / width + 1)
    
    for i in 0...numberRows {
      for j in 0...15 {
        let cell = UIView(frame: CGRect(x: CGFloat(j) * width, y: CGFloat(i) * width, width: width, height: width))
        cell.backgroundColor = randColor()
        view.addSubview(cell)
      }
    }
    
  }
  
  func setupGestures(){
    view.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handlePan)))
  }
  
  @objc func handlePan(g: UIPanGestureRecognizer){
    print(g.location(in: view))
  }
  
  func randColor()-> UIColor{
    let r = CGFloat(drand48())
    let g = CGFloat(drand48())
    let b = CGFloat(drand48())
    return UIColor(red: r , green: g, blue: b, alpha: 1)
  }
}
