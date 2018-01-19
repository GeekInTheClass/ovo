//
//  QuestionListTableViewController.swift
//  moonmoon
//
//  Created by cscoi010 on 2018. 1. 19..
//  Copyright © 2018년 GAZA. All rights reserved.
//

import UIKit

class QuestionListTableViewController: UITableViewController {
    
    let data:[Question] = [
        Question(questionContents: "당신의 삶의 목표는 무엇인가요?", questionDate: "2018.01.01"),
        Question(questionContents: "사랑하는 사람을 세 단어로 표현한다면?", questionDate: "2018.01.02"),
        Question(questionContents: "주량은 얼마인가요?", questionDate: "2018.01.03"),
        Question(questionContents: "지금 가장 가보고 싶은 여행지는?", questionDate: "2018.01.04"),
        Question(questionContents: "가장 감명 깊게 본 영화는?", questionDate: "2018.01.05"),
        Question(questionContents: "가장 감명 깊게 본 책은?", questionDate: "2018.01.06"),
        Question(questionContents: "가장 감명 깊게 먹었던 음식은?", questionDate: "2018.01.07"),
        Question(questionContents: "십년 후에 당신은 어떤 사람이 되고 싶나요?", questionDate: "2018.01.08"),
        Question(questionContents: "과거로 돌아갈 수 있다면, 가장 바꾸고 싶은 한 가지?", questionDate: "2018.01.09"),
        Question(questionContents:"당신의 오늘은 어땠나요?", questionDate:"2018.01.10"),
        Question(questionContents:"당신의 삶의 원동력은 무엇인가요?", questionDate:"2018.01.11"),
        Question(questionContents:"당신의 취미는 무엇인가요?", questionDate:"2018.01.12"),
        Question(questionContents:"당신의 롤모델은 누구인가요?", questionDate:"2018.01.13"),
        Question(questionContents:"당신을 사물에 비유하자면?", questionDate:"2018.01.14"),
        Question(questionContents:"요즘 삶이 행복한가요?", questionDate:"2018.01.15"),
        Question(questionContents:"요즘 즐겨 듣는 노래는 무엇인가요?", questionDate:"2018.01.16"),
        Question(questionContents:"오늘 당신에게 해주고 싶은 칭찬은?", questionDate:"2018.01.17"),
        Question(questionContents:"가장 사고 싶은 것은?", questionDate:"2018.01.18"),
        Question(questionContents:"즐겨보는 TV프로그램은?", questionDate:"2018.01.19"),
        Question(questionContents:"요즘 가장 스트레스 받는 일은?", questionDate:"2018.01.20"),
        Question(questionContents: "오늘 행복한 일이 있었나요?", questionDate: "2018.01.21"),
        Question(questionContents: "내가 어떤 모습으로 살아가길 바라나요?", questionDate: "2018.01.22"),
        Question(questionContents: "남이 모르는 나만의 능력은?", questionDate: "2018.01.23"),
        Question(questionContents: "오늘 불행한 일이 있었나요?", questionDate: "2018.01.24"),
        Question(questionContents: "사랑하는 사람과 함께 제일 하고 싶은 일은?", questionDate: "2018.01.25"),
        Question(questionContents: "오늘 무엇을 배웠나요?", questionDate: "2018.01.26"),
        Question(questionContents: "올해 갖고 싶은 선물은?", questionDate: "2018.01.27"),
        Question(questionContents: "요새 당신을 힘들게 하는 일이 있나요?", questionDate: "2018.01.28"),
        Question(questionContents: "올해 꼭 이루고 싶은 일은?", questionDate: "2018.01.29"),
        Question(questionContents: "내가 어떤 사람인지 3단어로 표현한다면?", questionDate: "2018.01.30")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*Date(timeIntervalSince1970: 1000000)
        
        
        Date(timeIntervalSinceNow: -10000)
        
    
        Date().addingTimeInterval( 60 * 60 * 24 )
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        let date = formatter.date(from: "2015-01-01")
        
        let cal = Calendar.current
        let dateComponent = DateComponents()
        dateComponent.year = 2000
        dateComponent.weekOfYear = 30
        dateComponent.day = 1
        cal.date(from: dateComponent)*/
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    override func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL_Question", for: indexPath)
        let questionContent = data[indexPath.row].questionContents
        let questionDate = data[indexPath.row].questionDate
        
        cell.textLabel?.text = questionContent
        cell.detailTextLabel?.text = questionDate
        
        return cell
    }
    override func tableView(_ tableView:UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Question List - January"
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
