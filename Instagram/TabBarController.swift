//
//  TabBarController.swift
//  Instagram
//
//  Created by 大杉祐弥 on 2021/09/23.
//

import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //タブアイコンの色
        self.tabBar.tintColor = UIColor(red:1.0, green: 0.44, blue: 0.11, alpha: 1)
        //タブバーの背景色
        self.tabBar.barTintColor = UIColor(red: 0.96, green: 0.91, blue: 0.11, alpha: 1)
        //UITabBarControllerDelegateプロトコルのメソッドをこのクラスで処理する
        self.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    //タブバーのアイコンがタップされた時に呼ばれるdelegateメソッドを処理する
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is ImageSelectViewController {
            //ImageSelectViewControllerはタブ切り替えではなくモーダル画面遷移する
            let imageSelectViewController = storyboard!.instantiateViewController(withIdentifier: "ImageSelect")
            present(imegeSelectViewController, animated: true)
            return false
            
        } else {
            //その他のViewControllerは通常のタブ切り替えを実施
            return true
        }
    }
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
