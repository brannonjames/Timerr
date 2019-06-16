//
//  QRView.swift
//  timerr
//
//  Created by Jimmy on 6/15/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class QRView: UINavigationController {

    private var controller: QRController?
    private let styles = AppStyle.shared
    private let bodyText = "Scan QR Code"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setController(_ controller: QRController) {
        self.controller = controller
    }
    
    func setupViews() {
        let margins: UILayoutGuide = self.view.safeAreaLayoutGuide
        
        let bodyTextView = addSubview(styles.fonts.getH2(description));
        
        
        
        
        
    }
    
    func addSubview(_ view: UIView? = UIView()) -> UIView {
        view!.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view!)
        return view!
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
