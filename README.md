# GameVault – PostgreSQL Veritabanı Tasarımı

Bu projede dijital oyun platformu için ilişkisel bir veritabanı tasarımı gerçekleştirdim. PostgreSQL kullanılarak yapılmıştır.

## Veritabanı Tasarımı

Veritabanı dört ana tablodan oluşmaktadır:

- developers :  Oyun geliştirici firmaların bilgilerini tutar.
- games : Oyunlara ait başlık, fiyat, çıkış tarihi, puan ve geliştirici bilgilerini içerir. Geliştirici–oyun ilişkisi 1-to-Many olarak modellenmiştir.
- genres :  Oyun türlerini ve kısa açıklamalarını saklar.
- games_genres:  Oyunlar ile türler arasındaki Many-to-Many ilişkiyi yöneten ara tablodur.

Tüm tablolar Primary Key ve Foreign Key  ile ilişkisel bütünlük sağlayacak şekilde oluşturuldu.

## Veri Ekleme || Güncelleme & Silme İşlemleri || Raporlama (SELECT & JOIN)

Veritabanına geliştirici firmalar, oyun türleri ve oyunlar eklenmiş oyun–tür ilişkileri ara tablo üzerinden kurulmuştur.
Veri yönetimi kapsamında oyun fiyatları güncellenmiş, hatalı bir puan düzeltilmiş ve ilişkili kayıtlar dikkate alınarak bir oyun silinmiştir.
Raporlama aşamasında JOIN kullanılarak oyun–firma listeleri oluşturulmuş, türe göre filtreleme, fiyat analizi ve anahtar kelime araması yapılmıştır.

## kurulum için 
- `CREATE DATABASE gamevault_db;` ile veritabanı oluşturunuz 
- **create-table.sql** dosyasını çalıştırıp tabloları oluşturunuz
- **create-data.sql** örnek data verilerini çalıştırınız 
- **transactions-db.sql** dosyası ile yapılan işlemleri takip edebilirsiniz.

## veritabanı tasarımı
<img width="2402" height="1016" alt="drawSQL-image-export-2025-12-16" src="https://github.com/user-attachments/assets/b3a3cd5f-ddb1-48ff-831e-e2d09db31fa1" />

## tablolar
<img width="292" height="125" alt="image" src="https://github.com/user-attachments/assets/6faa1309-abd9-4cd2-96ca-190a726f9516" />

## örnek kayıt ekleme 
<img width="1024" height="755" alt="image" src="https://github.com/user-attachments/assets/1aa98c88-c716-48e5-a914-ce03cb33128d" />

## güncelleme ve Silme (UPDATE / DELETE) 
<img width="1445" height="227" alt="image" src="https://github.com/user-attachments/assets/d2313d41-1b5b-4577-87ae-5323455b0413" />

##  Raporlama (SELECT & JOIN)
<img width="1670" height="895" alt="image" src="https://github.com/user-attachments/assets/122bf5c2-184a-42b1-a2de-14ecad3128be" />






