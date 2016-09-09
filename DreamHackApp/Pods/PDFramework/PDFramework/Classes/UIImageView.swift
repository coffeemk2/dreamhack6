//
//  UIImageView.swift
//  PDFramework
//
//  Copyright © 2016年 P&D All rights reserved.
//

extension UIImageView {
    /**
     アスペクト比を保ったまま superView の横幅にフィットするようにサイズを調整して生成する．

     - parameter superViewFrame:     画像を配置するView
     - parameter imageName: 画像名
     */
    public convenience init(superViewFrame frame: CGRect, imageName: String) {
        self.init(frame: frame)
        contentMode = .ScaleAspectFit
        translatesAutoresizingMaskIntoConstraints = false

        let image = UIImage(named: imageName) ?? UIImage()
        self.image = image

        let imageSize = image.size
        var frame = bounds
        frame.size.height = frame.width * imageSize.height / imageSize.width
        self.frame = frame
    }

    /**
     画像名から生成

     - parameter imageName: 画像名
     */
    public convenience init(imageName: String) {
        let image = UIImage(named: imageName)
        self.init(image: image)
    }
}
