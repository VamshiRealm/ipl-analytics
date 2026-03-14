#!/bin/bash
# IPL Analytics — One-time project setup script
# Run this from the ipl-analytics/ root directory

echo "🏏 Setting up IPL Analytics project..."

# Create folder structure
mkdir -p data/raw data/processed notebooks src outputs dashboard

echo "✅ Folder structure created"

# Create .gitignore
cat > .gitignore << 'EOF'
# Data files (too large for GitHub)
data/raw/*.csv
ipl.db

# Python
__pycache__/
*.pyc
.ipynb_checkpoints/
.env

# Conda
.conda/

# OS
.DS_Store
Thumbs.db
EOF

echo "✅ .gitignore created"

# Initialize git
git init
git add README.md requirements.txt .gitignore notebooks/
git commit -m "Initial commit: IPL Analytics Dashboard — project scaffold"

echo ""
echo "✅ Git initialized and first commit done!"
echo ""
echo "Next steps:"
echo "  1. Download Kaggle dataset and place CSVs in data/raw/"
echo "  2. Run: conda activate ipl_analytics"
echo "  3. Run: pip install -r requirements.txt"
echo "  4. Run: jupyter notebook"
echo "  5. Open notebooks/01_data_ingestion_sql.ipynb"
echo ""
echo "🚀 You're ready. Good luck!"
