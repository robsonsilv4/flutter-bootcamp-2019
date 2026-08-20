# Flutter 2019 Course — Apps

Seven apps built during the 2019 Flutter course ("Flutter Development
Bootcamp"), unified in this repository.

## Apps

| App | Folder | What it does |
|---|---|---|
| [I Am Rich](apps/i-am-rich) | `apps/i-am-rich` | Flutter version of the "I Am Rich" app |
| [MiCard](apps/mi-card) | `apps/mi-card` | Professional business card |
| [Dicee](apps/dicee) | `apps/dicee` | Dice roller with state management |
| [Magic 8 Ball](apps/magic-8-ball) | `apps/magic-8-ball` | Random answers to questions |
| [Xylophone](apps/xylophone) | `apps/xylophone` | Sound instrument |
| [Quizzler](apps/quizzler) | `apps/quizzler` | Quiz with scoring |
| [BMI Calculator](apps/bmi-calculator) | `apps/bmi-calculator` | BMI calculator |

Course dates and context in [NOTAS.md](NOTAS.md).

## Maintenance (2026-08)

In August 2026 all seven apps were migrated to null safety and Material 3:
dependencies upgraded, legacy widgets replaced, visible bugs fixed, and unit
and widget tests added. Each app runs on the current Flutter version.

## How to run

Each app in `apps/` is an independent Flutter project:

```bash
cd apps/<app-folder>
flutter pub get
flutter run
```

## Built with

- [Flutter](https://flutter.dev/)
- [Dart](https://dart.dev/)
- [Material Design](https://material.io/)

## Author

- **Robson Silva** — [robsonsilv4](https://github.com/robsonsilv4)
