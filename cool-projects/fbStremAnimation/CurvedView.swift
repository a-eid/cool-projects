import UIKit


func customPath() -> UIBezierPath {
  let path = UIBezierPath()
  
  // start point
  let y = CGFloat(arc4random_uniform(200))
  let y2 = CGFloat(arc4random_uniform(200))
  path.move(to: CGPoint(x: 0, y: y))
  let endpoint = CGPoint(x: UIScreen.main.bounds.maxX + 50, y: y2)
  
  let p1 = CGPoint(x: UIScreen.main.bounds.midX + CGFloat(arc4random_uniform(100)) ,
                   y: CGFloat(arc4random_uniform(100)))
  
  let p2 = CGPoint(x: UIScreen.main.bounds.midX + CGFloat(arc4random_uniform(100)),
                   y: CGFloat(arc4random_uniform(400)) )
  
  path.addCurve(to: endpoint, controlPoint1: p1, controlPoint2: p2)
  return path
}

class CurvedView: UIView {
  override func draw(_ rect: CGRect) {
    
    let path = customPath()
    path.stroke()
    
  }
}
