# russian_declinator

A russian declension app.

## Getting Started

If you would like to build the app yourself, then you simply need:

- Flutter stable >= 2.2
- Dart >= 2.13
- macOS:
    - Xcode >= 12.4
    - CocoaPods >= 1.10.0
- web:
    - Chrome

## Code Generation

### Localizations

To add new localizations, update assets_dev/loca/loca.csv and run

```sh
flutter pub run arb_generator ; sh bin/pseudoloca_generate.sh
```

## Raising Issues and Contributing

Please report bugs and issues, and raise feature requests [here](https://github.com/defuncart/russian_declinator/issues).

To contribute, submit a PR with a detailed description and tests, if applicable.
