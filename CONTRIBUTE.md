# CONTRIBUTE.md

## Generate App launcher icon

```bash
# In project directory
flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml
```

## Generate assets

```bash
# In project directory

# Install using pub global:
dart pub global activate flutter_asset_generator

# Use
fgen -w -o lib/assets.dart -n Assets 
```
