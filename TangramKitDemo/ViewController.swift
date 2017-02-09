//
//  ViewController.swift
//  TangramKit
//
//  Created by apple on 16/7/14.
//  Copyright © 2016年 youngsoft. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var demoVCList:[[String:Any]] = [[String:Any]]()
    
    override  func viewDidLoad() {
        super.viewDidLoad()

        self.title = NSLocalizedString("Category",comment:"")
        self.navigationController?.navigationBar.titleTextAttributes = [NSFontAttributeName:CFTool.font(15),NSForegroundColorAttributeName:CFTool.color(4)]

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "test")
        
        let tipLabel = UILabel(frame:CGRect(x:0, y:0, width:0, height:50))
        tipLabel.text = "如果您在模拟器中运行时看到的不是中文则请到系统设置里面将语言设置为中文(english ignore this text)"
        tipLabel.font = CFTool.font(16)
        tipLabel.numberOfLines = 0
        tipLabel.adjustsFontSizeToFitWidth = true
        self.tableView.tableHeaderView = tipLabel
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        
        
        
        demoVCList.append(["title":NSLocalizedString("1.LinearLayout - Vert&Horz",comment:""),
    "class":LLTest1ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.LinearLayout - Combine with UIScrollView",comment:""),
       "class":LLTest2ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("3.LinearLayout - Gravity&Fill",comment:""),
       "class":LLTest3ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("4.LinearLayout - Wrap content",comment:""),
       "class":LLTest4ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("5.LinearLayout - Weight & Relative margin",comment:""),
       "class":LLTest5ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("6.LinearLayout - Size limit & Flexed margin",comment:""),
       "class":LLTest6ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("7.LinearLayout - Average size&spacing",comment:""),
       "class":LLTest7ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("1.FrameLayout - Gravity&Fill",comment:""),
       "class":FLTest1ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.FrameLayout - Complex UI",comment:""),
       "class":FLTest2ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("1.RelativeLayout - Constraint&Dependence",comment:""),
       "class":RLTest1ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.RelativeLayout - Prorate size",comment:""),
       "class":RLTest2ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("3.RelativeLayout - Centered",comment:""),
       "class":RLTest3ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("4.RelativeLayout - Scroll&Dock",comment:""),
                           "class":RLTest4ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("5.RelativeLayout - Boundary limit",comment:""),
                           "class":RLTest5ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("1.TableLayout - Vert",comment:""),
       "class":TLTest1ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.TableLayout - Waterfall(Horz)",comment:""),
       "class":TLTest2ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("3.TableLayout - Intelligent Borderline",comment:""),
       "class":TLTest3ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("1.FlowLayout - Regular arrangement",comment:""),
       "class":FLLTest1ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.FlowLayout - Tag cloud",comment:""),
       "class":FLLTest2ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("3.FlowLayout - Drag",comment:""),
       "class":FLLTest3ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("4.FlowLayout - Weight",comment:""),
       "class":FLLTest4ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("5.FlowLayout - Paging",comment:""),
                           "class":FLLTest5ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("1.FloatLayout - Float",comment:""),
       "class":FOLTest1ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.FloatLayout - Jagged",comment:""),
       "class":FOLTest2ViewController.self]
        )
       demoVCList.append(["title":NSLocalizedString("3.FloatLayout - Card news",comment:""),
       "class":FOLTest3ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("4.FloatLayout - Tag cloud",comment:""),
       "class":FOLTest4ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("5.FloatLayout - Title & Description",comment:""),
       "class":FOLTest5ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("6.FloatLayout - User Profiles",comment:""),
                           "class":FOLTest6ViewController.self]
        )
        // MARK: - PathLayout
        demoVCList.append(["title":NSLocalizedString("1.PathLayout - Animations",comment:""),
                           "class":PLTest1ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.PathLayout - Curves",comment:""),
                           "class":PLTest2ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("3.PathLayout - Menu in Circle",comment:""),
                           "class":PLTest3ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("4.PathLayout - Fan",comment:""),
                           "class":PLTest4ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("1.UITableView - Dynamic height",comment:""),
       "class":AllTest1ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.UITableView - Static height",comment:""),
       "class":AllTest2ViewController.self]
        )
       demoVCList.append(["title":NSLocalizedString("3.Replacement of UITableView",comment:""),
       "class":AllTest3ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("4.Replacement of UICollectionView",comment:""),
       "class":AllTest4ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("1.SizeClass - Demo1",comment:""),
       "class":AllTest5ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("2.SizeClass - Demo2",comment:""),
       "class":AllTest6ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("❁1.Screen perfect fit - Demo1",comment:""),
                           "class":AllTest7ViewController.self]
        )
        demoVCList.append(["title":NSLocalizedString("❁2.Screen perfect fit - Demo2",comment:""),
                           "class":AllTest8ViewController.self]
        )
    }

    override  func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    // MARK: - Table view data source

    override  func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.demoVCList.count
    }

    
    override  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let  cell = tableView.dequeueReusableCell(withIdentifier: "test", for:indexPath)
        
        cell.textLabel?.adjustsFontSizeToFitWidth = true
        cell.textLabel?.font = CFTool.font(15)
        cell.textLabel?.textColor = CFTool.color(4)
        cell.textLabel?.text = self.demoVCList[indexPath.row]["title"] as? String
        
        return cell
    }

    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    
        let demoVC:UIViewController = (self.demoVCList[indexPath.row]["class"] as! UIViewController.Type).init()
        demoVC.title = self.demoVCList[indexPath.row]["title"] as? String
        self.navigationController?.pushViewController(demoVC, animated: true)
        
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
