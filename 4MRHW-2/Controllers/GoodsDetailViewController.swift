//
//  GoodsDetailViewController.swift
//  4MRHW-2
//
//  Created by Sultanbai Almaz on 15/9/23.
//

import UIKit

class GoodsDetailViewController: UIViewController {
    //
    var detailImage: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var detailLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Abocofur Modern Velvet Fabric lazy Chair"
        view.font = .boldSystemFont(ofSize: 22)
        return view
    }()
    var detailPrice: UILabel = {
        let view = UILabel()
        view.text = "ссылка на цену"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailDollarSgn: UILabel = {
        let view = UILabel()
        view.text = "$"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailDescription: UILabel = {
        let view = UILabel()
        view.text = "Product Details"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailStars: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "stars")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailHeart: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "heart")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailDownload: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "download")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailCount: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "counter")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailXimage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "ximage")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailRoomType: UILabel = {
        let view = UILabel()
        view.text = "Room Type"
        view.font = .systemFont(ofSize: 14)
        view.textColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var detailColor: UILabel = {
        let view = UILabel()
        view.text = "Color"
        view.font = .systemFont(ofSize: 14)
        view.textColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailDimention: UILabel = {
        let view = UILabel()
        view.text = "Dimention"
        view.font = .systemFont(ofSize: 14)
        view.textColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var detailWeight: UILabel = {
        let view = UILabel()
        view.text = "Weight"
        view.font = .systemFont(ofSize: 14)
        view.textColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var detailMaterial: UILabel = {
        let view = UILabel()
        view.text = "Material"
        view.font = .systemFont(ofSize: 14)
        view.textColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    //
    private var placeRoomType: UILabel = {
        let view = UILabel()
        view.text = " "
        view.font = .systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var placeColor: UILabel = {
        let view = UILabel()
        view.text = " "
        view.font = .systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var placeMaterial: UILabel = {
        let view = UILabel()
        view.text = " "
        view.font = .systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var placeDimention: UILabel = {
        let view = UILabel()
        view.text = " "
        view.font = .systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var placeWeignt: UILabel = {
        let view = UILabel()
        view.text = " "
        view.font = .systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let detailButton: UIButton = {
        let view = UIButton()
        view.setTitle("Button", for: .normal)
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 5
        return view
    }()
    var goodsDetail: Goods?
    
    var goodsDetail2: GoodsDetail?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
       setupData()
        
        
    }
    
    
  
    
    private func initUI() {
        view.addSubview(detailDollarSgn)
        view.addSubview(detailImage)
        view.addSubview(detailLabel)
        view.addSubview(detailPrice)
        view.addSubview(detailDescription)//
        view.addSubview(detailRoomType)
        view.addSubview(detailColor)
        view.addSubview(detailMaterial)
        view.addSubview(detailDimention)
        view.addSubview(detailWeight)
        view.addSubview(placeRoomType)
        view.addSubview(placeColor)
        view.addSubview(placeMaterial)
        view.addSubview(placeDimention)
        view.addSubview(placeWeignt)
        view.addSubview(detailStars)
        view.addSubview(detailButton)
        
        view.addSubview(detailDownload)
        view.addSubview(detailHeart)
        view.addSubview(detailCount)
        NSLayoutConstraint.activate([
            
            detailDollarSgn.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 50),
            detailDollarSgn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            
            
            detailImage.topAnchor.constraint(equalTo: view.topAnchor),
            detailImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            detailImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            detailImage.widthAnchor.constraint(equalToConstant: 375),
            detailImage.heightAnchor.constraint(equalToConstant: 375),
            
            
            detailLabel.topAnchor.constraint(equalTo: detailImage.bottomAnchor, constant: 10),
            detailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

            detailPrice.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 50),
            detailPrice.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            detailPrice.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailDescription.topAnchor.constraint(equalTo: detailPrice.bottomAnchor , constant: 50),
            detailDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailRoomType.topAnchor.constraint(equalTo: detailDescription.bottomAnchor, constant: 15),
            detailRoomType.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailRoomType.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailColor.topAnchor.constraint(equalTo: detailRoomType.bottomAnchor, constant: 15),
            detailColor.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailColor.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailMaterial.topAnchor.constraint(equalTo: detailColor.bottomAnchor, constant: 15),
            detailMaterial.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailColor.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailDimention.topAnchor.constraint(equalTo: detailMaterial.bottomAnchor, constant: 15),
            detailDimention.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailDimention.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailWeight.topAnchor.constraint(equalTo: detailDimention.bottomAnchor, constant: 15),
            detailWeight.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            detailWeight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            //
            placeRoomType.topAnchor.constraint(equalTo: detailDescription.bottomAnchor, constant: 15),
            placeRoomType.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            placeRoomType.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            placeColor.topAnchor.constraint(equalTo: detailRoomType.bottomAnchor, constant: 15),
            placeColor.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            placeColor.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            placeMaterial.topAnchor.constraint(equalTo: detailColor.bottomAnchor, constant: 15),
            placeMaterial.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            placeMaterial.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            placeDimention.topAnchor.constraint(equalTo: detailMaterial.bottomAnchor, constant: 15),
            placeDimention.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            placeDimention.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
           placeWeignt.topAnchor.constraint(equalTo: detailDimention.bottomAnchor, constant: 15),
            placeWeignt.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            placeWeignt.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailStars.topAnchor.constraint(equalTo: detailLabel.bottomAnchor, constant: 15),
            detailStars.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            //detailStars.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
            
            detailButton.topAnchor.constraint(equalTo: detailWeight.bottomAnchor, constant: 40),
            detailButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            detailButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            detailButton.heightAnchor.constraint(equalToConstant: 50),
            
            
            
            
            detailDownload.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            detailDownload.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -80),
            
            detailHeart.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            detailHeart.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            detailCount.topAnchor.constraint(equalTo: detailImage.bottomAnchor, constant: 40),
            detailCount.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
        ])
        
        
    }
    
    private func setupData() {
        guard let safeData = goodsDetail else { return }
        detailImage.image = UIImage(named: safeData.largeimage)
        detailLabel.text = safeData.name
        detailPrice.text = String(safeData.price)
        placeColor.text = safeData.detail.color
        placeRoomType.text = safeData.detail.roomType
        placeMaterial.text = safeData.detail.material
        placeDimention.text = safeData.detail.dimentions
        placeWeignt.text = safeData.detail.weight
        
    }
    
}
