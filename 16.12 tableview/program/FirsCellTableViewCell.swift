//
//  FirsCellTableViewCell.swift
//  16.12 tableview
//
//  Created by mac on 17/12/22.
//

import UIKit

class FirsCellTableViewCell: UITableViewCell {
    let img = UIImageView()
    let nameLabel = UILabel()
    let infolabel = UILabel()
    let mainImg = UIImageView()
    let comment = UILabel()

    override func awakeFromNib() {
        super.awakeFromNib()
        

        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        img.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(img)
        img.image = UIImage(named: "man")
        img.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20 ).isActive = true
        img.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        img.widthAnchor.constraint(equalToConstant: 50).isActive = true
        img.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(nameLabel)
        nameLabel.text = "Khurshidbek"
        nameLabel.font = .systemFont(ofSize: 25)
        nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        nameLabel.leftAnchor.constraint(equalTo: img.rightAnchor, constant: 10).isActive = true
        
        infolabel.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(infolabel)
        infolabel.text = "I'm a programmer"
        infolabel.font = .systemFont(ofSize: 20)
        infolabel.bottomAnchor.constraint(equalTo: img.bottomAnchor).isActive = true
        infolabel.leftAnchor.constraint(equalTo: img.rightAnchor, constant: 10).isActive = true
        
        comment.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(comment)
        comment.text = "ldvsbdfbldbd ldhld hdld ldhh dhkshdkbhskbkh"
        comment.font = .systemFont(ofSize: 15)
        comment.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 20).isActive = true
        comment.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        comment.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        
        mainImg.translatesAutoresizingMaskIntoConstraints = false
        mainImg.image = UIImage(named: "box")
        contentView.addSubview(mainImg)
        mainImg.heightAnchor.constraint(equalToConstant: 300).isActive = true
        mainImg.topAnchor.constraint(equalTo: comment.bottomAnchor, constant: 20).isActive = true
        mainImg.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10).isActive = true
        mainImg.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10).isActive = true
        mainImg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    


}
