import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let rect:CGRect = CGRect(x: (self.view.bounds.width - 300)/2, y: 32, width: 300, height: 60)
        let label = UILabel.init(frame: rect)
        //设置Label背景颜色
        label.backgroundColor = UIColor.white
        //设置label的字体颜色(系统颜色)
        label.textColor = UIColor.darkGray
        /**设置label的字体颜色(RGB）
         label.textColor = UIColor.init(red: 255, green: 255, blue: 0, alpha: 1)
         */
        //设置Label的字体大小
        label.font = UIFont.systemFont(ofSize: 24)
        /**
         设置字体的大小和样式
         label.font = UIFont.init(name: "Thonburi", size: 30)
         */
        //对齐方式
        label.textAlignment = NSTextAlignment.center
        //阴影颜色
        label.shadowColor = UIColor.white
        //阴影偏移大小
        label.shadowOffset = CGSize.init(width: 3, height: 4)
        //显示内容
        label.text = "IOS 中控锁 DEMO"
        self.view.addSubview(label)
        
        let szMargin : CGFloat =  50
        let szGap : CGFloat =  10
        let szTop : CGFloat =  150
        let szBottom : CGFloat =  80
        let screenh = UIScreen.main.bounds.size.height
        let screenw = UIScreen.main.bounds.size.width
        let btnWidth1 = (screenw-szMargin*2 - szGap)/2
        let btnHeight1 = (screenh-szTop - szBottom - szGap*5)/6
        
        let btn1 = createButton(title: "1#", width: btnWidth1, height: btnHeight1)
        btn1.frame.origin = CGPoint(x: (self.view.bounds.width/2 - btnWidth1 - 5),
                                    y: szTop)
        self.view.addSubview(btn1)

        let btn2 = createButton(title: "2#", width: btnWidth1, height: btnHeight1)
        btn2.frame.origin = CGPoint(x: (self.view.bounds.width/2 + 5),
                                    y: szTop)
        self.view.addSubview(btn2)
        
        let btn3 = createButton(title: "3#", width: btnWidth1, height: btnHeight1)
        btn3.frame.origin = CGPoint(x: (self.view.bounds.width/2 - btnWidth1 - 5),
                                    y: szTop + btnHeight1 + 10)
        self.view.addSubview(btn3)
        
        let btn4 = createButton(title: "4#", width: btnWidth1, height: btnHeight1)
        btn4.frame.origin = CGPoint(x: (self.view.bounds.width/2 + 5),
                                    y: szTop + btnHeight1 + 10)
        self.view.addSubview(btn4)
        
        let btn5 = createButton(title: "5#", width: btnWidth1, height: btnHeight1)
        btn5.frame.origin = CGPoint(x: (self.view.bounds.width/2 - btnWidth1 - 5),
                                    y: szTop + btnHeight1*2 + 10*2)
        self.view.addSubview(btn5)
        
        let btn6 = createButton(title: "6#", width: btnWidth1, height: btnHeight1)
        btn6.frame.origin = CGPoint(x: (self.view.bounds.width/2 + 5),
                                    y: szTop + btnHeight1*2 + 10*2)
        self.view.addSubview(btn6)
        
        let btn7 = createButton(title: "7#", width: btnWidth1, height: btnHeight1)
        btn7.frame.origin = CGPoint(x: (self.view.bounds.width/2 - btnWidth1 - 5),
                                    y: szTop + btnHeight1*3 + 10*3)
        self.view.addSubview(btn7)
        
        let btn8 = createButton(title: "8#", width: btnWidth1, height: btnHeight1)
        btn8.frame.origin = CGPoint(x: (self.view.bounds.width/2 + 5),
                                    y: szTop + btnHeight1*3 + 10*3)
        self.view.addSubview(btn8)
        
        let btn9 = createButton(title: "9#", width: btnWidth1, height: btnHeight1)
        btn9.frame.origin = CGPoint(x: (self.view.bounds.width/2 - btnWidth1 - 5),
                                    y: szTop + btnHeight1*4 + 10*4)
        self.view.addSubview(btn9)
        
        let btn10 = createButton(title: "10#", width: btnWidth1, height: btnHeight1)
        btn10.frame.origin = CGPoint(x: (self.view.bounds.width/2 + 5),
                                    y: szTop + btnHeight1*4 + 10*4)
        self.view.addSubview(btn10)
        
        let btn11 = createButton(title: "11#", width: btnWidth1*2 + 10, height: btnHeight1)
        btn11.frame.origin = CGPoint(x: (self.view.bounds.width/2 - btnWidth1 - 5),
                                     y: szTop + btnHeight1*5 + 10*5)
        self.view.addSubview(btn11)
/*
        let btn3 = createButton(title: "3#")
        btn3.frame.origin.y = self.view.bounds.height - btn3.frame.height
        self.view.addSubview(btn3)
        
        let btn4 = createButton(title: "4#")
        btn4.frame.origin = CGPoint(x: self.view.bounds.width - btn4.frame.width,
                                    y: self.view.bounds.height - btn4.frame.height)
        self.view.addSubview(btn4)
        
        let btn5 = createButton(title: "5#")
        btn5.center = CGPoint(x: self.view.bounds.width / 2,
                              y: self.view.bounds.height / 2)
        self.view.addSubview(btn5)
        
        let btn6 = createButton(title: "6#")
        btn6.center.x = self.view.bounds.width / 2
        self.view.addSubview(btn6)
        
        let btn7 = createButton(title: "7#")
        btn7.center.y = self.view.bounds.height / 2
        self.view.addSubview(btn7)
        
        let btn8 = createButton(title: "8#")
        btn8.frame.origin.x = self.view.bounds.width - btn8.frame.width
        btn8.center.y = self.view.bounds.height / 2
        self.view.addSubview(btn8)
        
        let btn9 = createButton(title: "9#")
        btn9.center.x = self.view.bounds.width / 2
        btn9.frame.origin.y = self.view.bounds.height - btn9.frame.height
        self.view.addSubview(btn9)
*/
        //给按钮绑定点击事件
        //btTest.addTarget(self, action: #selector(ViewController.buttonUpInside(_:)), for: UIControlEvents.touchUpInside)
        //btTest.addTarget(self, action: #selector(ViewController.buttonDown(_:)), for: UIControlEvents.touchDown)
        
        
        //self.view.addSubview(btTest)//将3个按钮添加到当前视图控制器的根视图
        //let screenh = UIScreen.main.bounds.size.height
        //let screenw = UIScreen.main.bounds.size.width
        print("width: \(screenw), height: \(screenh)")
        
    }
    
    func createButton(title: String, width: CGFloat, height: CGFloat) -> UIButton {
        //创建一个ContactAdd类型的按钮
        let button:UIButton = UIButton(type:.roundedRect)
        //设置按钮大小
        
        button.frame.size = CGSize(width: width, height: height)
        button.backgroundColor = UIColor.darkGray
        button.tintColor = UIColor.white
        button.layer.masksToBounds = true//给按钮添加边框效果
        button.layer.cornerRadius = 5//设置按钮的圆角半径
        button.layer.borderWidth = 1//设置边框宽度
        button.layer.borderColor = UIColor.lightGray.cgColor//设置按钮层边框的颜色
        //设置按钮文字
        button.setTitle(title, for: UIControlState.normal)
        return button
    }
    
    @objc func buttonUpInside(_ button:UIButton) {
        let alert = UIAlertController(title: "Information", message: "UIButton Event.", preferredStyle: UIAlertControllerStyle.alert)//创建一个警告弹出窗口
        //创建一个按钮作为警告窗口的“确定”按钮
        let OKAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(OKAction)//将确定按钮添加到警告窗口中
        self.present(alert, animated: true, completion: nil)//在当前视图控制器中，展示提示窗口
        
    }
    @objc func buttonDown(_ button:UIButton) {
        NSLog("按下按钮");
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //自定义打印日志
    func PrintLog<T>(_ message: T, fileName: String = #file, methodName: String = #function, lineNumber: Int = #line){
        //文件名、方法、行号、打印信息
        //print("\(fileName as NSString)\n方法:\(methodName)\n行号:\(lineNumber)\n打印信息\(message)");
        print("方法:\(methodName)  行号:\(lineNumber)\n打印信息:\(message)");
    }

}

