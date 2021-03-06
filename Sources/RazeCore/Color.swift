import UIKit

extension RazeCore {
    
    public class Color{
        
        /// Allow you to convert a 6 digit hexadecimal string in to UIColor instance
        /// - Warning : The "#" sybmol is sripped from the begining of the string submitted here.
        /// - Parameters:
        ///   - hexString: A 6 digit hexadecimal string. Use 6 digit number rather than 8, and add the accompanying alpha value in the second parameter
        ///   - alpha: A number between 0.0 and 1.0 indicating how transparent color is
        /// - Returns: A UIColor defined by the 'hexString' parameter
        
        internal class func fromHexString(_ hexString:String, alpha:CGFloat = 1.0) -> UIColor{
            let r,g,b : CGFloat
            let offset = hexString.hasPrefix("#") ? 1 : 0
            let start = hexString.index(hexString.startIndex,offsetBy: offset)
            let hexColor = String(hexString[start...])
            let scanner = Scanner(string: hexColor)
            var hexNumber : UInt64 = 0
            if scanner.scanHexInt64(&hexNumber){
                r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                g = CGFloat((hexNumber & 0x00ff00) >> 16) / 255
                b = CGFloat((hexNumber & 0x0000ff) >> 16) / 255
                return UIColor(red: r, green: g, blue: b, alpha: alpha)
            }
            return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
        }
        
        
        /// The most eye pleasing color to all human eyes
        public static var razeColor : UIColor{
            return self.fromHexString("006736")
        }
        
        
        /// Return the second most eye pleasing for all human eyes
        public static var secondaryRazeColor: UIColor{
            return self.fromHexString("FCFFFD")
        }
    }
}

