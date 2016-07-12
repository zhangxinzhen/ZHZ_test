
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.title = "按钮"
        for i in 1..<5 {
            
            print("你好")
            print("你好")
            print("你好")
           
            print("你好")
            print("你好")
            print("你好")

            let btn = UIButton(type: .Custom)
            view.addSubview(btn)
            btn.tag = i
            btn.frame = CGRectMake(0, CGFloat(60*i), view.frame.size.width, 50)
            btn.backgroundColor = UIColor.redColor()
            btn.setTitle(("按钮"+"\(i)"), forState: .Normal)
            btn.addTarget(self, action: #selector(ViewController.zaijian(_:)), forControlEvents: .TouchUpInside)
        }
    }
    func zaijian(sender:UIButton){
        print("nihao" + "\(sender.tag)")
        switch sender.tag {
        case 1:
            let btnVC = BtnViewController();
            self.navigationController!.pushViewController(btnVC, animated: true)
            print("nihao")
        case 2:
            let textVc = TextViewController()
            self.navigationController?.pushViewController(textVc, animated: true)
            print("nihao" + "\(sender.tag)")
        default: break
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
print("测试：增加的一个分支")
    }


}

