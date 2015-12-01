//: Playground - noun: a place where people can play

import UIKit

var str = "https://lh3.googleusercontent.com/E6EO3XO6zP7NtBq2L9SDF1DbBoYamUWc8QTRvOFuQg_Gka2Vw_RIv-AjU5Ysu4XgwHU=w170"

extension String {
    
    func loadImage() -> UIImage
    {
        if let url = NSURL(string: self), let data = NSData(contentsOfURL: url), let image = UIImage(data: data) {
            
            return image
        }
        return UIImage()
    }
}

str.loadImage()
