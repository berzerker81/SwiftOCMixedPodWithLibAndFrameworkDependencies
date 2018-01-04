//
//  AppSwiftObject.swift
//  SwiftOCMixedPodWithLibAndFrameworkDependencies_Example
//
//  Created by jaybo on 4/1/2018.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import Foundation
import Fabric
import Crashlytics
import SwiftOCMixedPodWithLibAndFrameworkDependencies


class AppSwiftObject {

    func whatsUp() {
        debugPrint("\(type(of: self)).\(#function) \(#line) ")

        // frameworks
        debugPrint("\(type(of: self)).\(#function) \(#line) ", Fabric.sharedSDK())
        debugPrint("\(type(of: self)).\(#function) \(#line) ", Crashlytics.sharedInstance())

        // library
        debugPrint("\(type(of: self)).\(#function) \(#line) ", MiPushSDK.self)

        // pod files
        debugPrint("\(type(of: self)).\(#function) \(#line) ", SwiftObject())
        // TODO:
        // debugPrint("\(type(of: self)).\(#function) \(#line) ", OCObject())
    }

}
