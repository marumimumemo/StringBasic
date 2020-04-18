//
//  ViewController.swift
//  StringBasic
//
//  Created by satoshi.marumoto on 2020/04/18.
//  Copyright © 2020 satoshi.marumoto. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //String宣言
        var art : String
        art = "アート"
        print(art)
        
        //暗黙的String
        let painting = "絵画"
        print(painting)
        
        //IntをStringにキャスト
        let num = String(123)
        print(num)
        
        //空文字の定義
        let emptyStr = ""
        //空文字の定義
        let emptyStr2 = String()
         
        if emptyStr.isEmpty {
            print("空文字です")
        }
        if emptyStr2.isEmpty {
            print("空文字です")
        }
        
        //改行
        let kaigyou = "改行\n開業\n戒行"
        print(kaigyou)
        
        //展開
        let number = 10
        let res = "数字\(number)"
        print(res)
        
        //文字列の長さを数える
        let text = "緊急事態宣言"
        print(text.count)
        
        //文字列の連結
        let m1 = "密閉"
        let m2 = "密集"
        let m3 = "密接"
         
        var m = m1 + m2
        m += m3
        
        print(m)
        
        //文字列の比較
        let overShoot = "OverShoot"
        let pandemik = "pandemik"
        if  overShoot == pandemik {
            print("同じ値")
        } else if overShoot < pandemik {
            print("\(overShoot)より\(pandemik)の方が大きい")
        } else {
            print("\(overShoot)より\(pandemik)の方が小さい")
        }
        
        //Intへ変換
        let satoshi = "3104"
        guard let numb = Int(satoshi) else { return }
        print(numb)
        
        //IntからStringへ変換
        let point = 100
        let perfect1 = String(point)
        let perfect2 = point.description
         
        print("\(perfect1)")
        print("\(perfect2)")
        
        //俳句
        let haiku = """
            名月や
            時が止まりて
            古時計
            """
        print(haiku)
        
        //文字要素の取り出し
        let ochiai = "落合陽一"

        for character in ochiai {
            print(character)
        }
        
        //index(元になるインデックス, offsetBy: ずらす数)で2文字目を取得
        print(ochiai[ochiai.index(ochiai.startIndex, offsetBy: 1)])
        //endIndexは最後の次の文字なのでoffsetByで1つ戻して最後の文字を取得
        print(ochiai[ochiai.index(ochiai.endIndex, offsetBy: -1)])
        
        //最初の文字最後の文字の取り出し
        let sakamoto = "坂本龍一"
        guard let first = sakamoto.first else { return }
        print(first)
        guard let last = sakamoto.last else { return }
        print(last)
        
        // 小文字に変換
        let lowerString = "ABCDEFG".lowercased()
        print(lowerString)
        // 大文字に変換
        let upperString = "abcdefg".uppercased()
        print(upperString)
        
        // あいうえお→アイウエオに変換
        guard let katakana = "あいうえお".applyingTransform(.hiraganaToKatakana, reverse: false) else { return }
        print(katakana)
        // アイウエオ→あいうえおに変換
        guard let hiragana = "アイウエオ".applyingTransform(.hiraganaToKatakana, reverse: true) else { return }
        print(hiragana)
        
        // ABCDE→ＡＢＣＤＥに変換
        guard let zenkaku = "ABCDE".applyingTransform(.fullwidthToHalfwidth, reverse: true) else { return }
        print(zenkaku)
        // ＡＢＣＤＥ→ABCDEに変換
        guard let hankaku = "ＡＢＣＤＥ".applyingTransform(.fullwidthToHalfwidth, reverse: false) else { return }
        print(hankaku)
        
        let moji = "ABCDEFG"
        // 先頭３文字取得
        let prefixMoji = moji.prefix(3)
        print(prefixMoji)
        // 末尾2文字取得
        let suffixMoji = moji.suffix(2)
        print(suffixMoji)
        
        
        let sentence = "犬神家の猫神"
        // 文字列検索 rangeに範囲が代入される
        if let range = sentence.range(of: "犬神") {
            print("\(sentence[range])が見つかりました。")
        } else {
            print("文字列は見つかりませんでした。")
        }
        
        // 文字列の分割
        let moji1 = "ABC,DEF,GHI"
        let array1 = moji1.components(separatedBy: ",")
        print(array1)

        // 改行コードで分割
        let moji2 = "ABC\nDEF\nGHI"
        let array2 = moji2.components(separatedBy: .newlines)
        print(array2)
        
        // 文字の置換 直接書換
        var hana = "赤い花"
        if let range = hana.range(of: "赤い") {
            hana.replaceSubrange(range, with: "青い")
            print(hana)
        }
        
        // 文字の置換 置換後も元の文字列を保持
        if let range = hana.range(of: "赤い") {
            let hana2 = hana.replacingCharacters(in: range, with:  "青い")
            print(hana)  // 赤い花
            print(hana2) // 青い花
        }
        
        // 文字の置換
        var voice = "黄色い声"
        voice = voice.replacingOccurrences(of: "黄色い", with: "オレンジの")
        print(voice)
        
        // 特定の文字が含まれているかチェック
        let nakano = "中納良恵"
        if nakano.contains("中納") {
            print("一致")
        } else {
            print("不一致")
        }
        
        // 空白文字の削除
        let myString = "  \t\t  Let's trim all the whitespace  \n \t  \n  "
        let trimmedString = myString.trimmingCharacters(in: .whitespacesAndNewlines)
        print(trimmedString)
    }


}

