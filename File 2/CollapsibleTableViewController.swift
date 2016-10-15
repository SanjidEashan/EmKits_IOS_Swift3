//
//  CollapsibleTableViewController.swift
//  File 2
//


import UIKit

extension UIView {
    func rotate(toValue: CGFloat, duration: CFTimeInterval = 0.2, completionDelegate: AnyObject? = nil) {
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotateAnimation.toValue = toValue
        rotateAnimation.duration = duration
        rotateAnimation.removedOnCompletion = false
        rotateAnimation.fillMode = kCAFillModeForwards
        
        if let delegate: AnyObject = completionDelegate {
            rotateAnimation.delegate = delegate
        }
        self.layer.addAnimation(rotateAnimation, forKey: nil)
    }
}

class CollapsibleTableViewController: UITableViewController {
    
    //
    // MARK: - Data
    //
    struct Section {
        var name: String!
        var items: [String]!
        var collapsed: Bool!
        
        init(name: String, items: [String], collapsed: Bool = true) {
            self.name = name
            self.items = items
            self.collapsed = collapsed
        }
    }
    
    var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageView = UIImageView(frame: self.view.frame)
        let image = UIImage(named: "Background")!
        imageView.image = image
        self.view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
        
        // Initialize the sections array
        // Here we have three sections: Mac, iPad, iPhone
        sections = [
            Section(name: "Burn Injury ", items: ["1. Cool the burn under cold running ", "water for at least ten minutes.", "2. Cool the affected area ","3. If necessary, call Ambulance","or get someone else to do it."]),
            Section(name: "Heart Attack", items: ["1. Ensure they are sitting", "2. The person may have persistent, ", "vice-like chest pain, which may", "spread to their arms, neck, jaw, back","3. Make sure they are in a  " ,"position that is comfortable for them "]),
            Section(name: "Head Injury ", items: ["1. Apply something cold", "2. Put pressure on the wound", " with whatever is available to","stop or slow down the  ow of blood", "3. If they become drowsy or vomit,","call Ambulance or get someone else"])
        ]
    }
    
    //
    // MARK: - UITableViewDelegate
    //
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (sections[section].collapsed!) ? 0 : sections[section].items.count
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableCellWithIdentifier("header") as! CollapsibleTableViewHeader
        
        header.toggleButton.tag = section
        header.titleLabel.text = sections[section].name
        header.toggleButton.rotate(sections[section].collapsed! ? 0.0 : CGFloat(M_PI_2))
        header.toggleButton.addTarget(self, action: #selector(CollapsibleTableViewController.toggleCollapse), forControlEvents: .TouchUpInside)
        
        return header.contentView
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        
        cell.textLabel?.text = sections[indexPath.section].items[indexPath.row]
        
        return cell
    }
    
    //
    // MARK: - Event Handlers
    //
    func toggleCollapse(sender: UIButton) {
        let section = sender.tag
        let collapsed = sections[section].collapsed
        
        // Toggle collapse
        sections[section].collapsed = !collapsed
        
        // Reload section
        tableView.reloadSections(NSIndexSet(index: section), withRowAnimation: .Automatic)
    }
    
}
