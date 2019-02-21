//
//  ChristiansLibrary.swift
//  MarketPlaceMedium
//
//  Created by Christian Burke on 2/6/19.
//  Copyright © 2019 Christian Burke. All rights reserved.
//

import Foundation
import UIKit
import MapKit

extension String {
    func contains(find: String) -> Bool{
        return self.range(of: find) != nil
    }
    
    func containsIgnoringCase(find: String) -> Bool{
        return self.range(of: find, options: .caseInsensitive) != nil
    }
    
    func slice(from: String, to: String) -> String? {
        
        return (range(of: from)?.upperBound).flatMap { substringFrom in
            (range(of: to, range: substringFrom..<endIndex)?.lowerBound).map { substringTo in
                String(self[substringFrom..<substringTo])
            }
        }
    }
}

extension UIImageView {
    func downloaded(from url: URL) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        for view in self.superview!.subviews{
            if(view is UIActivityIndicatorView){
                let spinner: UIActivityIndicatorView = view as! UIActivityIndicatorView
                spinner.startAnimating()
            }
        }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard
                let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
                else { return }
            DispatchQueue.main.async() {
                if(self.superview != nil){
                    for view in self.superview!.subviews{
                        if(view is UIActivityIndicatorView){
                            let spinner: UIActivityIndicatorView = view as! UIActivityIndicatorView
                            spinner.stopAnimating()
                        }
                    }
                }
                self.image = image
            }
            }.resume()
    }
    func downloaded(from link: String) {  // for swift 4.2 syntax just use ===> mode: UIView.ContentMode
        guard let url = URL(string: link) else { return }
        downloaded(from: url)
    }
    

}


extension String {
    func toBool() -> Bool? {
        switch self {
        case "True", "true", "yes", "1":
            return true
        case "False", "false", "no", "0":
            return false
        default:
            return nil
        }
    }
}

class roundLabel:UILabel{
    @IBInspectable var cornerRadius: Int = 0 {
        didSet{
            layer.masksToBounds = true
            layer.cornerRadius = CGFloat(cornerRadius)
        }
    }
    
    @IBInspectable var borderWidth: Int = 0 {
        didSet{
            layer.borderWidth = CGFloat(borderWidth)
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var underlineWidth: Int = 0 {
        didSet{
            if let textString = self.text {
                let attributedString = NSMutableAttributedString(string: textString)
                attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: underlineWidth, range: NSRange(location: 0, length: attributedString.length))
                attributedText = attributedString
            }
        }
    }
}

@IBDesignable class RoundButton: UIButton{
    
    @IBInspectable var cornerRadius: Int = 0 {
        didSet{
            layer.cornerRadius = CGFloat(cornerRadius)
        }
    }
    
    @IBInspectable var borderWidth: Int = 0 {
        didSet{
            layer.borderWidth = CGFloat(borderWidth)
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var underline: Bool = false {
        didSet{
            
            let attrs = [
                //NSAttributedString.Key.font : titleLabel?.font,
                //NSAttributedString.Key.foregroundColor : UIColor.red,
                NSAttributedString.Key.underlineStyle : 1] as [NSAttributedString.Key : Any]
            
            let attributedString = NSMutableAttributedString(string:"")
            let buttonTitleStr = NSMutableAttributedString(string:(self.titleLabel?.text)!, attributes:attrs)
            attributedString.append(buttonTitleStr)
            setAttributedTitle(attributedString, for: .normal)
        }
    }
}

@IBDesignable class RoundImageView: UIImageView{
    
    @IBInspectable var cornerRadius: Int = 0 {
        didSet{
            layer.cornerRadius = CGFloat(cornerRadius)
        }
    }
    
    @IBInspectable var borderWidth: Int = 0 {
        didSet{
            layer.borderWidth = CGFloat(borderWidth)
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.black {
        didSet{
            layer.borderColor = borderColor.cgColor
        }
    }
}

extension String {
    var digits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted)
            .joined()
    }
}


extension UIApplication {
    class func getTopMostViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return getTopMostViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return getTopMostViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return getTopMostViewController(base: presented)
        }
        return base
    }
}

extension MKMapView{
    func centerMapOnLocation(location: CLLocation, regionRadius:Double = 500.0) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
                                                                  regionRadius, regionRadius)
        self.setRegion(coordinateRegion, animated: true)
    }

}
