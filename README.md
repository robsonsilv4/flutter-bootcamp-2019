# Flutter Development Bootcamp 2019

[![Flutter](https://img.shields.io/badge/Flutter-3.47-02569B?logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.13-0175C2?logo=dart&logoColor=white)](https://dart.dev)

Seven apps built during the [Complete Flutter Development Bootcamp with
Dart](https://www.udemy.com/course/flutter-bootcamp-with-dart/), unified in
this repository.

## Apps

| App | What it does |
|---|---|
| [I Am Rich](apps/i-am-rich) | Flutter version of the "I Am Rich" app (intro) |
| [MiCard](apps/mi-card) | Professional business card (layout) |
| [Dicee](apps/dicee) | Dice roller (state management) |
| [Magic 8 Ball](apps/magic-8-ball) | Random answers to questions |
| [Xylophone](apps/xylophone) | Plays sounds on tap via `audioplayers` (dependencies) |
| [Quizzler](apps/quizzler) | Quiz with scoring (code organization) |
| [BMI Calculator](apps/bmi-calculator) | BMI calculator with sliders (layout + navigation) |

Each app in `apps/` is an independent Flutter project. Course dates and context
in [NOTES.md](NOTES.md).

## Recent changes

In August 2026 all seven apps were migrated to null safety and Material 3:
dependencies upgraded, legacy widgets replaced, bugs fixed, and unit and
widget tests added. Details per app in [NOTES.md](NOTES.md#2026-update).

## How to run

```bash
cd apps/<app-folder>
flutter pub get
flutter run
```

## Testing

```bash
cd apps/<app-folder>
flutter test
```

## Built with

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [Material Design](https://m3.material.io/)

## Acknowledgments

Apps built following the [Complete Flutter Development Bootcamp with
Dart](https://www.udemy.com/course/flutter-bootcamp-with-dart/) by
[Angela Yu](https://github.com/angelabauer).

## License

[MIT](LICENSE) for the source code. Course assets are excluded — see
[NOTICE](NOTICE.md).

## Author

- **Robson Silva** — [robsonsilv4](https://github.com/robsonsilv4)
