//
//  Meme.swift
//  MeMe
//
//  Created by Tanveer Bashir on 11/30/15.
//  Copyright © 2015 Tanveer Bashir. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    var topText:String?
    var bottomText:String?
    var originalImage:UIImage?
    var memeImage:UIImage?
    
    
    init(toptext:String, bottomText:String, originalImage:UIImage, memeImage:UIImage) {
        self.topText = toptext
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memeImage = memeImage
    }
}