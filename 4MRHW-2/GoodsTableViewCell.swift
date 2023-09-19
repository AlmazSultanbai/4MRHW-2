//
//  File.swift
//  4MRHW-2
//
//  Created by Sultanbai Almaz on 13/9/23.
//

import UIKit

class GoodsTableViewCell: UITableViewCell {
    
    private let bgView = UIView()
    
    private let goodsName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.text = "name"
        return label
        
    }()
    private let goodsCount: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 15)
        label.text = "count"
        return label
    }()
    
    
    private let goodsImage: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 11
        return image
    }()
    
    
    //override но только в UITableviewcell
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        initCellUI()
    }
    
    private func initCellUI() {
        setBGViewConstaint()
        setImageConstaint()
        setGoodsNameConstraint()
        setGoodsCountConstraint()
        
    
    }
    
    private func setBGViewConstaint() {
        contentView.addSubview(bgView)
        bgView.translatesAutoresizingMaskIntoConstraints = false
        bgView.backgroundColor = .white
        bgView.heightAnchor.constraint(equalToConstant: 240).isActive = true
        bgView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bgView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bgView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        bgView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        
    }
    private func setImageConstaint() { // крепится к bgView
        bgView.addSubview(goodsImage)
        goodsImage.translatesAutoresizingMaskIntoConstraints = false
        goodsImage.backgroundColor = .cyan
        goodsImage.heightAnchor.constraint(equalToConstant: 166).isActive = true
        goodsImage.topAnchor.constraint(equalTo: bgView.topAnchor).isActive = true
        goodsImage.leadingAnchor.constraint(equalTo: bgView.leadingAnchor).isActive = true
        goodsImage.trailingAnchor.constraint(equalTo: bgView.trailingAnchor).isActive = true
        
    }
    private func setGoodsNameConstraint() {
        bgView.addSubview(goodsName) //крепится к bgView
        goodsName.translatesAutoresizingMaskIntoConstraints = false
       
       
        goodsName.topAnchor.constraint(equalTo: goodsImage.bottomAnchor, constant: 8).isActive = true
        goodsName.leadingAnchor.constraint(equalTo: goodsImage.leadingAnchor).isActive = true
        goodsName.trailingAnchor.constraint(equalTo: goodsImage.trailingAnchor).isActive = true
        
        
    }
    private func setGoodsCountConstraint() {
        bgView.addSubview(goodsCount) //крепится к bgView
        goodsCount.translatesAutoresizingMaskIntoConstraints = false
       
       
        goodsCount.topAnchor.constraint(equalTo: goodsName.bottomAnchor, constant: 2).isActive = true
        goodsCount.leadingAnchor.constraint(equalTo: goodsImage.leadingAnchor).isActive = true
        goodsCount.trailingAnchor.constraint(equalTo: goodsImage.trailingAnchor).isActive = true
        
        
    }
     func setData(image: String, name: String, count: Int ) {
        goodsImage.image = UIImage(named: image)
        goodsName.text = name
        goodsCount.text = "\(count) + items"
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
