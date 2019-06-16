//
//  QRController.swift
//  timerr
//
//  Created by Jimmy on 6/15/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class QRController: UIViewController, ScreenControllerProtocol {
    
    private let qrView = QRView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavbar()
        self.view.addSubview(qrView.view)
    }
    
    func setupNavbar() {
        self.title = "Scan Me"
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
