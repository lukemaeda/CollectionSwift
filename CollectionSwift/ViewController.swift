//
//  ViewController.swift
//  CollectionSwift
//
//  Created by MAEDAHAJIME on 2015/06/21.
//  Copyright (c) 2015年 MAEDAHAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // テキスト表示
    @IBOutlet weak var teString: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 配列[個数]ボタンを押した時
    @IBAction func proc00(sender: UIButton) {
        
        self.teString.text = nil
        
        // 整数配列作成
        let arr01:[Int] = [10, 20, 30, 40, 50]
        println("整数配列:\(arr01)")
        
        // 文字配列作成
        let arr02:[String] = ["あいうえお", "かきくけこ"]
        println("文字配列:\(arr02)")
        
        // 同じ値の初期値作成
        let arr03:[Int] = Array(count:3, repeatedValue:10) // [10, 10, 10]
        println("同じ値の初期値:\(arr03)")
        
        // 空の配列
        let arr04:[Int] = [] // 空の配列
        println("空の配列(数字):\(arr04)")
        
        // 空の配列
        let arr05:[String] = [String]() // 空の配列
        println("空の配列(文字):\(arr05)")
        
        // 型は初期値から推測されるので、初期値を与える場合は型を明示する必要はありません。
        let arr06 = ["勇者", "戦士", "魔法使い", "僧侶"]
        let arr07 = [10, 20, 30, 40, 50]
        
        self.teString.text = self.teString.text.stringByAppendingFormat("整数配列:\(arr01)\n")
        self.teString.text = self.teString.text.stringByAppendingFormat("文字配列:\(arr02)\n")
        self.teString.text = self.teString.text.stringByAppendingFormat("同じ値の初期値:\(arr03)\n")
        self.teString.text = self.teString.text.stringByAppendingFormat("空の配列(数字):\(arr04)\n")
        self.teString.text = self.teString.text.stringByAppendingFormat("空の配列(文字):\(arr05)")
    }
    // 配列[個数]ボタンを押した時
    @IBAction func proc01(sender: UIButton) {
        
        self.teString.text = nil
        
        // 配列作成
        let arr:[Int] = [10, 20, 30, 40, 50]
 
        // 要素数
        let cnt:Int = arr.count // 5
        println("配列の個数:\(cnt)")
        
        self.teString.text = self.teString.text.stringByAppendingFormat("配列個数:\(cnt)")
        
        //各件数
        var cnt1:Int = arr.capacity // 5
        var cnt2:Int = arr.startIndex // 0
        var cnt3:Int = arr.endIndex // 5
        
    }

    // 配列[要素]を押した時
    @IBAction func proc02(sender: AnyObject) {

        self.teString.text = nil
        
        // 配列作成（別記１）
        let arr: [Int] = [10, 20, 30]
        //各データを取得
        let arr01:Int = arr[0] // 10
        let arr02:Int = arr[1] // 20
        let arr03:Int = arr[2] // 30
        
        println("0番目の要素:\(arr01)")
        self.teString.text = self.teString.text.stringByAppendingFormat("0番目の要素:\(arr01)")

    }
    
    // 配列[範囲]ボタンを押した時
    @IBAction func proc03(sender: AnyObject) {
        
        self.teString.text = nil
        
        // 配列作成
        let arr:[Int] = [10, 20, 30, 40, 50]
        
        // 配列の範囲
        var arr01 = arr[1...2] // [20, 30]
        println("配列の範囲:\(arr01)")
        
        self.teString.text = self.teString.text.stringByAppendingFormat("配列の範囲:\(arr01)")
    }
    
    // 配列[全要素]ボタンを押した時
    @IBAction func proc04(sender: AnyObject) {
        
        self.teString.text = nil
        
        ///////////
        // 配列作成
        let arr01:[Int] = [10, 20, 30, 40, 50]
        
        // 要素数
        let cnt01:Int = arr01.count // 5
        
        // 値を取得
        for (var i = 0; i < cnt01 ; i++) {
            println("整数配列の全要素:\(arr01[i])\n") //　10, 20, 30, 40, 50
            self.teString.text = self.teString.text.stringByAppendingFormat("整数配列の全要素:\(arr01[i])\n")
        }
        
        
        ///////////
        // 配列作成
        let arr02:[String] = ["あいうえお", "かきくけこ"]
        // 要素数
        let cnt02:Int = arr02.count
        
        // 値を取得
        for (var i = 0; i < cnt02 ; i++) {
            println("文字配列の全要素:\(arr02[i])\n") // "あいうえお", "かきくけこ"
            self.teString.text = self.teString.text.stringByAppendingFormat("文字配列の全要素:\(arr02[i])\n")
        }

        ///////////
        // 配列作成
        let arr03:[String] = ["1stだだ", "2nd", "3rd"]
        // 要素数
        let cnt:Int = arr03.count
        
        ///////////////////
        // 値を取得（個別取得）
        for (var i = 0; i < cnt ; i++) {
            var val:String = arr03[i]
            println("個別取得:\(val)") // "1stだだ", "2nd", "3rd"
            self.teString.text = self.teString.text.stringByAppendingFormat("文字配列の個別取得:\(val)\n")
        }
        
        ///////////////////
        // 値の取得（簡易取得）
        println("簡易取得:", arr03)
        self.teString.text = self.teString.text.stringByAppendingFormat("文字配列の簡易取得:\(arr03)\n")
        
        //////////////////////
        // 値の取得（高速列挙取得）
        // データの最後まで読み込む 要素の数まで繰り返す
        for value in arr03 {
            println("高速列挙取得:\(value)") // "1stだだ", "2nd", "3rd"
            self.teString.text = self.teString.text.stringByAppendingFormat("文字配列の高速列挙取得:\(value)\n")
        }
        
        //////////////////////
        // 値の取得（enumerate）
        // （要素番号,要素を一時的に入れる変数）in enumerate（配列名）
        for (index,val) in enumerate(arr03){
            println("要素:[\(index)]=\(val)") // [0]=1stだだ, [1]=2nd, [2]=3rd
            self.teString.text = self.teString.text.stringByAppendingFormat("要素:[\(index)]=\(val)\n")
        }
    }
    
    // 配列[追加]ボタンを押した時
    @IBAction func proc05(sender: AnyObject) {
        
        self.teString.text = nil
        
        ///////////
        // 配列作成
        var arr = ["1stだだ", "2nd", "3rd"]
        // 要素の追加 append
        arr.append("4th")   // ["1stだだ", "2nd", "3rd", "4th"]
        println("追加 append:\(arr)")
        self.teString.text = self.teString.text.stringByAppendingFormat("追加 append:\(arr)\n")
        
        // 要素の追加 +=
        arr += ["5th"]
        println("追加 +=:\(arr)")
        self.teString.text = self.teString.text.stringByAppendingFormat("追加 +=:\(arr)\n")
        
        // 要素の追加 atIndex
        arr.insert("3nd3nd", atIndex:3)
        println("追加 atIndex:\(arr)")
        self.teString.text = self.teString.text.stringByAppendingFormat("追加 atIndex:\(arr)")
    }
    
    // 配列[置換]ボタンを押した時
    @IBAction func proc06(sender: AnyObject) {
        
        self.teString.text = nil
        
        ///////////
        // 配列作成
        var arr = ["1stだだ", "2nd", "3rd"]
        // 要素の置換
        arr[2] = "3r3rd" // ["1stだだ", "2nd", "3r3rd"]
        self.teString.text = self.teString.text.stringByAppendingFormat("置換:\(arr)")
    }
    
    // 配列[削除]ボタンを押した時
    @IBAction func proc07(sender: AnyObject) {
        
        self.teString.text = nil
        
        ///////////
        // 配列作成
        var arr = ["1stだだ", "2nd", "3rd"]
        // 要素の削除
        arr.removeLast() // 最後の要素を削除 "3rd"
        println("削除:\(arr)")
        self.teString.text = self.teString.text.stringByAppendingFormat("削除:\(arr)")
    }
    
    // 配列[全削除]ボタンを押した時
    @IBAction func proc08(sender: AnyObject) {
        
        self.teString.text = nil
        
        ///////////
        // 配列作成
        var arr = ["1stだだ", "2nd", "3rd"]
        // 要素の全削除
        arr.removeAll()
        println("全削除:\(arr)")
        self.teString.text = self.teString.text.stringByAppendingFormat("全削除:\(arr)")
    }
    
    // 配列ソート[昇順]ボタンを押した時
    @IBAction func proc09(sender: AnyObject) {
        
        self.teString.text = nil
        
        ///////////
        // 配列作成
        var arr = [50, 30, 10, 40, 20]
        arr.sort({ $0 < $1})            // 昇順にソート
        println("昇順にソート:\(arr)")
        self.teString.text = self.teString.text.stringByAppendingFormat("昇順にソート:\(arr)")
    }
    
    // 配列ソート[降順]ボタンを押した時
    @IBAction func proc10(sender: AnyObject) {
        
        self.teString.text = nil
        
        ///////////
        // 配列作成
        var arr = [50, 30, 10, 40, 20]
        arr.sort({ $0 > $1})            // 降順にソート
        println("降順にソート:\(arr)")
        self.teString.text = self.teString.text.stringByAppendingFormat("降順にソート:\(arr)")
    }
    
    // 辞書データ(Dictionary)作成
    @IBAction func proc11(sender: AnyObject) {
        
        self.teString.text = nil
        
        var dic01 = ["key01":"1st", "key02":"2st", "key03":"3st"]
        println("辞書データ:\(dic01)") // [key01: 1st, key03: 3st, key02: 2st]
        self.teString.text = self.teString.text.stringByAppendingFormat("辞書データ:\(dic01)\n")
        
        var dic02 = ["key01":1, "key02":2, "key03":3]
        println("辞書データ:\(dic02)") // [key01: 1, key03: 3, key02: 2]
        self.teString.text = self.teString.text.stringByAppendingFormat("辞書データ:\(dic02)")
    }
    
    // 辞書データ(Dictionary)個数
    @IBAction func proc12(sender: AnyObject) {
        
        self.teString.text = nil
        
        var dic01 = ["key01":"1st", "key02":"2st", "key03":"3st"]
        var cnt = dic01.count
        println("個数:\(cnt)") // 3
        self.teString.text = self.teString.text.stringByAppendingFormat("個数:\(cnt)")
        
    }
    
    // 辞書データ(Dictionary)取得
    @IBAction func proc13(sender: AnyObject) {
        
        self.teString.text = nil
        
        var dic01 = ["key01":"1st", "key02":"2st", "key03":"3st"]
        var val = dic01["key02"]
        println("個別取得 key02:\(val)") //
        self.teString.text = self.teString.text.stringByAppendingFormat("個別取得 key02:\(val)\n")
        
        // if文で見つかるかのチェック 見つからない場合はnilが返ってきます。
        if let tmpVal = dic01["key02"]{
            println("find=\(tmpVal)")
            self.teString.text = self.teString.text.stringByAppendingFormat("find=\(tmpVal)")
        } else {
            println("not found")
            self.teString.text = self.teString.text.stringByAppendingFormat("not found")
        }
    }
    
    // 辞書データ(Dictionary)全取得
    @IBAction func proc14(sender: AnyObject) {
        
        self.teString.text = nil
        
        var dic01 = ["key01":"1st", "key02":"2st", "key03":"3st"]
        for (key, val) in dic01 {
            println("データ[\(key)]=\(val)")
            self.teString.text = self.teString.text.stringByAppendingFormat("データ[\(key)]=\(val)\n")
        }
    }
    
    // 辞書データ(Dictionary)追加
    @IBAction func proc15(sender: AnyObject) {
        
        self.teString.text = nil
        
        var dic01 = ["key01":"1st", "key02":"2st", "key03":"3st"]
        dic01["key04"] = "4st"
        println("追加:\(dic01)")
        self.teString.text = self.teString.text.stringByAppendingFormat("追加:\(dic01)")
    }
    
    // 辞書データ(Dictionary)更新
    @IBAction func proc16(sender: AnyObject) {
        
        self.teString.text = nil
        
        ///////////
        // 配列作成
        var dic01 = ["key01":"1st", "key02":"2st", "key03":"3st"]
        // 要素の置換
        dic01["key03"] = "3r3st" // ["1stだだ", "2nd", "3r3rd"]
        self.teString.text = self.teString.text.stringByAppendingFormat("置換:\(dic01)")

    }
    
    // 辞書データ(Dictionary)削除
    @IBAction func proc17(sender: AnyObject) {
        
        self.teString.text = nil
        
        var dic01 = ["key01":"1st", "key02":"2st", "key03":"3st"]
        dic01 .removeValueForKey("key01")
        println("削除:\(dic01)")
        self.teString.text = self.teString.text.stringByAppendingFormat("削除:\(dic01)")
        
    }
}

