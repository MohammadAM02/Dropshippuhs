#!/usr/bin/env python3
"""
GlowRide Repo Organizer
This script reorganizes your files into a clean structure.
It moves files instead of deleting them.
"""

import os
import shutil
from pathlib import Path

# Define new structure
STRUCTURE = {
    "docs/launch-playbooks": [
        "GlowRide-Launch-Playbook.md",
        "14-day-playbook-2.md"
    ],
    "docs/outreach": [
        "outreach_email_template.md",
        "whatsapp-sales-flow-2.md"
    ],
    "docs/suppliers": [
        "supplier_sources.md",
        "creative-and-ad-kit-2.md"
    ],
    "data": [
        "suppliers-for-restock-2.csv"
    ],
    "archive": [
        "index (2).html",
        "index (3).html",
        "creative-and-ad-kit-2 (1).md",
        "plan.pdf"
    ]
}

def main():
    print("🚀 Starting repo reorganization...\n")
    
    # Create folders
    for folder in STRUCTURE.keys():
        Path(folder).mkdir(parents=True, exist_ok=True)
        print(f"✅ Created folder: {folder}")
    
    # Move files
    for folder, files in STRUCTURE.items():
        for filename in files:
            src = Path(filename)
            if src.exists():
                dst = Path(folder) / filename
                shutil.move(str(src), str(dst))
                print(f"➡️  Moved: {filename} → {folder}/")
            else:
                print(f"⚠️  Not found: {filename}")
    
    # Rename best landing page to index.html (if needed)
    best_index = Path("index_3.html")
    if best_index.exists():
        best_index.rename("index.html")
        print("✅ Renamed index_3.html → index.html")
    
    print("\n🎉 Reorganization complete!")
    print("Old/duplicate files are now in the 'archive/' folder.")

if __name__ == "__main__":
    main()
    input("\nPress Enter to close...")
