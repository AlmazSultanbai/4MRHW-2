//
//  ViewController.swift
//  4MRHW-2
//
//  Created by Sultanbai Almaz on 13/9/23.
//

import UIKit

class ViewController: UIViewController { //класс - ссылочный тип
    
    private lazy var goodsTableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.register(GoodsTableViewCell.self, forCellReuseIdentifier: "cell")
        view.delegate = self
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }() //1) создали tableView
    private var goodsList: [Goods] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        initData()  // прописываем массив
        initUI()  //прописываем все настройки UI
        
    }
    private func initData() {  //заполняем массив данными
        goodsList = [
            Goods(image: "mebel1", largeimage: "mebelLarge3",name: "furniture Uno",count: 785, price: 130,starCount: 3,
                  detail: GoodsDetail(roomType: "office, living room",color: "white",material: "leather",dimentions: "dimention",weight: "24056")),
            
            Goods(image: "mebel2", largeimage: "mebelLarge2",name: "furniture Bella",count: 100, price: 430,starCount: 3,
                  detail: GoodsDetail(roomType: "kitchen, living room",color: "Brown",material: "material",dimentions: "dimention",weight: "2456")),
            
            Goods(image: "mebel3", largeimage: "mebelLarge2",
                  name: "furniture Stella",
                  count: 400, price: 540,
                  starCount: 3,
                  detail: GoodsDetail(roomType: "bedroom, living room",
                                      color: "Dark Gray",
                                      material: "material",
                                      dimentions: "dimention",
                                      weight: "24056")),
            
            Goods(image: "mebel1", largeimage: "mebelLarge1",
                  name: "furniture",
                  count: 785, price: 230,
                  starCount: 3,
                  detail: GoodsDetail(roomType: "office living room, Yellow textile",
                                      color: "Black",
                                      material: "material",
                                      dimentions: "dimention",
                                      weight: "24056")),
            
            Goods(image: "mebel1", largeimage: "mebelLarge2",
                  name: "furniture",
                  count: 785, price: 230,
                  starCount: 3,
                  detail: GoodsDetail(roomType: "office living room, Yellow textile",
                                      color: "Black",
                                      material: "material",
                                      dimentions: "dimention",
                                      weight: "24056"))
        ]
        
    }

    private func initUI() { // подписываем на все необходимые расширения и делегаты определяем констрайнты
        view.backgroundColor = .white
        view.addSubview(goodsTableView)
        
        goodsTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        goodsTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        goodsTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        goodsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20).isActive = true
    }
}
extension ViewController: UITableViewDataSource { //раширение для создаия nableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goodsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GoodsTableViewCell
        cell.setData(image: goodsList[indexPath.row].image,
                     name: goodsList[indexPath.row].name,
                     count: goodsList[indexPath.row].count)
        return cell
    }
}
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("\(indexPath.row)") // для проверки в дебаг эрия
        let vc = GoodsDetailViewController()
        
        vc.goodsDetail = goodsList[indexPath.row]
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

