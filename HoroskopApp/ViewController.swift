//
//  ViewController.swift
//  HoroskopApp
//
//  Created by Macbook Air on 6.09.2023.
//
import UIKit
import TinyConstraints

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate,ViewModelDelegate, UITabBarDelegate {
   
    let mitolojiVC = MitolojiVC()
   // let mitolojiNavigationController = UINavigationController(rootViewController: mitolojiVC)

    
  
    var degisken = String()
  //  let burcozellikmodel : BurcOzellikModel
    
   
let burcOzellikVc = BurcOzellikVC()
    var burcozellikmodel : BurcOzellikModel?
    lazy var tabBar: UITabBar = {
        let tabbar = UITabBar()
        tabbar.translatesAutoresizingMaskIntoConstraints = false
        
        let tabBarBurc = UITabBarItem(
            title: "Burçlar",
            image: UIImage(systemName: "sparkles"),
            selectedImage: UIImage(systemName: "sparkles")
        )
        
        
        let tabBarYildizharita = UITabBarItem(
            title: "Mitoloji",
            image: UIImage(systemName: "moon.stars"),
            selectedImage: UIImage(systemName: "moon.stars.fill")
        )
        
        tabbar.items = [tabBarBurc, tabBarYildizharita]
        
        return tabbar
    }()
    
    let tableView: UITableView = {
        let tableview = UITableView()
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    let burclar = ["Koç", "Boğa", "İkizler", "Yengeç", "Aslan", "Başak", "Terazi", "Akrep", "Yay", "Oğlak", "Kova", "Balık"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tabBar)
        view.addSubview(tableView)
        tabBar.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.white
        
        let safeAreaLayoutGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            tabBar.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tabBar.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tabBar.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            
            tableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: tabBar.topAnchor)
        ])
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
      
    }
    
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return burclar.count  // Her burç için 12 hücre
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let burcIndex = indexPath.row % burclar.count // Hangi burçta olduğumuzu belirlemek için indeksi hesapla
            let burc = burclar[burcIndex]
            cell.textLabel?.text = burc
            return cell
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Seçilen hücrenin başlığını alın
        let selectedBurc =  burclar[indexPath.row]
        burcOzellikVc.secilenBurcAdi = selectedBurc
        // Başlığı yazdırabilirsiniz (örneğin, bir UIAlertController kullanarak)
//        let alertController = UIAlertController(title: "Seçilen Burç", message: selectedBurc, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "Tamam", style: .default, handler: nil)
//        alertController.addAction(okAction)
//
//        present(alertController, animated: true, completion: nil)
//
      
        // Veriyi iletebilirsiniz
//        if tabBar.selectedItem?.title == "Burçlar" {
            burcOzellikVc.veri = selectedBurc
            degisken = selectedBurc
            //print(selectedBurc)
            burcozellikmodel =  findAndSetSelectedBurc(veri: selectedBurc)
            //        print(burcozellikmodel)
            VeriDondur(dondurulecekVeri: burcozellikmodel)
            
            // UrunAciklamaView'i görüntülemek için mevcut ViewController üzerine ekleyin
            addChild(burcOzellikVc)
            view.addSubview(burcOzellikVc.view)
            burcOzellikVc.didMove(toParent: self)
//        }
       
        // Geri gitmek için "back" düğmesi eklemek istiyorsanız
     
       
       
    }
    
    
    @objc func backButtonClicked() {
        // "Back" düğmesine basıldığında UrunAciklamaView'i kaldırın
        children.first?.removeFromParent()
        view.subviews.first?.removeFromSuperview()
    }
//
  
    func VeriDondur(dondurulecekVeri: BurcOzellikModel?) {
     //   print(dondurulecekVeri)
        burcOzellikVc.model = dondurulecekVeri
    }
}
