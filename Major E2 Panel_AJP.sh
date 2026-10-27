#!/bin/sh

# =========================================================================
# Major E2 Panel Installer - By John Kamel
# One-liner execution command format:
# wget -qO - الرابط_المباشر_لهذا_السكريبت | /bin/sh
# =========================================================================

# تحديد مسار التخزين المفضل لبلجن AJPanel للقوائم المخصصة
PANEL_DIR="/media/hdd/ajpanel/linuxsat_menu"

# في حال عدم وجود هارد ديسك، سيتم تحويل المسار إلى ذاكرة الفلاشة أو الذاكرة الداخلية
if [ ! -d "/media/hdd" ]; then
    PANEL_DIR="/media/usb/ajpanel/linuxsat_menu"
    if [ ! -d "/media/usb" ]; then
        PANEL_DIR="/etc/enigma2/ajpanel/linuxsat_menu"
    fi
fi

# إنشاء المجلدات تلقائياً إذا لم تكن موجودة
mkdir -p "$PANEL_DIR"

echo "===================================================="
echo "         Installing: Major E2 Panel                 "
echo "               By John Kamel                        "
echo "===================================================="
echo "[+] Downloading panel structure..."

# أمر جلب البانل المطور الخاص بك من الجيتهاب (قم بوضع رابط الـ Raw المباشر لملف الـ XML الخاص بك أدناه)
wget --no-check-certificate -q "https://raw.githubusercontent.com/major79879/Major_E2_Panel_AJP/refs/heads/main/Major%20E2%20Panel_AJP.xml"

if [ $? -eq 0 ]; then
    echo "===================================================="
    echo "       MAJOR E2 PANEL INSTALLED SUCCESSFULLY        "
    echo "===================================================="
    echo "[OK] مبروك التثبيت! افتح بلجن AJPanel ثم اختر:"
    echo "     File Browser -> linuxsat_menu -> major_panel.xml"
else
    echo "[-] خطأ: فشل تحميل البانل. تأكد من اتصال الرسيفر بالإنترنت ومن صحة الرابط."
fi

exit 0
