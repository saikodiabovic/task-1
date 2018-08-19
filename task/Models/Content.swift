////
////  Container.swift
////  task
////
////  Created by saiko diabovic on 8/13/18.
////  Copyright © 2018 cloudconnectiv. All rights reserved.
////
//
//import Foundation
//
//class Content {
//    
//    var id : String = ""
//    var name : String = ""
//    var ipAddress : String = ""
//    var ipSubnetMask : String = ""
//    var model = [Model]()
//    var locationId : String = ""
//    var status = [Status]()
//    var type = [Type]()
//    var serialNumber : String = ""
//    var version : String = ""
//    var communicationProtocols = [CommunicationProtocols]()
//    var targetMachines = [TargetMachines]()
//    var location : String = ""
//    var serialNum : String = ""
//    
//    init(id: String , name: String , ipAdress: String, ipSubnetMask: String, locationId: String, serialNumber: String, version: String ,location: String , serialNum: String) {
//        self.id = id
//        self.name = name
//        self.ipAddress = ipAdress
//        self.ipSubnetMask = ipSubnetMask
//        self.locationId = locationId
//        self.serialNumber = serialNumber
//        self.version = version
//        self.location = location
//        self.serialNum = serialNum
//    }
//    init(id: String , name: String , ipAdress: String, ipSubnetMask: String, model:[
//        Model],locationId: String, status:[Status], type:[Type], serialNumber: String, version: String ,communicationProtocols:[CommunicationProtocols], targetMachines:[TargetMachines], location: String , serialNum: String) {
//        self.id = id
//        self.name = name
//        self.ipAddress = ipAdress
//        self.ipSubnetMask = ipSubnetMask
//        self.model = model
//        self.locationId = locationId
//        self.status = status
//        self.type = type
//        self.serialNumber = serialNumber
//        self.version = version
//        self.communicationProtocols = communicationProtocols
//        self.targetMachines = targetMachines
//        self.location = location
//        self.serialNum = serialNum
//    }
//    
//    func getID() -> String {
//        return id
//    }
//    func  getName() -> String {
//        return name
//    }
//    func getIPAddress() -> String {
//        return ipAddress
//    }
//    func getIPSubnetMask() -> String {
//        return ipSubnetMask
//    }
//    func getModel() -> [Model] {
//        return model
//    }
//    func getLocationID() -> String {
//        return locationId
//    }
//    func getStatus() -> [Status] {
//        return status
//    }
//    func  getType() -> [Type] {
//        return type
//    }
//    func getSerialNumber() -> String {
//        return serialNumber
//    }
//    func  getVersion() -> String {
//        return version
//    }
//    func getCommunicationProtocols() -> [CommunicationProtocols] {
//        return communicationProtocols
//    }
//    func getTargetMachines() -> [TargetMachines] {
//        return targetMachines
//    }
//    func getLocation() -> String {
//        return location
//    }
//    func getSerialNum() -> String {
//        return serialNum
//    }
//    
//}
