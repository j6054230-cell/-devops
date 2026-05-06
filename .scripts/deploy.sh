#!/bin/bash
echo "🚀 Starting deployment..."

# Loyiha papkasiga o'tish
cd /home/jamshid/my-python-app

# GitHub'dan eng oxirgi kodni tortib olish
git pull origin production

# Virtual muhitni faollashtirish
source venv/bin/activate

# Kutubxonalarni yangilash
pip install -r requirements.txt

# --- Ortiqcha Django buyruqlarini boshiga # qo'yib o'chiramiz ---
# python manage.py migrate
# python manage.py collectstatic --noinput

echo "✅ Deployment finished successfully!"
