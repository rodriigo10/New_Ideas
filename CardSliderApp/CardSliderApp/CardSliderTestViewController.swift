//
//  CardSliderViewController.swift
//  CardSliderApp
//
//  Created by Rodrigo Garcia on 11/07/22.
//

import UIKit
import SnapKit
import CardSlider


struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class CardSliderTestViewController: UIViewController, CardSliderDataSource {
    
    var data = [Item]()
    
    var buttonLoadCard: UIButton = {
        let button = UIButton(frame: .zero)
        button.setTitle("Click to Open", for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.borderWidth = 0.3
        button.clipsToBounds = true
        button.layer.cornerRadius = 0.7
        button.addTarget(self, action: #selector(buttonTap), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        data.append(Item(image: UIImage(named: "GibaPizza") ?? UIImage(),
                         rating: 3,
                         title: "Pizza Abencoada",
                         subtitle: "Super Giba Pizza",
                         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"))
        data.append(Item(image: UIImage(named: "GibaPizza2") ?? UIImage(),
                         rating: 3,
                         title: "Pizza Abencoada",
                         subtitle: "Super Giba Pizza2",
                         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"))
        
        data.append(Item(image: UIImage(named: "GibaPizza3") ?? UIImage(),
                         rating: 3,
                         title: "Pizza Abencoada",
                         subtitle: "Super Giba Pizza3",
                         description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"))
        
        
        addSubViews()
        makeConstraints()
    }
    
    func addSubViews() {
        view.addSubview(buttonLoadCard)
    }
    
    func makeConstraints(){
        buttonLoadCard.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.width.equalTo(150)
            make.height.equalTo(100)
        }
    }
    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }
    
    @objc func buttonTap(sender: UIButton!) {
        
        
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
}
