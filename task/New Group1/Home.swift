//
//  Home.swift
//  task
//
//  Created by saiko diabovic on 8/13/18.
//  Copyright © 2018 cloudconnectiv. All rights reserved.
//

import UIKit

class Home: UIViewController , UITextFieldDelegate , UITableViewDataSource , UITableViewDelegate , URLSessionDelegate{

    var contentArray: Content? {
        didSet {
            //reload the data in the table View,
            firstTableView.reloadData()
            secondTableView.reloadData()
        }
    }
    @IBOutlet var headerBarCounter: UIView!
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var iconImage: UIImageView!
    @IBOutlet var searchBar: UITextField!
    @IBOutlet var firstTableView: UITableView!
    @IBOutlet var secondTableView: UITableView!
    

 //dodload function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        headerBarCounter.layer.cornerRadius = 10
        iconImage.layer.cornerRadius = 10

        userImage.layer.cornerRadius = userImage.frame.size.width / 2
        userImage.layer.masksToBounds = true
        
        searchBar.delegate = self

        self.firstTableView.delegate = self
        self.firstTableView.dataSource = self
        self.secondTableView.delegate = self
        self.secondTableView.dataSource = self
        
    }
//tableView functions
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray?.content.count ?? 0
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == firstTableView {
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? CustomTableViewCell
        
            cell?.serverName.text = contentArray?.content[indexPath.row].name
            cell?.ipAddress.text = contentArray?.content[indexPath.row].ipAddress
            cell?.deviceIPSubnetMask.text = contentArray?.content[indexPath.row].ipSubnetMask

            cell?.serverImage.layer.cornerRadius = (cell?.serverImage.frame.size.width)! / 2
            cell?.serverImage.layer.masksToBounds = true

            cell?.soundBackGround.layer.cornerRadius = (cell?.soundBackGround.frame.size.width)! / 2
            cell?.soundBackGround.layer.masksToBounds = true

            cell?.alarmBackGround.layer.cornerRadius = (cell?.alarmBackGround.frame.size.width)! / 2
            cell?.alarmBackGround.layer.masksToBounds = true

            cell?.phoneBackGround.layer.cornerRadius = (cell?.phoneBackGround.frame.size.width)! / 2
            cell?.phoneBackGround.layer.masksToBounds = true

            cell?.checkBackGround.layer.cornerRadius = (cell?.checkBackGround.frame.size.width)! / 2
            cell?.checkBackGround.layer.masksToBounds = true

            cell?.statusBackGroundView.layer.cornerRadius = (cell?.statusBackGroundView.frame.size.width)! / 2
            cell?.statusBackGroundView.layer.masksToBounds = true

            return cell!

            }
        
         else if tableView == secondTableView {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell2") as? Custom2TableViewCell
            
            cell?.serverName.text = contentArray?.content[indexPath.row].name
            cell?.ipAddress.text = contentArray?.content[indexPath.row].ipAddress
            cell?.DeviceIPSubnetMask.text = contentArray?.content[indexPath.row].ipSubnetMask
            cell?.serverImage.layer.cornerRadius = (cell?.serverImage.frame.size.width)! / 2
            cell?.serverImage.layer.masksToBounds = true

            cell?.soundBackGround.layer.cornerRadius = (cell?.soundBackGround.frame.size.width)! / 2
            cell?.soundBackGround.layer.masksToBounds = true

            cell?.alarmBackGround.layer.cornerRadius = (cell?.alarmBackGround.frame.size.width)! / 2
            cell?.alarmBackGround.layer.masksToBounds = true

            cell?.phoneBackGround.layer.cornerRadius = (cell?.phoneBackGround.frame.size.width)! / 2
            cell?.phoneBackGround.layer.masksToBounds = true

            cell?.checkBackground.layer.cornerRadius = (cell?.checkBackground.frame.size.width)! / 2
            cell?.checkBackground.layer.masksToBounds = true

            cell?.statusBackGroundView.layer.cornerRadius = (cell?.statusBackGroundView.frame.size.width)! / 2
            cell?.statusBackGroundView.layer.masksToBounds = true

            return cell!
        }
        
        return UITableViewCell()
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
//function to dismiss the keyboard when u touch any where
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
//get info from server
    func loadData() {
        // credentials encoded in base64
        let username = "admin@boot.com"
        let password = "admin"
        let loginData = String(format: "%@:%@", username, password).data(using: String.Encoding.utf8)!
        let base64LoginData = loginData.base64EncodedString()
        // create the request
        let url = URL(string: "https://45.55.43.15:9090/api/machine?page=0&size=10")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.setValue("Basic \(base64LoginData)", forHTTPHeaderField: "Authorization")
        httpGet(request: request)
        
    }
    
    func httpGet(request: URLRequest) {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration, delegate: self, delegateQueue: .main)
        let task = session.dataTask(with: request){
            (data, response, error) -> Void in
            if error == nil {
                
                do{
                    guard let data = data else {return}
                    let object = try JSONDecoder().decode(Content.self, from: data)
                    self.contentArray = object
                }catch{
                    print (error)
                }
            }
        }
        task.resume()
    }
    func urlSession(_ session: URLSession, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
        completionHandler(URLSession.AuthChallengeDisposition.useCredential, URLCredential(trust: challenge.protectionSpace.serverTrust!) )
    }
}
