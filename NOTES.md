# Course Notes — Flutter 2019

Seven apps from the 2019 Flutter course ("Flutter Development Bootcamp"),
unified in this repository. Each app lives in a subfolder under `apps/`,
source code preserved from its original repository.

## Applications

| App | Folder | What it does | Created | Last commit |
|---|---|---|---|---|
| I Am Rich | `apps/i-am-rich` | Flutter version of the "I Am Rich" app (end of the intro module) | 2019-07-05 | 2019-07-05 |
| MiCard | `apps/mi-card` | Professional business card | 2019-07-07 | 2019-07-07 |
| Dicee | `apps/dicee` | Dice roller with state management | 2019-07-08 | 2019-07-08 |
| Magic 8 Ball | `apps/magic-8-ball` | Random answers to questions | 2019-07-09 | 2019-07-09 |
| Xylophone | `apps/xylophone` | Sound instrument (via `audioplayers`) | 2019-07-10 | 2019-07-10 |
| Quizzler | `apps/quizzler` | Quiz with scoring (screen state) | 2019-07-11 | 2019-07-11 |
| BMI Calculator | `apps/bmi-calculator` | BMI calculator (layout + navigation) | 2019-07-12 | 2019-07-21 |

Developed 2019-07-05 → 2019-07-21, following the course progression (first
widgets → state management → dependencies → navigation).

## Origin

Before the unification (2026-08-02), each app was its own repository:

- `robsonsilv4/IAmRichFlutter`
- `robsonsilv4/MiCard`
- `robsonsilv4/Dicee`
- `robsonsilv4/Magic8Ball`
- `robsonsilv4/XylophoneFlutter`
- `robsonsilv4/QuizzlerFlutter`
- `robsonsilv4/bmi-calculator`

Those repositories were emptied and removed; the code lives on in this
structure.

## 2026 update

- 2026-08-02: seven apps unified into this repository.
- 2026-08-19/20: every app migrated to null safety and Material 3 (SDK
  constraint Dart >=3.12; `FlatButton` replaced; `audioplayers` 0.13 → 6.8.1,
  `rflutter_alert` 1 → 2, `font_awesome_flutter` 8 → 11); visible bugs fixed;
  unit and widget tests added.
- Repository renamed `IAmRichFlutter` → `flutter-bootcamp-2019`.

### Migration per app

| App | PR | Key changes | Tests |
|---|---|---|---|
| i-am-rich | #3 | null safety + Material 3; platforms regenerated | 2 |
| mi-card | #4 | avatar initials "RS"; "DJANGO" → "DART" | 2 |
| dicee | #5 | `FlatButton` → `InkWell` | 3 |
| magic-8-ball | #6 | `FlatButton` → `InkWell` | 3 |
| xylophone | #7 | `audioplayers` 0.13 → 6.8.1 | 2 |
| quizzler | #8 | `rflutter_alert` 1.0.3 → 2.0.7; score icons and dialog contrast fixed | 8 |
| bmi-calculator | #9 | `font_awesome_flutter` → 11; `flutter_launcher_icons` removed; "nornal" typo fixed; HEIGHT slider overflow fixed | 7 |

## How to verify

```bash
cd apps/<app-folder>
flutter analyze   # 0 issues
flutter test      # all tests pass
```

BMI Calculator widget tests need a phone-sized viewport (1080x2340 @3);
`test/helpers/pump_app.dart` already sets it.
