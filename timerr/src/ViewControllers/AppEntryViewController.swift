//
//  AppEntryViewController.swift
//  timerr
//
//  Created by Jimmy on 5/10/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class AppEntryViewController: UIViewController {
    
    private let appEntryView = AppEntryView()

    override func viewDidLoad() {
        super.viewDidLoad()
        appEntryView.setController(self)
        self.view.addSubview(appEntryView.view)
        appEntryView.startLoader()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        appEntryView.stopLoader()
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
