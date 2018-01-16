//: Playground - noun: a place where people can play

import UIKit
import Foundation

//문제 출제
//1번 문제!!!
//주어진 정수형 배열 각각의 원소값을 백만배하고, 777을 빼세요.
/*
var intArray = [3,5,10,777,6]
var answerArray: [Int] = []
for item in intArray {
    answerArray.append(item*1000000-777)
}

//1번 답!!!
*/

var intArray = [3,5,10,777,6].map { (item) -> Int in
    return item*1000000-777
}

/*
//2번 문제!!!
//주어진 단어의 배열을 한문장처럼 이으세요.
var strArray = ["안녕", "하이", "곤니찌와", "니 하오", "봉쥴를"]
var answer: String = ""
for item in strArray {
    answer += item
}

//2번 답쓰!!!
 */
var strArray = ["안녕", "하이", "곤니찌와", "니 하오", "봉쥴를"].map { (item) -> String in
    var answer: String = ""
    answer += item
    return answer
}


/*
//3번 문제!!!
//당신은 돈이 부족합니다 가격이 500원 이하인 물건만 선택하세요
let prices = [300, 400, 500, 600, 2000]
var savings : [Int] = []
for price in prices {
    if price <= 500
    {
        savings += [price]
    }
}
//3번 답!
*/
let prices = [300, 400, 500, 600, 2000].filter { (item) -> Bool in
    return item<=500
}

//4번 문제!!!
//당신은 애들이랑 놀이공원에 놀러왔습니다. 롤러코스터를 타고 싶은데, 롤러코스터를 타려면 키가 155cm를 넘어야합니다. 롤러코스터를 탈 수 있는 애들만 필터링 해보세요.

var kidDict: [String:Int] = ["철수" : 123, "명수" : 178, "영진" : 145, "제임스" : 153, "명구" : 156]
var answerKid : [String] = []
for (key,value) in kidDict {
    if value > 155 {
        answerKid.append(key)
    }
}

//4번 답쓰ㅎㅎ




//5번 문제!!!
//3보다 큰 수를 필터링하고 100을 곱한 뒤에 그의 합을 계산해보세요.

var numberArray = [1,2,3,4,5,6,7]
var lastAnswer: Int = 0
for item in numberArray{
    if item > 3 {
        lastAnswer += item * 100
    }
}

//5번 답쓰!!!

