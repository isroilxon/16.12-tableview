//
//  FirstViewController.swift
//  16.12 tableview
//
//  Created by mac on 16/12/22.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let arr = ["isroil", "bahtiyor", "anvar"]
    let model = [
        Person(name: "isroil", infoName: "I'm programmer", img: "man"),
        Person(name: "bahtiyor", infoName: "I'm designer", img: "box"),
        Person(name: "anver", infoName: "i'm web designer", img: "box")]
    let arrImg  = ["man", "box"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirsCellTableViewCell
        cell.nameLabel.text = model[indexPath.row].name
        cell.img.image = UIImage(named: model[indexPath.row].img)
        cell.infolabel.text = model[indexPath.row].infoName
        
        return cell
    }
    
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "tableView"
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(FirsCellTableViewCell.self, forCellReuseIdentifier: "cell")
        
        

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
