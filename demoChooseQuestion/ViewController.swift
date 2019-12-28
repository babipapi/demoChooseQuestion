//
//  ViewController.swift
//  demoChooseQuestion
//
//  Created by Daniel on 2019/12/24.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choose1Button: UIButton!
    @IBOutlet weak var choose2Button: UIButton!
    @IBOutlet weak var choose3Button: UIButton!
    @IBOutlet weak var gradeLabel: UILabel!
    
    var index = 1
    var questions = [Question]()
    var point = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gradeLabel.text = "0"
        let question1 = Question()
        question1.description = "下列選項「」中的字，何組讀音兩兩相同?"
        question1.choose1 = "(1)倉「卒」逃走/身先士「卒」"
        question1.choose2 = "(2)培「養」興 趣/奉「養」父母"
        question1.choose3 = "(3)「朝」夕相處/「朝」三暮四"
        question1.answer = "(3)「朝」夕相處/「朝」三暮四"
        questions.append(question1)
        
        let question2 = Question()
        question2.description = "下列「 」中的注音寫成國字後，何組字形前後相同?"
        question2.choose1 = "(1)安「ㄒㄧㄤˊ」自在/仔細端「ㄒㄧㄤˊ」"
        question2.choose2 = "(2)「ㄈㄣˋ」發向上/發「ㄈㄣˋ」圖強"
        question2.choose3 = "(3)臃「ㄓㄨㄥˇ」不堪/摩肩接「ㄓㄨㄥˇ」"
        question2.answer = "(1)安「ㄒㄧㄤˊ」自在/仔細端「ㄒㄧㄤˊ」"
        questions.append(question2)
        
        let question3 = Question()
        question3.description = "「其實，我那年已二十歲，北京已來往過兩三次。」句中的「二十歲」可換成下列何者?"
        question3.choose1 = "(1)弱冠之年"
        question3.choose2 = "(2)強仕之年"
        question3.choose3 = "(3)志學之年"
        question3.answer = "(1)弱冠之年"
        questions.append(question3)
        
        let question4 = Question()
        question4.description = "下列「 」中的「之」字，何者當代詞使用?"
        question4.choose1 = "(1)事「之」以禮"
        question4.choose2 = "(2)物外「之」趣"
        question4.choose3 = "(3)送孟浩然「之」廣陵"
        question4.answer = "(1)事「之」以禮"
        questions.append(question4)
        
        let question5 = Question()
        question5.description = "「芬」與「芳」皆指「香氣」，為同義複詞，下列何者不屬於此種用法?"
        question5.choose1 = "(1)理想"
        question5.choose2 = "(2)龐大"
        question5.choose3 = "(3)柔弱"
        question5.answer = "(1)理想"
        questions.append(question5)
        
        let question6 = Question()
        question6.description = "下列選項「 」中的字，何組讀音前後相同?"
        question6.choose1 = "(1)「重」新╱「重」量"
        question6.choose2 = "(2)知「識」╱默 而「識」之"
        question6.choose3 = "(3)「予」唯不食嗟來之食╱「予」取予求"
        question6.answer = "(3)「予」唯不食嗟來之食╱「予」取予求"
        questions.append(question6)
        
        let question7 = Question()
        question7.description = "下列「 」中量詞的使用，何者最正確?"
        question7.choose1 = "(1)一「串」光線"
        question7.choose2 = "(2)一「代」晚霞"
        question7.choose3 = "(3)一「條」胳臂"
        question7.answer = "(3)一「條」胳臂"
        questions.append(question7)
        
        let question8 = Question()
        question8.description = "「無遠弗屆」其實是透過「無......不......」的句法結構，表達正面的、肯定的意義，甚至有加強 語氣的功能，下列何者不屬於這種情形?"
        question8.choose1 = "(1)無故不來"
        question8.choose2 = "(2)無話不說"
        question8.choose3 = "(3)無奇不有"
        question8.answer = "(1)無故不來"
        questions.append(question8)
        
        let question9 = Question()
        question9.description = "下列各文句「 」中的字義，何者說明正確?"
        question9.choose1 = "(1)天下之樂，「孰」大於是:誰"
        question9.choose2 = "(2)凡事不宜「刻」:刻薄"
        question9.choose3 = "(3)善讀書者，無「之」而非書:指各種事物"
        question9.answer = "(3)善讀書者，無「之」而非書:指各種事物"
        questions.append(question9)
        
        let question10 = Question()
        question10.description = "下列文句「 」中的詞語，何者用字正確?"
        question10.choose1 = "(1)她的歌聲「清脆嘹亮」，悅耳動聽，深獲歌迷的喜愛"
        question10.choose2 = "(2)我們倆是多年的好友，他的個性我早已「撩若指掌」"
        question10.choose3 = "(3)百貨公司各式各樣的 商品，看得他「眼花瞭亂」"
        question10.answer = "(1)她的歌聲「清脆嘹亮」，悅耳動聽，深獲歌迷的喜愛"
        questions.append(question10)
        
        let question11 = Question()
        question11.description = "下列「 」中的注音寫成國字後，何組字形兩兩相同?"
        question11.choose1 = "(1)「ㄍㄨㄢ」察/「ㄍㄨㄢ」心"
        question11.choose2 = "(2)「ㄓㄣ」重再見/「ㄓㄣ」情流露"
        question11.choose3 = "(3)「ㄧㄣ」緣際會/「ㄧㄣ」襲守舊"
        question11.answer = "(3)「ㄧㄣ」緣際會/「ㄧㄣ」襲守舊"
        questions.append(question11)
        
        let question12 = Question()
        question12.description = "「人若不做虧心事，便能□□□□，若不受現實成見束縛，便心情開朗，□□□□。」上文缺空處，依 序宜填入下列何者?"
        question12.choose1 = "(1)悲天憫人、海闊天空"
        question12.choose2 = "(2)海闊天空、悲天憫人"
        question12.choose3 = "(3)心安理得、海闊天空"
        question12.answer = "(3)心安理得、海闊天空"
        questions.append(question12)
        
        let question13 = Question()
        question13.description = "「蜘蛛」一詞屬聲母相同的雙聲關係，下列「 」中的詞語，何者也屬於雙聲關係?(甲)「馨香」盈懷袖 (乙)「玲瓏」剔透 (丙)「蕭瑟」淒涼 (丁)「琵琶」別抱(戊)意興「闌珊」"
        question13.choose1 = "(1)甲乙丙"
        question13.choose2 = "(2)乙丁戊"
        question13.choose3 = "(3)甲乙丁"
        question13.answer = "(3)甲乙丁"
        questions.append(question13)
        
        let question14 = Question()
        question14.description = "「□□，是拿別人的錯誤來懲罰自己。」(康德)句中缺空處宜填入下列何者?"
        question14.choose1 = "(1)驕傲"
        question14.choose2 = "(2)憤怒"
        question14.choose3 = "(3)責備"
        question14.answer = "(2)憤怒"
        questions.append(question14)
        
        let question15 = Question()
        question15.description = "「田□雜林、□比南山、□躇徘徊、虔誠□告」以上缺空處的字，依序應填入下列何者?"
        question15.choose1 = "(1)籌、壽、疇、禱"
        question15.choose2 = "(2)疇、壽、躊、禱"
        question15.choose3 = "(3)儔、籌、懤、擣"
        question15.answer = "(2)疇、壽、躊、禱"
        questions.append(question15)
        
        let question16 = Question()
        question16.description = "下列選項中的「好」字，何者音義與其他三者不同?"
        question16.choose1 = "(1)「好」逞易窮"
        question16.choose2 = "(2)「好」高騖遠"
        question16.choose3 = "(3)見「好」就收"
        question16.answer = "(3)見「好」就收"
        questions.append(question16)
        
        let question17 = Question()
        question17.description = "(甲)陶淵明集 (乙)老殘遊記 (丙)昭明文選 (丁)歐陽文忠公集。若依照成書年代先後排列，正確的順序是下列何者?"
        question17.choose1 = "(1)甲丙丁乙"
        question17.choose2 = "(2)丙甲丁乙"
        question17.choose3 = "(3)丙丁甲乙"
        question17.answer = "(1)甲丙丁乙"
        questions.append(question17)
        
        let question18 = Question()
        question18.description = "(甲)「撒」滿/「撒」謊 (乙)「熹」微/慈「禧」太后(丙)「瞇」眼/萬人「迷」(丁)寬「敞」/工「廠」 (戊)分「辨」/「辦」公。以上各組「 」中的字，哪些讀音兩兩相同?"
        question18.choose1 = "(1)乙丁"
        question18.choose2 = "(2)乙戊"
        question18.choose3 = "(3)甲乙"
        question18.answer = "(1)乙丁"
        questions.append(question18)
        
        let question19 = Question()
        question19.description = "中國成語有一種結構，即近義詞語的重複。例如「提綱挈領」一語中「提綱」與「挈領」意義相 仿。下列成語的結構，何者與此不同?"
        question19.choose1 = "(1)玩日愒歲"
        question19.choose2 = "(2)堆金砌玉"
        question19.choose3 = "(3)夙興夜寐"
        question19.answer = "(3)夙興夜寐"
        questions.append(question19)
        
        let question20 = Question()
        question20.description = "下列詞語，何者用字完全正確?"
        question20.choose1 = "(1)寬大胸襟"
        question20.choose2 = "(2)遵重對方"
        question20.choose3 = "(3)創作元則"
        question20.answer = "(1)寬大胸襟"
        questions.append(question20)
        
        titleLabel.text = "\(index)"
        
        questions.shuffle()
        
        questionLabel.text = questions[index].description
    choose1Button.setTitle(questions[index].choose1, for: UIControl.State.normal)
    choose2Button.setTitle(questions[index].choose2, for: UIControl.State.normal)
    choose3Button.setTitle(questions[index].choose3, for: UIControl.State.normal)
        
    }

    @IBAction func button1(_ sender: UIButton) {
        if index < questions.count - 10{
            index += 1
            questionLabel.text = ""
            choose1Button.setTitle("", for: UIControl.State.normal)
            choose2Button.setTitle("", for: UIControl.State.normal)
            choose3Button.setTitle("", for: UIControl.State.normal)
        }
        titleLabel.text = "\(index)"
        
        questionLabel.text = questions[index].description
    choose1Button.setTitle(questions[index].choose1, for: UIControl.State.normal)
    choose2Button.setTitle(questions[index].choose2, for: UIControl.State.normal)
    choose3Button.setTitle(questions[index].choose3, for: UIControl.State.normal)
        if questions[index].choose1 == questions[index].answer{
            point = point + 10
            gradeLabel.text = "\(point)"
        }
    }
    
    @IBAction func button2(_ sender: UIButton) {
        if index < questions.count - 10{
            index += 1
            questionLabel.text = ""
            choose1Button.setTitle("", for: UIControl.State.normal)
            choose2Button.setTitle("", for: UIControl.State.normal)
            choose3Button.setTitle("", for: UIControl.State.normal)
        }
        titleLabel.text = "\(index)"
        
        questionLabel.text = questions[index].description
    choose1Button.setTitle(questions[index].choose1, for: UIControl.State.normal)
    choose2Button.setTitle(questions[index].choose2, for: UIControl.State.normal)
    choose3Button.setTitle(questions[index].choose3, for: UIControl.State.normal)
        
        if questions[index].choose2 == questions[index].answer{
            point = point + 10
            gradeLabel.text = "\(point)"
    }
}

    @IBAction func button3(_ sender: UIButton) {
        if index < questions.count - 10{
            index += 1
            questionLabel.text = ""
            choose1Button.setTitle("", for: UIControl.State.normal)
            choose2Button.setTitle("", for: UIControl.State.normal)
            choose3Button.setTitle("", for: UIControl.State.normal)
            }
            titleLabel.text = "\(index)"
            
            questionLabel.text = questions[index].description
        choose1Button.setTitle(questions[index].choose1, for: UIControl.State.normal)
        choose2Button.setTitle(questions[index].choose2, for: UIControl.State.normal)
        choose3Button.setTitle(questions[index].choose3, for: UIControl.State.normal)
            
            if questions[index].choose3 == questions[index].answer{
                point = point + 10
                gradeLabel.text = "\(point)"
        }
    }
    @IBAction func restart(_ sender: Any) {
        index = 1
        titleLabel.text = "\(index)"
        point = 0
        questions.shuffle()
        questionLabel.text = questions[index].description
    choose1Button.setTitle(questions[index].choose1, for: UIControl.State.normal)
    choose2Button.setTitle(questions[index].choose2, for: UIControl.State.normal)
    choose3Button.setTitle(questions[index].choose3, for: UIControl.State.normal)
        
        gradeLabel.text = "\(point)"
    }
}
