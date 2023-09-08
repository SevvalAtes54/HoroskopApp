//
//  BurcOzellikModel.swift
//  HoroskopApp
//
//  Created by Macbook Air on 7.09.2023.
//

import Foundation
import UIKit

var burcVc = BurcOzellikVC()

struct BurcOzellikModel  {
    let burcAdi : String
    let burcOzellik: String
    let element : String
    let ugurluTas: String
    let gezegen : String
    let burcTarotKarti: UIImage?
    let renk : String
    let zaman : String
    
}

let tumBurclar: [BurcOzellikModel] = [
    BurcOzellikModel(burcAdi: "Koç", burcOzellik: "Koç burcu, zodyakın başlangıcını temsil eder ve bu, onların enerji dolu, heyecanlı ve cesur doğalarını yansıtır. Macera arayan ruhlarıyla tanınırlar ve yeni başlangıçlar yapmaktan keyif alırlar. Kendilerine güvenirler ve liderlik yetenekleri vardır. Hedeflerine ulaşmak için azimli ve tutkulu bir şekilde çalışırlar. Hızlı düşünürler ve ani kararlar alabilirler, bu da onları problem çözme konusunda becerikli yapar.", element: "Ateş", ugurluTas: "Elmas", gezegen: "Mars", burcTarotKarti: UIImage(named: "imparator"), renk: "Kırmızı", zaman: "(21 Mart – 19 Nisan)"),
       BurcOzellikModel(burcAdi: "Boğa", burcOzellik: "Boğa burcu, sabrın ve istikrarın sembolüdür. Kararlı ve güvenilirdirler, başladıkları işi sonuna kadar götürme konusunda üstün bir yetenekleri vardır. Pratik ve duygusal olarak bağlıdırlar, ilişkilerinde sadık ve güçlü bir bağlılık gösterirler. Boğa burçları aynı zamanda lüks ve güzellik konusunda hassastırlar, bu nedenle rahat yaşamın tadını çıkarmaktan hoşlanırlar.", element: "Toprak", ugurluTas: "Safir", gezegen: "Venüs", burcTarotKarti: UIImage(named: "imparatorice"), renk: "Yeşil, pembe", zaman: "(20 Nisan – 20 Mayıs)"),
       BurcOzellikModel(burcAdi: "İkizler", burcOzellik: "İkizler burcu, zeka ve iletişim yetenekleriyle tanınır. Meraklı ve öğrenmeye açık bir doğaya sahiptirler. İkizler, hızlı düşünürler ve çok yönlüdürler, bu nedenle farklı konularda ustalaşabilirler. Sosyal ve canlı bir şekilde iletişim kurarlar ve çevrelerindeki insanları kolayca etkileyebilirler. Ancak zaman zaman sabit bir odak eksikliği yaşayabilirler.", element: "Hava", ugurluTas: "Akik", gezegen: "Merkür", burcTarotKarti: UIImage(named: "asiklar"), renk: "Sarı, portakal rengi", zaman: "(21 Mayıs – 21 Haziran)"),
       BurcOzellikModel(burcAdi: "Yengeç", burcOzellik: "Yengeç burcu, duygusal bağlılık ve koruyucu bir doğa ile tanımlanır. Aileleri ve sevdikleri için hassas ve şefkatli bir şekilde davranırlar. İçlerine dönük ve sezgisel bir yapıları vardır ve başkalarının duygusal ihtiyaçlarına duyarlıdırlar. Zodyakın anne figürü olarak kabul edilirler ve sevdiklerine sıcak bir sığınak sunarlar.Bu genel özellikler, her burcun karakteristik niteliklerini özetlemektedir, ancak herkes farklıdır ve astroloji sadece bir rehberlik sağlar.", element: "Su", ugurluTas: "İnci", gezegen: "Ay", burcTarotKarti: UIImage(named: "ay"), renk: "Beyaz, deniz mavisi, gümüş", zaman: "(22 Haziran – 22 Temmuz)"),
       BurcOzellikModel(burcAdi: "Aslan", burcOzellik: "Aslan burcu, büyük bir özgüven ve liderlik duygusuyla tanınır. Cesur, cömert ve dramatik bir doğaları vardır. Dikkat çekmeyi severler ve genellikle sosyal etkinliklerin merkezinde bulunurlar. Kendilerine güvenirler ve büyük hedeflere sahiptirler. Aynı zamanda yaratıcı ve coşkulu bir yaklaşıma sahiptirler..", element: "Ateş", ugurluTas: "Elmas", gezegen: "Güneş", burcTarotKarti: UIImage(named: "sans"), renk: "Altın, turuncu", zaman: "(23 Temmuz – 22 Ağustos)"),
       BurcOzellikModel(burcAdi: "Başak", burcOzellik: "Başak burcu, analitik düşünme yetenekleriyle tanınır. Detaylara dikkat ederler ve mükemmeliyetçi bir tutumları vardır. Pratik ve düzenli bir yaşam tarzını benimserler. Yardımsever ve hizmet odaklıdırlar, başkalarına yardım etmeyi ve desteklemeyi severler. İş ve görevlerinde sorumluluk sahibidirler.", element: "Toprak", ugurluTas: "Sardonyx", gezegen: "Merkür", burcTarotKarti: UIImage(named: "ermis"), renk: "Sarı, yeşil", zaman: "(23 Ağustos – 22 Eylül)"),
    BurcOzellikModel(burcAdi: "Terazi", burcOzellik: "TTerazi burcu, denge ve adalet arayışıyla tanınır. İyi ilişkiler kurma yetenekleri yüksektir ve uyumlu bir yapıları vardır. Güzel şeyleri takdir ederler ve estetik açıdan duyarlıdırlar. İlişkilerinde adil davranır ve herkesin görüşünü dinlerler. Diplomatik bir yaklaşım benimserler.", element: "Hava", ugurluTas: "Opal, Zümrüt", gezegen: "Venüs", burcTarotKarti: UIImage(named: "asiklar"), renk: "Mavi, lila", zaman: "(23 Eylül – 22 Ekim)"),
    BurcOzellikModel(burcAdi: "Akrep", burcOzellik: "Akrep burcu, tutkulu ve kararlı bir doğaya sahiptir. Gizli güçlerin peşinde koşarlar ve derinlemesine araştırmalar yapmayı severler. Kararlılıkla hedeflerine ulaşır ve zorlu durumlarla başa çıkabilirler. Duygusal olarak yoğun bir bağlılık gösterirler ve sır saklamak konusunda ustadırlar.", element: "Su", ugurluTas: "Topaz", gezegen: "Plüton", burcTarotKarti: UIImage(named: "olumm"), renk: "Bordo, koyu kırmızı", zaman: "(23 Ekim – 21 Kasım)"),
      BurcOzellikModel(burcAdi: "Yay", burcOzellik: "Yay burcu, macera arayan ve özgürlüğe düşkün bir yapıya sahiptir. Keşfetmeyi severler ve farklı kültürleri öğrenmekten keyif alırlar. Optimisttirler ve iyimser bir bakış açısına sahiptirler. Aynı zamanda cömert ve iyilikseverdirler, başkalarına yardım etmeyi önemserler.", element: "Ateş", ugurluTas: "Turkuaz", gezegen: "Jüpiter", burcTarotKarti: UIImage(named: "denge"), renk: "Mavi, mor", zaman: "(22 Kasım – 21 Aralık)"),
      BurcOzellikModel(burcAdi: "Oğlak", burcOzellik: "Oğlak burcu, disiplinli ve hedef odaklıdır. İş dünyasında başarılı olma konusunda kararlıdırlar ve uzun vadeli planlar yaparlar. Sorumluluk sahibidirler ve güvenilir bir yapıları vardır. Pratik düşünce tarzıyla dikkat çekerler.", element: "Toprak", ugurluTas: "Oniks", gezegen: "Satürn", burcTarotKarti: UIImage(named: "seytan"), renk: "Siyah, kahverengi", zaman: "(22 Aralık – 19 Ocak)"),
      BurcOzellikModel(burcAdi: "Kova", burcOzellik: "Kova burcu, yenilikçi ve bağımsız bir yapıya sahiptir. Düşünce tarzları genellikle ileriye dönüktür ve sosyal konulara duyarlıdırlar. Toplumsal değişim için çaba harcarlar ve farklı fikirlere açıktırlar. Arkadaş canlısı ve insan odaklıdırlar..", element: "Hava", ugurluTas: "Ametist", gezegen: "Uranüs", burcTarotKarti: UIImage(named: "yildiz"), renk: "Mavi, gümüş", zaman: "(20 Ocak – 18 Şubat)"),
    BurcOzellikModel(burcAdi: "Balık", burcOzellik: "Balık burcu, duygusal ve hayal gücü yüksek bir yapıya sahiptir. Empati yetenekleri kuvvetlidir ve insanların duygusal ihtiyaçlarına duyarlı davranırlar. Sanatsal ve yaratıcıdırlar, iç dünyaları derin ve karmaşıktır. Rüya dünyasına sıkça dalış yaparlar.", element: "Su", ugurluTas: "Akuamarin", gezegen: "Neptün", burcTarotKarti: UIImage(named: "ay"), renk: "Mavi, yeşil", zaman: "(19 Şubat – 20 Mart)")
]

func findAndSetSelectedBurc(veri : String) -> BurcOzellikModel {

    for i in 0..<tumBurclar.count {
     
        if veri == tumBurclar[i].burcAdi {
           
            let secilenBurc = tumBurclar[i]
           
            return secilenBurc
//            burcVc.burcSecilenOzellik(secilenburc: secilenBurc, BurcOzellikVC())
        //    burcVc.delegate?.VeriDondur(dondurulecekVeri: )
//            burcVc.delegate?.VeriDondur(dondurulecekVeri: secilenBurc)
        }
      
    }
    return BurcOzellikModel(burcAdi: "", burcOzellik: "", element: "", ugurluTas: "", gezegen: "", burcTarotKarti: UIImage(systemName: "error"), renk: "", zaman: "")
}
