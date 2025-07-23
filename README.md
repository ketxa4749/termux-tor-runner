# 🚀 Termux Tor Runner

![Platform](https://img.shields.io/badge/Platform-Termux-brightgreen) ![License](https://img.shields.io/badge/License-MIT-blue.svg)

Termux üzerinde komut satırı trafiğinizi Tor ağını kullanarak anonim hale getirmek için tasarlanmış basit bir yardımcı script.

---

## 🎯 Projenin Amacı

Bu proje, Termux'ta herhangi bir komut satırı aracını (`curl`, `wget`, `nmap` vb.) kolayca Tor ağı üzerinden çalıştırmayı sağlar. `torsocks` kullanımını basitleştirerek, tek bir komutla hızlı ve pratik bir şekilde anonimlik katmanı eklemenize olanak tanır.

## ✨ Özellikler

- ✅ **Basit Kullanım:** Karmaşık yapılandırmalar olmadan tek bir script ile çalışır.
- ✅ **Evrensel Uyumluluk:** İnternete erişen herhangi bir komut satırı aracını anonimleştirebilir.
- ✅ **Güvenli Altyapı:** Termux için resmi `tor` paketini ve `torsocks` aracını kullanır.
- ✅ **Hızlı Kurulum:** Birkaç basit komutla hemen kullanıma hazırdır.

## ⚙️ Nasıl Çalışır?

Script, `tor` paketiyle birlikte gelen `torsocks` adlı bir yardımcı programı kullanır. `torsocks`, belirtilen bir uygulamanın tüm ağ bağlantılarını yakalar ve bunları Tor tarafından sağlanan yerel SOCKS proxy'si üzerinden yönlendirir. Bu script, bu süreci sizin için otomatikleştirir ve kullanımı kolay bir arayüz sunar.

## 🛠️ Kurulum ve Kullanım

### Gereksinimler
- Android işletim sistemi ve kurulu bir **Termux** uygulaması.

### Kurulum Adımları

1.  **Projeyi Klonlayın:**
    ```bash
    git clone https://github.com/ketxa4749/termux-tor-runner.git
    ```

2.  **Proje Dizinine Girin:**
    ```bash
    cd termux-tor-runner
    ```

3.  **Gerekli Paketleri Yükleyin:**
    ```bash
    pkg install tor torsocks -y
    ```

4.  **Script'i Çalıştırılabilir Hale Getirin:**
    ```bash
    chmod +x anonim-calistir.sh
    ```

### Kullanım Adımları

1.  **Tor Servisini Başlatın (Her Termux oturumu için bir kez):**
    ```bash
    tor &
    ```

2.  **Komutunuzu Anonim Olarak Çalıştırın:**
    ```bash
    ./anonim-calistir.sh <çalıştırmak_istediğiniz_komut>
    ```

## 💡 Örnekler

- **Genel IP Adresinizi Kontrol Edin:**
  ```bash
  ./anonim-calistir.sh curl ipinfo.io/ip
  ```

- **Tor Bağlantınızı Doğrulayın:**
  ```bash
  ./anonim-calistir.sh curl https://check.torproject.org/
  ```

- **Bir Web Sitesinin Başlık Bilgilerini Çekin:**
  ```bash
  ./anonim-calistir.sh curl -I https://duckduckgo.com
  ```

- **Nmap ile Anonim Tarama (Sadece yasal ve izin verilen hedefler için):**
  ```bash
  ./anonim-calistir.sh nmap -F scanme.nmap.org
  ```

---

### ⚠️ Sorumluluk Reddi

- Bu araç yalnızca **eğitim ve yasal amaçlar** için tasarlanmıştır.
- Tor yüksek düzeyde gizlilik sağlasa da, **%100 anonimliği garanti etmez**. Risklerin farkında olun ve aracı sorumlu bir şekilde kullanın.
- Yaptığınız tüm eylemlerden yalnızca **siz sorumlusunuz**.

## 📄 Lisans

Bu proje MIT Lisansı altında lisanslanmıştır.