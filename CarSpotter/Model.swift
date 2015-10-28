//
//  Model.swift
//  CarSpotter
//
//  Created by Jena Grafton on 10/28/15.
//  Copyright © 2015 Bella Voce Productions. All rights reserved.
//

import UIKit
import CoreData



class Model: NSManagedObject {
    
    @NSManaged var carmake: String
    @NSManaged var carmodel: String
    @NSManaged var caryear: String
    

}
