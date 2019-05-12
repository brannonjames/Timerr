//
//  AppEntryViewController.swift
//  timerr
//
//  Created by Jimmy on 5/10/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class AppEntryController: UIViewController {

    private let appEntryView = AppEntryView()
    
    private var isAuthenticated = true

    override func viewDidLoad() {
        super.viewDidLoad()
        appEntryView.setController(self)
        self.view.addSubview(appEntryView.view)
        appEntryView.startLoader()
        
        handleNavigation()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        appEntryView.stopLoader()
    }
    


     // MARK: - Navigation


    func handleNavigation() {
        if isAuthenticated {
            let nextController = AppController()
            self.navigationController?.pushViewController(nextController, animated: false)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         //Get the new view controller using segue.destination.
         //Pass the selected object to the new view controller.
    }

}
