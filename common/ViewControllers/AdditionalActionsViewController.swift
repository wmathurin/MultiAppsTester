/*
 AdditionalActionsViewController.swift
 SmartSyncExplorerSwift

 Created by Nicholas McDonald on 2/3/18.
 
 Copyright (c) 2018-present, salesforce.com, inc. All rights reserved.
 
 Redistribution and use of this software in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:
 * Redistributions of source code must retain the above copyright notice, this list of conditions
 and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of
 conditions and the following disclaimer in the documentation and/or other materials provided
 with the distribution.
 * Neither the name of salesforce.com, inc. nor the names of its contributors may be used to
 endorse or promote products derived from this software without specific prior written
 permission of salesforce.com, inc.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY
 WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import UIKit

class AdditionalActionsViewController: UITableViewController {
    
    var onToggleStopWhenBackgrounding: (() -> ())?
    var onShowInfo: (() -> ())?
    var onClearLocalData: (() -> ())?
    var onRefreshLocalData: (() -> ())?
    var onSyncDownSelected: (() -> ())?
    var onSyncUpSelected: (() -> ())?
    var onCleanSyncGhostsSelected: (() -> ())?
    var onSyncManagerStopSelected: (() -> ())?
    var onSyncManagerResumeSelected: (() -> ())?
    var onLogoutSelected: (() -> ())?
    var onSwitchUserSelected : (() -> ())?
    var onDBInspectorSelected : (() -> ())?
    var onCancelSelected : (() -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseId")
        self.tableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 13
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseId", for: indexPath)
        
        cell.textLabel?.font = UIFont.appRegularFont(12.0)
        cell.textLabel?.textColor = UIColor.labelText
        
        if indexPath.row == 0 {
            cell.textLabel?.text = "Toggle STOP when backgrounding"
        } else if indexPath.row == 1 {
            cell.textLabel?.text = "Show info"
        } else if indexPath.row == 2 {
            cell.textLabel?.text = "Clear local data"
        } else if indexPath.row == 3 {
            cell.textLabel?.text = "Refresh local data"
        } else if indexPath.row == 4 {
            cell.textLabel?.text = "Sync DOWN"
        } else if indexPath.row == 5 {
            cell.textLabel?.text = "Sync UP"
        } else if indexPath.row == 6 {
            cell.textLabel?.text = "Clean Sync Ghosts"
        } else if indexPath.row == 7 {
            cell.textLabel?.text = "STOP Sync Manager"
        } else if indexPath.row == 8 {
            cell.textLabel?.text = "RESUME Sync Manager"
        } else if indexPath.row == 9 {
            cell.textLabel?.text = "Logout"
        } else if indexPath.row == 10 {
            cell.textLabel?.text = "Switch User"
        } else if indexPath.row == 11 {
            cell.textLabel?.text = "Inspect DB"
        } else if indexPath.row == 12 {
            cell.textLabel?.text = "Cancel"
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            self.onToggleStopWhenBackgrounding?()
        } else if indexPath.row == 1 {
            self.onShowInfo?()
        } else if indexPath.row == 2 {
            self.onClearLocalData?()
        } else if indexPath.row == 3 {
            self.onRefreshLocalData?()
        } else if indexPath.row == 4 {
            self.onSyncDownSelected?()
        } else if indexPath.row == 5 {
            self.onSyncUpSelected?()
        } else if indexPath.row == 6 {
            self.onCleanSyncGhostsSelected?()
        } else if indexPath.row == 7 {
            self.onSyncManagerStopSelected?()
        } else if indexPath.row == 8 {
            self.onSyncManagerResumeSelected?()
        } else if indexPath.row == 9 {
            self.onLogoutSelected?()
        } else if indexPath.row == 10 {
            self.onSwitchUserSelected?()
        } else if indexPath.row == 11 {
            self.onDBInspectorSelected?()
        }else if indexPath.row  == 12 {
            self.onCancelSelected?()
        }
    }
}
