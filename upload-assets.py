#!/usr/bin/env python3
"""
GlowRide Asset Uploader - Drag & Drop Friendly
"""

import os
import sys
import shutil
from pathlib import Path

# Define folders
FOLDERS = {
    "1": "hero",
    "2": "product", 
    "3": "generated",
    "4": "ads",
    "5": "screenshots",
    "6": "icons"
}

def main():
    print("\n=== GlowRide Asset Uploader ===\n")
    
    # Create folders
    for folder in FOLDERS.values():
        os.makedirs(f"assets/{folder}", exist_ok=True)
    
    print("Choose destination folder:")
    for num, name in FOLDERS.items():
        print(f"  {num}. {name}")
    print()
    
    choice = input("Enter number (1-6): ").strip()
    
    if choice not in FOLDERS:
        print("❌ Invalid choice!")
        return
    
    target_folder = f"assets/{FOLDERS[choice]}"
    print(f"\n✅ Target folder: {target_folder}/")
    print("\nYou can now drag & drop files into this folder on your computer.")
    print("Or copy files into it manually.")
    print("\nAfter adding files, run these commands:")
    print(f"   git add {target_folder}/")
    print(f'   git commit -m "Add new assets to {FOLDERS[choice]}"')
    print("   git push")
    print("\nDone! 🎉")

if __name__ == "__main__":
    main()
    
    input("\nPress Enter to close...")
