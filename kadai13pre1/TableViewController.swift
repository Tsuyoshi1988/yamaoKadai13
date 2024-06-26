import UIKit

class TableViewController: UITableViewController {

    let keyName = "Name"
    let keyCheck = "Check"

    var items: [[String: Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.items = [
            [keyName: "りんご", keyCheck: false],
            [keyName: "みかん", keyCheck: true],
            [keyName: "バナナ", keyCheck: false],
            [keyName: "パイナップル", keyCheck: true]
        ]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell1", for: indexPath) as! TableViewCell

        let item = self.items[indexPath.row]

        if item[keyCheck] as? Bool == true {
            cell.checkImageView.image = UIImage(named: "check")
        } else {
            cell.checkImageView.image = nil
        }

        cell.nameLabel.text = (item[keyName] as? String) ?? ""

        return cell
    }
}
