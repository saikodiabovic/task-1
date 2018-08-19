//
//  Content2.swift
//  task
//
//  Created by saiko diabovic on 8/15/18.
//  Copyright © 2018 cloudconnectiv. All rights reserved.
//

import Foundation
struct Content: Codable {
    var content: [ContentObject]
}
struct ContentObject: Codable {
    var id: Int?
    var name: String?
    var ipAddress: String?
    var ipSubnetMask: String?
    var model: Model?
    var locationId: Int?
    var status: Status?
    var type: Type?
    var serialNumber: String?
    var version: String?
    var communicationProtocols: [CommunicationProtocols]
    var targetMachines: [TargetMachines]
    var location: Int?
    var serialNum: String?
}
struct Model: Codable {
    var id: Int?
    var name: String?
    var creationDate: Date?
    var expiryDate: Date?
}
struct Status: Codable {
    var id: Int?
    var statusValue: String?
}
struct Type: Codable {
    var id: Int?
    var name: String?
}

struct CommunicationProtocols: Codable {
    var id: Int?
    var name: String?
    var defaultPort: Int?
}

struct TargetMachines:Codable {
    var id: Int?
    var sourceMachineId: Int?
    var targetMachine: ContentObject
    var circuitStatusId: Int?
}

