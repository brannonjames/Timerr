//
//  LapTable.swift
//  timerr
//
//  Created by Jimmy on 6/7/19.
//  Copyright © 2019 Jimmy Brannon. All rights reserved.
//

import UIKit

class LapTable: UITableView, UITableViewDelegate, UITableViewDataSource  {
    
//    private let tableView = UITableView()
    private let cellReuseId = "lapCell"
    private var laps: [String] = []
    private let styles = AppStyle.shared
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: .grouped)
        self.delegate = self
        self.dataSource = self
        self.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseId)
        self.backgroundColor = styles.colors.background        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func addLap(_ lap: String) {
        laps.insert(lap, at: 0)
        self.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return laps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = self.dequeueReusableCell(withIdentifier: cellReuseId) as UITableViewCell? else {
            return UITableViewCell()
        }
        cell.textLabel?.text = laps[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40;
    }
    
    
}
