//
//  MitolojiVC.swift
//  HoroskopApp
//
//  Created by Macbook Air on 7.09.2023.
//

import UIKit
import TinyConstraints

class MitolojiVC: UIViewController {
    let scrollview : UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let burcImage : UIImageView = {
        let view = UIImageView()
       
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let label : UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let textviewKoc : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Koç (21 Mart - 19 Nisan):                                                                          Koç burcu, Antik Yunan mitolojisinde savaşın ve cesaretin tanrısı Ares ile özdeşleştirilir. Ares, Zeus'un ve Hera'nın oğludur ve savaşın sembolü olarak kabul edilir. Cesaret, enerji, hırs ve liderlik özellikleri ile tanınır. Koç burcu, Ares'in savaşçı doğasını yansıtarak, bu özelliklere sahip olanlar için tipiktir. Koç burcu insanları, genellikle cesur, kararlı ve bağımsız bireyler olarak bilinirler."
        return view
    }()
    let textviewBoga : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Boğa (20 Nisan - 20 Mayıs):                                                                    Boğa burcu, Antik Yunan mitolojisinin ünlü hikayelerinden biri olan Europa ve Minotaur ile ilişkilendirilir. Europa, Zeus tarafından boğa kılığına girerek kaçırılan bir prenses olarak bilinir. Aynı mitolojide Minotaur da yer alır, bu yaratık yarı insan yarı boğa olarak tanımlanır. Boğa burcu, bu hikayelerin sembollerini taşır. Dayanıklılık, sabır, inatçılık ve güçlülük gibi özellikler Boğa burcunun temel özelliklerindendir. Boğa insanları genellikle güvende ve rahat hissetmeyi önemserler ve pratik, kararlı bireylerdir."
        return view
    }()
   
    let textviewikizler : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "İkizler (21 Mayıs - 20 Haziran):                                                           İkizler burcu, Antik Yunan mitolojisinde Castor ve Pollux olarak bilinen Dioskurlar ile bağlantılıdır. Dioskurlar, Zeus'un oğullarıdır, ancak farklı annelerden doğmuşlardır. İkizler burcu, bu ikizlerin öyküsünden esinlenir ve ikilik, esneklik, iletişim ve zeka gibi özellikleri temsil eder. İkizler insanları, genellikle meraklı, çevik ve sosyal kişilerdir. İkizler burcu, zihinsel uyarılara ve değişime açık olanları yansıtır."
        return view
    }()
   
    let textviewYengec : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Yengeç (21 Haziran - 22 Temmuz):                                                                   Yengeç burcu, Antik Yunan mitolojisinde Heracles'in birçok görevinde yardımcı olan ve özellikle Hydra'nın öldürülmesinde etkili olan Yengeç'in hikayesiyle bağlantılıdır. Yengeç, Heracles tarafından gönderildi ve Hydra tarafından ezildiğinde bile kahramanca mücadele etti. Bu nedenle Yengeç burcu, duygusal derinlik, koruyuculuk, sadakat ve duygusal zeka gibi özellikleri temsil eder. Yengeç insanları, aileleri ve sevdikleri için büyük bir bağlılık ve şefkat gösterirler."
        return view
    }()
      let textviewAslan : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
          view.text = "Aslan (23 Temmuz - 22 Ağustos):                                                              Aslan burcu, Antik Yunan mitolojisinde tanrı Zeus tarafından gönderilen Nemean Aslanı'nı öldürerek birçok görevi tamamlayan Heracles ile ilişkilendirilir. Aslan, ölümsüz bir cilt taşıdığı ve ölümsüz olduğu için öldürülmesi zor olan bir yaratıktır. Aslan burcu, bu kahramanca eylemi ve özgüveni yansıtarak liderlik, yaratıcılık, coşku ve cesaret gibi özellikleri temsil eder. Aslan insanları, genellikle kendilerine güvenen, cömert ve dikkat çekici bireylerdir."
        return view
    }()
    let textviewBasak : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Başak (23 Ağustos - 22 Eylül):                                                                 Başak burcu, Antik Yunan mitolojisinde Demeter'in kızı Persephone ile özdeşleştirilir. Persephone, yeraltı dünyasına kaçırıldıktan sonra, annesi Demeter'in arayışı ve dünyanın bereketini yitirmesi Başak burcunun özelliklerini yansıtır. Başak burcu, titizlik, düzenlilik, analitik düşünme ve hizmet etme isteği gibi özellikleri simgeler. Başak insanları genellikle pratik, yardımsever ve düşünceli bireylerdir."
        return view
    }()
    let textviewTerazi : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Terazi (23 Eylül - 22 Ekim):                                                                   Terazi burcu, Antik Yunan mitolojisindeki adalet tanrıçası Themis ile ilişkilendirilir. Themis, adil ve dengeli bir tanrıçadır, adaleti temsil eder. Terazi burcu, bu adalet duygusunu ve dengeyi arayan özellikleri yansıtarak adalet, diplomasi, uyum ve estetik anlayışı gibi özellikleri simgeler. Terazi insanları, genellikle uyumlu, sosyal ve sanatsal yönleri olan bireylerdir."
        return view
    }()
    let textviewAkrep : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Akrep (23 Ekim - 21 Kasım):                                                                    Akrep burcu, Antik Yunan mitolojisinde ölüm ve yeniden doğuşun tanrısı Hades ile bağlantılıdır. Hades, yeraltı dünyasının hükümdarı olarak bilinir ve gizemli bir figürdür. Akrep burcu, bu gizemli ve tutkulu özellikleri yansıtarak derinlik, güç, sadakat ve araştırma tutkusu gibi özellikleri temsil eder. Akrep insanları, genellikle zorluklarla başa çıkmada güçlü, kararlı ve analitik düşünceye sahip bireylerdir."
        return view
    }()
    let textviewYay : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Yay (22 Kasım - 21 Aralık):                                                                    Yay burcu, Antik Yunan mitolojisinde macera ve özgürlüğün tanrısı Hermes ile ilişkilendirilir. Hermes, hızlı ve özgür bir tanrı olarak bilinir, aynı zamanda haberci olarak da görev yapar. Yay burcu, bu özgürlük arayışını, keşif isteğini ve iyimserliği yansıtarak macera, keşif, öğrenme ve geniş görüşlülük gibi özellikleri simgeler. Yay insanları, genellikle neşeli, enerjik ve açık fikirli bireylerdir."
        return view
    }()
    let textviewOglak : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Oğlak (22 Aralık - 19 Ocak):                                                                    Oğlak burcu, Antik Yunan mitolojisinde deniz tanrısı Poseidon'un yaratıklarından biri olan Pan ile ilişkilendirilir. Pan, keçi bacakları ve boynuzları olan bir yaratıktır ve doğayla iç içe bir yaşam sürer. Oğlak burcu, bu yaratığın dayanıklılığını, azmi ve doğayla olan bağını yansıtarak disiplin, sorumluluk, hırslılık ve başarı odaklılık gibi özellikleri temsil eder. Oğlak insanları, genellikle çalışkan, sabırlı ve hedeflerine odaklı bireylerdir."
        return view
    }()
    let textviewKova: UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Kova (20 Ocak - 18 Şubat):                                                                     Kova burcu, Antik Yunan mitolojisinde su taşıyıcısı olarak bilinen Ganymedes ile ilişkilendirilir. Ganymedes, Zeus tarafından tanrıların Olympus Dağı'nda su taşıyıcısı olarak atandı. Kova burcu, bu hikayeden esinlenerek yenilikçilik, özgürlükçülük, bağımsızlık ve insanlık için ileri görüşlülüğü temsil eder. Kova insanları, genellikle bağımsız, farklı düşünen ve toplumsal sorunlara duyarlı bireylerdir."
        return view
    }()
    let textviewBalik : UITextView = {
        let view = UITextView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Balık(19 Şubat - 20 Mart)  :                                                                        Balık burcu, Antik Yunan mitolojisinde iki balığın kuyruklarıyla birbirine bağlandığı şekilde tasvir edilen Aphrodite (Venüs) ve Eros (Aşk) ile ilişkilendirilir. Bu sembolizm, sevgi, duyarlık, hayal gücü ve empatiyi yansıtır. Balık burcu, bu özellikleri taşıyarak duygusal derinlik, yaratıcılık, içgörü ve yardımseverlik gibi özellikleri temsil eder. Balık insanları, genellikle duyarlı, sanatsal ve anlayışlı bireylerdir."
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(scrollview)
        view.addSubview(label)
        view.addSubview(burcImage)
        view.addSubview(textviewikizler)
        view.addSubview(textviewKoc)
        view.addSubview(textviewYay)
        view.addSubview(textviewOglak)
        view.addSubview(textviewKova)
        view.addSubview(textviewAkrep)
        view.addSubview(textviewAslan)
        view.addSubview( textviewBalik)
        view.addSubview(textviewBoga)
        view.addSubview(textviewBasak)
        view.addSubview(textviewTerazi)
        view.addSubview(textviewYengec)
//
//        const burcDizisi = [
//          "Koç",
//          "Boğa",
//          "İkizler",
//          "Yengeç",
//          "Aslan",
//          "Başak",
//          "Terazi",
//          "Akrep",
//          "Yay",
//          "Oğlak",
//          "Kova",
//          "Balık"
//        ];
       
        textviewKoc.topToSuperview(offset: 370)
        textviewKoc.leadingToSuperview(offset: 370)
        textviewKoc.width(350)
        textviewKoc.height(350)
        
        textviewKoc.bottom(to: textviewKoc,offset: 10)
        textviewKoc.leadingToSuperview(offset: 370)
        textviewKoc.width(350)
        textviewKoc.height(350)
        
        textviewBoga.bottom(to: textviewKoc,offset: 10)
        textviewBoga.leadingToSuperview(offset: 370)
        textviewBoga.width(350)
        textviewBoga.height(350)
        
        textviewikizler.bottom(to: textviewKoc,offset: 10)
        textviewikizler.leadingToSuperview(offset: 370)
        textviewikizler.width(350)
        textviewikizler.height(350)
        
        
        textviewYengec.bottom(to: textviewKoc,offset: 10)
        textviewYengec.leadingToSuperview(offset: 370)
        textviewYengec.width(350)
        textviewYengec.height(350)
        
        
        textviewAslan.bottom(to: textviewKoc,offset: 10)
        textviewAslan.leadingToSuperview(offset: 370)
        textviewAslan.width(350)
        textviewAslan.height(350)
        
        
        textviewBasak.bottom(to: textviewKoc,offset: 10)
        textviewBasak.leadingToSuperview(offset: 370)
        textviewBasak.width(350)
        textviewBasak.height(350)
        
        
        textviewTerazi.bottom(to: textviewKoc,offset: 10)
        textviewTerazi.leadingToSuperview(offset: 370)
        textviewTerazi.width(350)
        textviewTerazi.height(350)
        
        
        textviewAkrep.bottom(to: textviewKoc,offset: 10)
        textviewAkrep.leadingToSuperview(offset: 370)
        textviewAkrep.width(350)
        textviewAkrep.height(350)
        
        
        textviewYay.bottom(to: textviewKoc,offset: 10)
        textviewYay.leadingToSuperview(offset: 370)
        textviewYay.width(350)
        textviewYay.height(350)
        
        
        textviewOglak.bottom(to: textviewKoc,offset: 10)
        textviewOglak.leadingToSuperview(offset: 370)
        textviewOglak.width(350)
        textviewOglak.height(350)
        
        
        textviewKova.bottom(to: textviewKoc,offset: 10)
        textviewKova.leadingToSuperview(offset: 370)
        textviewKova.width(350)
        textviewKova.height(350)
        
        textviewBalik.bottom(to: textviewKoc,offset: 10)
        textviewBalik.leadingToSuperview(offset: 370)
        textviewBalik.width(350)
        textviewBalik.height(350)
        
        scrollview.edgesToSuperview()
        scrollview.addSubview(label)
        //        label.topToSuperview(offset: 50)
        //        label.leadingToSuperview(offset: 20)
        //        label.text = "hello"
        //        label.textColor = .black
        burcImage.topToSuperview(offset: 50)
        burcImage.leadingToSuperview(offset: 20)
        burcImage.width(300)
        burcImage.height(200)
        burcImage.image = UIImage(named: "image")
//
//        textview.topToSuperview(offset: 200)
//        textview.leadingToSuperview(offset: 20)
//
//
        
    }
    


}
