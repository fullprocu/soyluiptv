#!/bin/bash
echo "🔄 YENİ SİSTEM OLUŞTURULUYOR..."

# Ana dizin yapısı
mkdir -p {css,js,data,assets}

# index.html oluştur
cat > index.html << 'HTMLEND'
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SOYLU IPTV - Canlı Tarayıcı</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <style>
        body { background: #111827; color: white; }
        .container { max-width: 1200px; margin: 0 auto; padding: 20px; }
        .btn { background: #10b981; padding: 10px 20px; border-radius: 5px; }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-3xl font-bold text-green-400">🎬 SOYLU IPTV - YENİ SİSTEM</h1>
        <p class="text-gray-400">GitHub Pages üzerinde tamamen ücretsiz çalışır</p>
        
        <div class="mt-8">
            <button class="btn" onclick="alert('Sistem çalışıyor!')">TEST ET</button>
        </div>
        
        <div class="mt-8 p-4 bg-gray-800 rounded">
            <h2 class="text-xl font-bold">📡 Demo Panel</h2>
            <p>Host: wiperline.de:8080</p>
            <p>Kullanıcı: eryakut01</p>
            <p>Şifre: 2vSupS5fd5qW</p>
        </div>
    </div>
    
    <script>
        console.log('SOYLU IPTV çalışıyor...');
        localStorage.setItem('soylu_loaded', new Date().toISOString());
    </script>
</body>
</html>
HTMLEND

# GitHub Pages dosyaları
echo "" > .nojekyll
echo "fullprocu.github.io/soyluiptv" > CNAME

echo "✅ YENİ SİSTEM HAZIR!"
