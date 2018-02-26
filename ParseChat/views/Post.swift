//
//  Post.swift
//  ParseChat
//
//  Created by ARG Lab on 2/25/18.
//  Copyright © 2018 Odin. All rights reserved.
//

import Foundation
import Parse

class Post: PFObject, PFSubclassing {
    
    @NSManaged var author: PFUser
    @NSManaged var caption: String
    
    class func postMessage(message: String){
        let post = Post()
        
        post.author  = PFUser.current()!
        post.caption = message
        post.saveInBackground()
    }
    
    
    static func parseClassName() -> String {
        return "Message"
    }
    
    
}
