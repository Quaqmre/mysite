+++
title = "Profesyonel Yazılım Hayatımdaki ilk adımlarım"
subtitle = "Full Stack Yazılım Geliştirici"
date = 2021-01-01
tags = ['experiences']
description = "Web Uygulaması Maceram"
banner = 'img/dennis.jpeg'


# For description meta tag

+++

### Turcell-eŞirket

İlk iş yeri deneyimim olmakla birlikte benim gelişimim açısından önemli bir yere sahiptir.SaaS bir uygulama olarak Cloud da koşan ve milyonlarca transactionın olduğu bir uygulamada ilk defa yer alıyordum.

Web uygulamayı geliştirmek için içeride güncel teknolojiler kullanılması ve benim bunlara olan merak ve öğrenme isteğimle birlikte bir çok konu hakkında bakış açısı ve daha da önemlisi kafamda sorular oluşmaya başladı.

Web uygulaması geliştirmenin ne olduğu , nasıl olduğu , nasıl çalıştığı , bakımının nasıl yapıldığı,nerede koşturulduğu, performans çıktılarının neler olabileceği ve bir çok konu daha..

- İlk olarak bildiğimi düşündüğüm Network ile gerçek anlamda tanışmam.

- İkinci konu Web Serverların ne demek olduğu.

- Kullanıcı deneyimi için zero-down-time deployment

- Microservice mimarisi

- Devops kavramı ve nasıl işletildiği

- En önemliside kullanıcı deneyimi ve memnuniyetinin sağlanması

##

---

##

Bahsetmiş olduğum içerikleri bu yazımda kısada olsa açacağım ancak her başlık en azından bir blog yazısını hakedicek konular bu nedenle bu maddeleri zaman buldukça bloglarımda bahsetmeye çalışacağım.

### Çalıştığım süre boyunca edindiğim tecrübe ve konular:

###

## Yazılım Dilleri

### C# :

Yazılım dilleri konusunda sahip olduğum C# bilgimi kat ve kat geliştirerek çok iyi bir .Net geliştricisi olabildim.Sadece .Net diyip geçmemek gerekir içeride kullandığımız .Net Core güncel kalabilmeyi ve Windows'un geliştirmiş olduğu bir Teknolojiyi Linuxta koşturabilmenin tadına vardım.

### JavaScript :

Bu dil ve frameworkleri ile daha önce hiç tecrübem olmaması ve bu konuda bilgi sahibi olmamam beni çok şaşırttı. Ancak JS ve kullandığımız Framework olan React konusunda dilinde sahip olduğu basitlik ve community bunun üzerine harcadığım eforuda katınca oldukça hızlı adapte olabildim. JavaScript konusunda hala yolun yarısına bile gelemediğimi düşünüyorum ancak kod okuma ,bug fix ve küçül featur ekleme konularındada sorun yaşamadığım için kendimi bu dildede rahat hissediyorum.

## Devops Tarafı

## Linux

Linux ile yine ilk tanışmam bu yıl içerisinde oldu ve kendimi çok kötü hissettim çünkü böyle bir işletim sistemiyle yazılımcı olmak istiyen bir insanın nasıl olurda daha önce tanışamadığını hayretle karşılıyorum.

Ama bu satırları şuan Ubuntu 18.0 üzerinden yazar bir nevi günah çıkartıyorum artık.

Windows sunucuların maliyetine karşı unix dağıtımları opensource olup bir çok maliyetten kurtarmaktadır.Ayrıca open-source uygulamaları kullanabilmek ayrı bir keyif.

## Docker

Docker Linux işletim sistemine geçmeye karar vermeden önce Linuxta uzmanlaşmak,microservis mimarisinin ne olduğunu daha iyi anlamak ve network,iptables,firewall gibi kavramların ne anlama geldiğini güvenli alanımda deneyimleme imkanı sağladı.Öğrenmeye başladığımda Linux dünyasından da uzak olduğum için bana büyü gibi bir şey geliyordu Docker ve Containerlar ancak daha çok araştırdıkça aslında basitleştirilmiş bir tool olduğunu sonunda anlıyabilmiştim. Linux işletim sistemlerinde bulunan 2 command üzerine yazılmış bir framework olarak görmeye başladım.

Bu commadlar **chroot(1979)** ve **cgroups(2007)** commandlarıdır.
Kısaca değinirsek bir directory içerisinde olan dosyaların,veya prosseslerin yetkilerinin kısıtlandırılmasıdır.Temel amaç güvenliktir.

`Spoiler gibi olucak ancak golang ile nasıl 40 satırda kendi containerinizi yazabileceğinizi belki referans vererek anlatabilirim.`

## Redis

Her konu kendine özgü problemleri çözmek için doğmakta. Redis'te bunlara en güzel örneklerden biri olabilir. Monolith uygulamardan microservices mimarisine doğru geçiş yapılmaya başladıkça artık in-memory cache işlemi beraberinde bir çok problem doğurmaya başladı.Örnek vermek gerekirse
farklı sunucularda çalışan 2 servisin mem-cache'lerinin sencron olamaması ve **sticky** ip yapısı kullanılmıyor, **round-robin** gibi bir routing yapısı kullanılıyorsa artık bu çok büyük bir problem oluşturmaya
başladı.

Bu nedenle centralize bir cache mekanizması ihtiyacı duyulmaya başlandı bunun için inanılmaz teknolojiler geliştirildi ancak benim bire bir Yazılımcı ve kısmi OS admin olarak deneyimlediğim için Redis benim için ayrı bir yeri var.

Örnek vermek gerekirse incelediğim **etcd** , **bolt** gibi golang ile yazılan diğer key-value storlarıda inceleyebilirsiniz.

Kullanım amacımız microservislerin ortak olarak hızlı bir şekilde yazıp okuyabileceği bir cache yapısı kurabilmekti.

## RabbitMQ

Hem yazılım geliştirici hemde bu uygulamayı yöneten kişi olarak redis'ten sonra en çok hoşuma giden diğer bir tool.

Bu tool'da yine microservis mimariler için kullanılması inanılmaz katkılar sağlayan ve async işlemlerin gerçek anlamda yapılabilmesine olanak sağlayan **message-bus** uygulamasıdır.

İstenilen her şekilde kullanılabilir tabiki şuan detaylarına girmeyeceğim ama pub-sub , Topics , queues gibi kullanılabilmektedir.

İhtiyaç spesifik olarak **kafka** yerine her zaman ilk seçeneğim **Rabbit-MQ** olacaktır.

## Nginx

Evet gelelim nginx arkadaşımıza , yanlış hatırlayabiliyor olabilirm ama Igor Sysoev tarafından ve **C10K** problemine ve diğer bir çoğuna çözüm olabilmesi için yazılmış bir Tool'dur.Hızlı populer olan ve bunu gerçekten hakediyor, **Apache** , **IIS** gibi diğer popüler web serverların önüne geçerek en çok kullanılan web server olmayı başardı. Yine gönlüm bu konuda da **Traefik** gibi golang ile yazılan alternatiflere kayıyor.Giderek tam bir **gopher** oluyorum galiba.

#

---

#
