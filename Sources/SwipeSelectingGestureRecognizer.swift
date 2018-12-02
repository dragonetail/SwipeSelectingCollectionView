import UIKit
import UIKit.UIGestureRecognizerSubclass

class SwipeSelectingGestureRecognizer: UIPanGestureRecognizer {

    //辅助判断初始的动向是横向还是竖向
	private var startPoint: CGPoint?

	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
		super.touchesBegan(touches, with: event)
		startPoint = touches.first?.location(in: self.view)
        print("~~~touchesBegan标记: \(String(describing: startPoint)))")
	}

	override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent) {
		defer {
			super.touchesMoved(touches, with: event)
			self.startPoint = nil
		}
		guard let view = self.view,
			let touchPoint = touches.first?.location(in: view),
			let startPoint = self.startPoint else {
                //print("touchesMoved标记: \(String(describing: self.startPoint)) -> \(String(describing: touches.first?.location(in: self.view)))")
				return
		}
        
        //辅助判断初始的动向是横向还是竖向
		let deltaY = abs(startPoint.y - touchPoint.y)
		let deltaX = abs(startPoint.x - touchPoint.x)
		if deltaY != 0 && deltaY / deltaX > 1 {
			state = .failed
            //print("touchesMoved标记state = .failed")
			return
		}
        //print("touchesMoved正常结束")
	}

}
