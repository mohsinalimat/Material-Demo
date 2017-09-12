//
//  MainResponse.swift
//
//
//  Created by WebMob on 28/09/16.
//
//

import UIKit

class MainResponse: NSObject
{
    
    // MARK: - Attributes -
    
    var contactListArray:NSMutableArray!
    
    // MARK: - Lifecycle -
    required override init() {
        super.init()
    }
    
    // MARK: - Public Interface -
    func getModelFromResponse(response : AnyObject , task : APITask) -> AnyObject {
        let returnModel : AnyObject = response
        
        switch task {
            
        case .Login, .Register, .FetchProfile, .EditProfile, .PaymentStatus, .UserRole, .AddVehicleDetails:
            
            break
            
            
        default: break
        }
        
        return returnModel
    }
    
    // MARK: - Internal Helpers -
    
    
}
