//
//  AddViewController.swift
//  CarSpotter
//
//  Created by Jena Grafton on 10/28/15.
//  Copyright © 2015 Bella Voce Productions. All rights reserved.
//

import UIKit
import CoreData


class AddViewController: UIViewController {
    
    
    @IBOutlet var textFieldCarMake: UITextField!
    
    @IBOutlet var textFieldCarModel: UITextField!
    
    @IBOutlet var textFieldCarYear: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func save(sender: AnyObject) {
        //set up the app delegate
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        //context for the managed app context
        let theContext: NSManagedObjectContext = appDel.managedObjectContext
        //entity description to enter and locate name of the CarList
        let theEnt = NSEntityDescription.entityForName("CarList", inManagedObjectContext: theContext)
        
        //add newItem to Car Entity or CarList
        let newItem = Model(entity: theEnt!, insertIntoManagedObjectContext: theContext)
        
        //add 3 strings to newItem
        newItem.carmake = textFieldCarMake.text!
        newItem.carmodel = textFieldCarModel.text!
        newItem.caryear = textFieldCarYear.text!
        
        //save it to the context before dismissing the view
        do{
            try theContext.save()
        } catch _ {
            
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }

}











