import UIKit

// MARK: - Finding UISliders
extension UIView {
    public func findSlider(withValue searchValue: Float) -> UISlider? {
        for subview in subviews {
            if let slider = subview as? UISlider {
                if slider.value == searchValue {
                    return slider
                }
            }

            if (subview.subviews.count > 0) {
                if let slider = subview.findSlider(withValue: searchValue) {
                    return slider
                }
            }
        }

        return nil
    }
}

// MARK: - Has UISliders
extension UIView {
    public func hasSlider(withValue searchValue: Float) -> Bool {
        return findSlider(withValue: searchValue).isNotNil()
    }
}