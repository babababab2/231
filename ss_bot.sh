from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time

# Tarayıcıyı başlat
driver = webdriver.Chrome()

# Instagram'a giriş yap
driver.get("https://www.instagram.com/accounts/login/")

# 3 saniye bekle
time.sleep(3)

# Kullanıcı adı ve şifre alanlarını bul
username_input = driver.find_element(By.NAME, "username")
password_input = driver.find_element(By.NAME, "password")

# Buraya kendi Instagram giriş bilgilerini yaz
username_input.send_keys("kyrakkyn391")
password_input.send_keys("kayram0601")
password_input.send_keys(Keys.RETURN)

# Giriş sonrası sayfanın yüklenmesini bekle
time.sleep(5)

# DM kutusuna git
driver.get("https://www.instagram.com/direct/inbox/")

# 3 saniye bekle
time.sleep(3)

# "Mesaj Gönder" butonuna tıkla
driver.find_element(By.XPATH, "//div[text()='Yeni mesaj']").click()
time.sleep(2)

# Alıcıya 'ecoss339' yaz
to_input = driver.find_element(By.NAME, "queryBox")
to_input.send_keys("ecoss339")
time.sleep(2)

# Kullanıcıyı seç
driver.find_element(By.XPATH, f"//div[text()='ecoss339']").click()

# İleri butonuna tıkla
driver.find_element(By.XPATH, "//div[text()='İleri']").click()
time.sleep(2)

# Mesaj kutusuna 50 kez "ss" yaz ve gönder
for _ in range(50):
    message_box = driver.find_element(By.TAG_NAME, "textarea")
    message_box.send_keys("ss")
    message_box.send_keys(Keys.RETURN)
    time.sleep(0.1)

print("İşlem tamamlandı!")
driver.quit()
