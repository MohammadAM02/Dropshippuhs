#!/bin/bash

# =============================================
# GlowRide Asset Uploader
# =============================================

echo "=== GlowRide Asset Uploader ==="
echo "Make sure you are in the project root folder."

# Create folder structure if missing
mkdir -p assets/{hero,product,generated,ads,screenshots,icons}

echo ""
echo "Choose where to upload your assets:"
echo "1. hero        → Main hero banners"
echo "2. product     → Product photos"
echo "3. generated   → AI-generated images"
echo "4. ads         → Ad creatives"
echo "5. screenshots → Website screenshots"
echo "6. icons       → Logos & small graphics"
echo ""

read -p "Enter number (1-6): " choice

case $choice in
  1) folder="hero" ;;
  2) folder="product" ;;
  3) folder="generated" ;;
  4) folder="ads" ;;
  5) folder="screenshots" ;;
  6) folder="icons" ;;
  *) echo "Invalid option!"; exit 1 ;;
esac

echo ""
echo "✅ Folder ready: assets/$folder/"
echo ""
echo "Now copy your image files into that folder on your computer."
echo ""
echo "After copying, run these commands:"
echo ""
echo "   git add assets/$folder/"
echo "   git commit -m \"Add new assets to $folder\""
echo "   git push"
echo ""
echo "Done!"
