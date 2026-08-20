# Course Notes — Flutter 2019

This repository unifies the seven applications built during the 2019 Flutter
course ("Flutter Development Bootcamp"). Each app lives in a subfolder under
`apps/`, with the source code preserved from its original repository.

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

## History

All seven apps were developed between July 5 and 21, 2019, in the order shown
in the table above, following the course's concept progression (first widgets →
state management → dependencies → navigation).

## Origin

Before the unification (2026-08-02), each app was a separate repository:

- `robsonsilv4/IAmRichFlutter`
- `robsonsilv4/MiCard`
- `robsonsilv4/Dicee`
- `robsonsilv4/Magic8Ball`
- `robsonsilv4/XylophoneFlutter`
- `robsonsilv4/QuizzlerFlutter`
- `robsonsilv4/bmi-calculator`

Those repositories were emptied and removed; the code remains preserved in this
structure.

## 2026 update

On 2026-08-02 all seven apps were unified into this repository (see Origin
above). On 2026-08-19/20 every app was migrated to null safety and Material 3:
SDK constraint raised to Dart >=3.12, deprecated widgets replaced (e.g.
`FlatButton`), dependencies upgraded (e.g. `audioplayers` 0.13 → 6,
`rflutter_alert` 1 → 2, `font_awesome_flutter` 8 → 11), a few visible bugs
fixed, and unit and widget tests added. The repository was renamed from
`IAmRichFlutter` to `flutter-bootcamp-2019`.
