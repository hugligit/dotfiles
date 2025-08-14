import os
import glob
import configparser
from collections import defaultdict

# Locations for .desktop files
desktop_paths = [
    '/usr/share/applications',
    os.path.expanduser('~/.local/share/applications')
]

apps_by_category = defaultdict(list)

for path in desktop_paths:
    for desktop_file in glob.glob(os.path.join(path, '*.desktop')):
        config = configparser.ConfigParser(interpolation=None)
        try:
            config.read(desktop_file, encoding='utf-8')
            if 'Desktop Entry' not in config:
                continue
            entry = config['Desktop Entry']
            # Skip if NoDisplay or Hidden
            if entry.get('NoDisplay', 'false').lower() == 'true' or entry.get('Hidden', 'false').lower() == 'true':
                continue

            name = entry.get('Name', 'Unknown')
            categories = entry.get('Categories', '').split(';')
            comment = entry.get('Comment', '')

            # Use first meaningful category or "Uncategorised"
            category = next((c for c in categories if c), 'Uncategorised')

            apps_by_category[category].append((name, comment))
        except Exception:
            continue

# Output as Markdown
for category in sorted(apps_by_category):
    print(f"## {category}")
    for name, comment in sorted(apps_by_category[category], key=lambda x: x[0]):
        if comment:
            print(f"- **{name}** — {comment}")
        else:
            print(f"- **{name}**")
    print()

