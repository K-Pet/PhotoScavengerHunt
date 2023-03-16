//
//  ViewController.swift
//  Photo Scavenger Hunt
//
//  Created by Kobe Petrus on 3/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var imageItems: [ImageItems] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        
        imageItems = ImageItems.mockedItems

    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // This will reload data in order to reflect any changes made to a task after returning from the detail screen.
        tableView.reloadData()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "mapViewSegue" {
            if let detailViewController = segue.destination as? DetailViewController,
                // Get the index path for the current selected table view row.
               let selectedIndexPath = tableView.indexPathForSelectedRow {

                // Get the task associated with the slected index path
                let imageItems = imageItems[selectedIndexPath.row]

                // Set the selected task on the detail view controller.
                detailViewController.imageItems = imageItems
            }
        }
    }


}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LocationCell", for: indexPath) as? LocationTableViewCell else {
            fatalError("Unable to dequeue Task Cell")
        }
        cell.configure(with: imageItems[indexPath.row])

        return cell
    }
}

