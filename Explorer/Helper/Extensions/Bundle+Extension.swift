//
//  Bundle+Extension.swift
//  Explorer
//
//  Created by Zagahr on 20/11/2018.
//  Copyright © 2018 Zagahr. All rights reserved.
//

import Foundation


extension Bundle {
    
    var versionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    var buildNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    
    var prettyVersionString: String {
        let version = versionNumber ?? "Unknown"
        let build = buildNumber ?? "0"
        let format = NSLocalizedString("Version %@ (%@)", comment: "")
        return String(format: format, arguments: [version, build])
    }
    
}
