#!/bin/bash
set -e
echo "🚀 Starting deployment..."
# Navigate to your application directory
cd /var/www/your-python-app
echo "📥 Pulling latest code from GitHub..."
git pull origin production
echo "🔧 Activating virtual environment..."
# Activate your virtual environment
source venv/bin/activate
echo "📦 Installing/updating dependencies..."
# Install Python dependencies
pip install -r requirements.txt
echo "🗄️ Running database migrations..."
# For Django projects
python manage.py migrate --noinput
# For Flask projects with Flask-Migrate
# flask db upgrade
echo "📊 Collecting static files..."
# For Django projects
python manage.py collectstatic --noinput
echo "🔄 Restarting application server..."
# Restart your application service
sudo systemctl restart your-python-app
# Or if using PM2
# pm2 restart your-python-app
# Or if using Gunicorn directly
# pkill -f gunicorn
# nohup gunicorn app:app --bind 0.0.0.0:8000 --daemon
echo "🏥 Running health check..."
# Simple health check
sleep 5
curl -f http://localhost:8000/health || curl -f http://localhost:8000/ || echo "Health check failed"
echo "✅ Deployment completed successfully!"
