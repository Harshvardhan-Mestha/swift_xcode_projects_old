import UIKit
import PlaygroundSupport
var tableView: UITableView!
class TableViewController : UITableViewController {
    
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "Cell \(indexPath.section).\(indexPath.row)"
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

    
}

let tableViewController = TableViewController(style: .grouped)


PlaygroundPage.current.liveView = tableViewController
