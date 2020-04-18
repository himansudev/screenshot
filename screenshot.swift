extension UIView {
    
    func takeScreenshot() -> UIImage {
        
        //begin
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        
        // draw view in that context.
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        
        // get iamge
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        if image != nil {
            return image!
        }
        
        return UIImage()
        
    }
    
    
}
