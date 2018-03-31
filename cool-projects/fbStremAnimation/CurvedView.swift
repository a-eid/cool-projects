import UIKit


func customPath() -> UIBezierPath {
  let path = UIBezierPath()
  
  // start point
  path.move(to: CGPoint(x: 0, y: 100))
  let endpoint = CGPoint(x: UIScreen.main.bounds.maxX + 50, y: 100)
  
  let p1 = CGPoint(x: UIScreen.main.bounds.midX, y: 0)
  let p2 = CGPoint(x: UIScreen.main.bounds.midX, y: 350)
  path.addCurve(to: endpoint, controlPoint1: p1, controlPoint2: p2)
  return path
}

class CurvedView: UIView {
  override func draw(_ rect: CGRect) {
    
    let path = customPath()
    path.stroke()
    
  }
}
