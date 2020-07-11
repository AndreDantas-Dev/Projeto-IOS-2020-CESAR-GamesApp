//
//  ViewController+CoreData.swift
//  MyGames
//
//  Created by aluno on 16/05/20.
//  Copyright © 2020 aluno. All rights reserved.
//

import UIKit
import CoreData
extension UIViewController {
   
    // propriedade computada que através de uma Extension permite agora que qualquer
    // objeto UIViewController conheça essa propriedade context.
   
    var context: NSManagedObjectContext {
       
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
       
        // obtem a instancia do Core Data stack
        return appDelegate.persistentContainer.viewContext
    }
}
