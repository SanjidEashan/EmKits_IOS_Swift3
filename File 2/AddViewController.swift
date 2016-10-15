//
//  AddViewController.swift
//  File 2
//


import UIKit

class AddViewController: UIViewController {


    @IBOutlet weak var dSpecialist: UITextField!
    @IBOutlet weak var dName: UITextField!
    @IBOutlet weak var dDegree: UITextField!
    @IBOutlet weak var dAddress: UITextField!
    @IBOutlet weak var dPhone: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(AddViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitReport(sender: AnyObject) {
        
        
        
        let email = self.dDegree.text
        let password = self.dAddress.text
        let repeatPassword = self.dPhone.text
        let name = self.dName.text
        let Spe = self.dSpecialist.text
        // Check for empty fields
        if(email!.isEmpty || password!.isEmpty || repeatPassword!.isEmpty || name!.isEmpty || Spe!.isEmpty )
        {
            
            // Display alert message
            
            displayMyAlertMessage("All fields are required");
            
            return;
        }
        
        displayMyAlertMessage(" Your Request Has Been Submitted ");
        
        return;
        
        
        
    }
    
    
    func displayMyAlertMessage(userMessage:String)
    {
        
        let myAlert = UIAlertController(title:"Confirmation", message:userMessage, preferredStyle: UIAlertControllerStyle.Alert);
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertActionStyle.Default, handler:nil);
        
        myAlert.addAction(okAction);
        self.presentViewController(myAlert, animated: true, completion:nil);
       
        
        
        
    }
    
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    
    // Start Editing The Text Field
    func textFieldDidBeginEditing(textField: UITextField) {
        moveTextField(textField, moveDistance: -150, up: true)
    }
    
    // Finish Editing The Text Field
    func textFieldDidEndEditing(textField: UITextField) {
        moveTextField(textField, moveDistance: -150, up: false)
    }
    
    // Hide the keyboard when the return key pressed
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Move the text field in a pretty animation!
    func moveTextField(textField: UITextField, moveDistance: Int, up: Bool) {
        let moveDuration = 0.3
        let movement: CGFloat = CGFloat(up ? moveDistance : -moveDistance)
        
        UIView.beginAnimations("animateTextField", context: nil)
        UIView.setAnimationBeginsFromCurrentState(true)
        UIView.setAnimationDuration(moveDuration)
        self.view.frame = CGRectOffset(self.view.frame, 0, movement)
        UIView.commitAnimations()
    }
    
    
    
}
