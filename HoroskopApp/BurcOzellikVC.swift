//
//  BurcOzellikVC.swift
//  HoroskopApp
//
//  Created by Macbook Air on 6.09.2023.
//

import UIKit
import TinyConstraints

protocol ViewModelDelegate  {
    func VeriDondur ( dondurulecekVeri: BurcOzellikModel?)
}
//
//struct BurcOzellikModel  {
//    let burcAdi : String
//    let burcOzellik: String
//    let element : String
//    let ugurluTas: String
//    let gezegen : String
//    let burcTarotKarti: UIImage?
//    let renk : String
//    let zaman : String
//
class BurcOzellikVC: UIViewController
{
   
    
    var secilenBurcAdi: String?
    var model : BurcOzellikModel?
    var delegate : ViewModelDelegate?
    var veri = String()
   
    let secilenBurcAdiLabel : UILabel = {
        let burc = UILabel()
        burc.textColor = .black
//
        burc.text = "erhjhfceornınmlekş"
        burc.translatesAutoresizingMaskIntoConstraints = false
        return burc
    }()
    
     let textviewOzellik : UITextView = {
         let burc = UITextView()
         burc.textColor = .black
         burc.text = "1cfytfuvhıbk"
         burc.translatesAutoresizingMaskIntoConstraints = false
         return burc
     }()
     
    
     let elementLabel : UILabel = {
         let burc = UILabel()
         burc.textColor = .black
         burc.text = "2tx6drtcyguvıh"
         burc.translatesAutoresizingMaskIntoConstraints = false
         return burc
     }()
     
    
     let ugurluTasLabel : UILabel = {
         let burc = UILabel()
         burc.textColor = .black
         burc.text = "3fxyuyhkbjö"
         burc.translatesAutoresizingMaskIntoConstraints = false
         return burc
     }()
    let gezegenLabel : UILabel = {
        let burc = UILabel()
        burc.textColor = .black
        burc.text = "4dxfcghvjhbkjnlkşnhıou"
        burc.translatesAutoresizingMaskIntoConstraints = false
        return burc
    }()
    
    let burcTarotKartiImage : UIImageView = {
        let burc = UIImageView()
        burc.translatesAutoresizingMaskIntoConstraints = false
        return burc
    }()
    
    let renkLabel : UILabel = {
        let burc = UILabel()
        burc.textColor = .black
        burc.text = "5cvıonklşi"
        burc.translatesAutoresizingMaskIntoConstraints = false
        return burc
    }()
    let zamanLabel : UILabel = {
        let burc = UILabel()
        burc.textColor = .black
       
        burc.translatesAutoresizingMaskIntoConstraints = false
        return burc
    }()
    let backgroundImage: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "image") // Asset ismiyle eşleştirin
            imageView.contentMode = .scaleToFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
    override func viewDidLoad() {

        super.viewDidLoad()
        
       
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        secilenBurcAdiLabel.translatesAutoresizingMaskIntoConstraints = false
        textviewOzellik.translatesAutoresizingMaskIntoConstraints = false
        elementLabel.translatesAutoresizingMaskIntoConstraints = false
        ugurluTasLabel.translatesAutoresizingMaskIntoConstraints = false
        gezegenLabel.translatesAutoresizingMaskIntoConstraints = false
        burcTarotKartiImage.translatesAutoresizingMaskIntoConstraints = false
        renkLabel.translatesAutoresizingMaskIntoConstraints = false
        zamanLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(backgroundImage)
        secilenBurcAdiLabel.isUserInteractionEnabled = false
        secilenBurcAdiLabel.isHidden = false
        view.addSubview(secilenBurcAdiLabel)
        view.addSubview(textviewOzellik)
        view.addSubview(elementLabel)
        view.addSubview(ugurluTasLabel)
        view.addSubview(gezegenLabel)
        view.addSubview(burcTarotKartiImage)
        view.addSubview(renkLabel)
        view.addSubview(zamanLabel)
        
        view.addSubview(backgroundImage)
        backgroundImage.edgesToSuperview()
        
        
        backgroundImage.addSubview(secilenBurcAdiLabel)
        backgroundImage.addSubview(elementLabel)
        backgroundImage.addSubview(ugurluTasLabel)
        backgroundImage.addSubview(gezegenLabel)
        backgroundImage.addSubview(renkLabel)
        backgroundImage.addSubview(zamanLabel)
        
        
        secilenBurcAdiLabel.textColor = .black
        view.addSubview(burcTarotKartiImage)
        burcTarotKartiImage.leadingToSuperview(offset:20)
        burcTarotKartiImage.topToSuperview(offset: 60)
        burcTarotKartiImage.trailingToSuperview(offset:20)
        burcTarotKartiImage.height(370)
        view.addSubview(secilenBurcAdiLabel)
        secilenBurcAdiLabel.centerX(to: view)
        secilenBurcAdiLabel.topToSuperview(offset: 434)
        secilenBurcAdiLabel.font = .italicSystemFont(ofSize: 40)
        textviewOzellik.backgroundColor = .clear
        
        
        secilenBurcAdiLabel.text = model?.burcAdi
        burcTarotKartiImage.image = model?.burcTarotKarti
        zamanLabel.text = model?.zaman
        if let burcAdi = model?.element {
            elementLabel.text  =  "Element: \(burcAdi)"
        } else {
            elementLabel.text = "Bilgi Yok"
        }
        //*********
        if let burcAdi = model?.ugurluTas {
            ugurluTasLabel.text =   "Uğurlu taş: \(burcAdi)"
        } else {
            elementLabel.text = "Bilgi Yok"
        }
        //*********
        if let burcAdi = model?.gezegen {
            gezegenLabel.text = "Gezegen: \(burcAdi)"
        } else {
            elementLabel.text = "Bilgi Yok"
        }
        //*********
        if let burcAdi = model?.renk {
            renkLabel.text =  "Renk: \(burcAdi)"
        } else {
            elementLabel.text = "Bilgi Yok"
        }
        
       // textviewOzellik.text = model?.burcOzellik
        view.addSubview(textviewOzellik)
        textviewOzellik.topToSuperview(offset: 585)
        textviewOzellik.centerX(to: view)
        textviewOzellik.width(400)
        textviewOzellik.height(400)
        textviewOzellik.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        if let burcAdi = model?.burcOzellik {
            textviewOzellik.text =  burcAdi
        } else {
            elementLabel.text = "Bilgi Yok"
        }
       
       
        
        
        zamanLabel.topToSuperview(offset: 480)
        zamanLabel.centerX(to: view)
       // zamanLabel.font = .monospacedDigitSystemFont(ofSize: 20, weight: .black)
      //  zamanLabel.font = .systemFont(ofSize: 20)
        zamanLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        elementLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        ugurluTasLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        gezegenLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        renkLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        elementLabel.topToSuperview(offset: 500)
        elementLabel.leadingToSuperview(offset:10)
        ugurluTasLabel.topToSuperview(offset: 520)
        ugurluTasLabel.leadingToSuperview(offset:10)
        gezegenLabel.topToSuperview(offset: 540)
        gezegenLabel.leadingToSuperview(offset:10)
        renkLabel.topToSuperview(offset: 560)
        renkLabel.leadingToSuperview(offset:10)
    }
    
    
    
    
    
    func burcSecilenOzellik(secilenburc : BurcOzellikModel, _ burcozellikvc :BurcOzellikVC){
        model = secilenburc
        DispatchQueue.main.async {
          
            self.secilenBurcAdiLabel.text = self.model?.burcAdi
          
//            self.secilenBurcAdiLabel.text = "secilenburc.burcAdi"
        }
    }
   

}
