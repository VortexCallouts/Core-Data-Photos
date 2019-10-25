//
//  ModelController.swift
//  Core-Data-Photos
//
//  Created by Davin Heilich on 10/25/19.
//  Copyright © 2019 Davin Heilich. All rights reserved.
//

import Foundation
import UIKit
import CoreData



let shared = ModelController()

let entityName = "StoredImage"

private var savedObjects = [NSManagedObject]()
private var images = [UIImage]()
private var managedContext: NSManagedObjectContext!

private init() {
    guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
    managedContext = appDelegate.persistentContainer.viewContext
    
    fetchImageObjects()
}
