# russian_declinator

A russian declension app.

## Notes

- Adjectives in the female singular instrumental case ignore the alternative endings '-ою', '-ею'.

## Getting Started

If you would like to build the app yourself, then you simply need:

- Flutter stable >= 2.2
- Dart >= 2.13
- macOS:
    - Xcode >= 12.4
    - CocoaPods >= 1.10.0
- web:
    - Chrome

To run on web, download the latest version of `sql-wasm.js` and `sql-wasm.wasm` from [here](https://github.com/sql-js/sql.js/releases) and place them in the web folder.

Note that the database must first be generated before running locally. See Tools for more info.

## Code Generation

### Localizations

To add new localizations, update `assets_dev/loca/loca.csv` and run

```sh
flutter pub run arb_generator ; sh bin/pseudoloca_generate.sh
```

### Moor Database

This should not be needed unless `database.g.dart` is accidentally deleted.

```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

## Tools

Firstly ensure that the CSV databases are downloaded to assets_dev:

```sh
dart bin/db/download_dev_assets.dart
```

To create the SQLite database, run the following script:

```sh
dart bin/db/create_db.dart 
```

## Credits

Special thanks to [Open Russian](https://en.openrussian.org/) [dictionary](https://github.com/Badestrand/russian-dictionary) which is used to generate the database.

## Raising Issues and Contributing

Please report bugs and issues, and raise feature requests [here](https://github.com/defuncart/russian_declinator/issues).

To contribute, submit a PR with a detailed description and tests, if applicable.
