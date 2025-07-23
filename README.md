# Termux Tor Runner

Bu araç, Termux üzerinde komut satırı uygulamalarını Tor ağı üzerinden kolayca çalıştırmanızı sağlar.

## Kurulum

1.  **Gerekli Paketleri Yükleyin:**

    ```bash
    pkg install tor torsocks
    ```

2.  **Script'i Çalıştırılabilir Hale Getirin:**

    ```bash
    chmod +x anonim-calistir.sh
    ```

## Kullanım

1.  **Tor Servisini Başlatın:**

    Termux'u her başlattığınızda, script'i kullanmadan önce Tor servisini başlatmanız gerekir:

    ```bash
    tor &
    ```

2.  **Komutları Anonim Çalıştırın:**

    Herhangi bir komutu Tor üzerinden çalıştırmak için `./anonim-calistir.sh` komutunu ve ardından çalıştırmak istediğiniz komutu kullanın.

    **Örnek:** IP adresinizi kontrol etme

    ```bash
    ./anonim-calistir.sh curl https://check.torproject.org/
    ```

    **Örnek:** Bir web sitesini indirme

    ```bash
    ./anonim-calistir.sh wget https://example.com
    ```
