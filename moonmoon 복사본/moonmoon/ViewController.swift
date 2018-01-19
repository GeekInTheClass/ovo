//
//  ViewController.swift
//  moonmoon
//
//  Created by cscoi014 on 2018. 1. 17..
//  Copyright © 2018년 GAZA. All rights reserved.
//

import UIKit

class Answer {
    let writerNickName: String
    let contents: String
    var picture: UIImage?
    let writeDate: Date
    let or: Bool
    var likes: Int = 0
    let open: Bool
    var comments: Int = 0
    init(writerNickName: String, contents: String, writeDate: Date, or: Bool, open: Bool) {
        self.writerNickName = writerNickName
        self.contents = contents
        self.writeDate = writeDate
        self.or = or
        self.open = open
    }
}

class Question{
    let questionContents: String
    let questionDate: String
    init(questionContents: String, questionDate: String) {
        self.questionDate = questionDate
        self.questionContents = questionContents
    }
}

class Reply{
    let replyNickName: String
    var replyLikes: Int = 0
    let replyContents: String
    let replyDate: Date
    let replyor: Bool
    init(replyNickName: String, replyContents: String, replyDate: Date, replyor: Bool ){
        self.replyNickName = replyNickName
        self.replyContents = replyContents
        self.replyDate = replyDate
        self.replyor = replyor
    }
}
class Rereply{
    let reReplyNickName: String
    var reReplyLikes: Int = 0
    let reReplyContents: String
    let reReplyDate: Date
    let reReplyor: Bool
    init(reReplyNickName: String, reReplyContents: String, reReplyDate: Date, reReplyor: Bool){
        self.reReplyNickName = reReplyNickName
        self.reReplyContents = reReplyContents
        self.reReplyDate = reReplyDate
        self.reReplyor = reReplyor
    }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let example_question = Question(questionContents: "당신이 바라는 나의 모습은?", questionDate: "2018.01.17")
        
        let example = Answer(writerNickName: "문문", contents: "빌게이츠요", writeDate: Date(), or: true, open: false)
        
        example.picture = nil
        
        let example_reply = Reply(replyNickName: "유유", replyContents: "될 수 있어요.", replyDate: Date(), replyor : true)
        let example_rereply = Rereply(reReplyNickName: "대댓1", reReplyContents: "인정", reReplyDate: Date(), reReplyor: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

