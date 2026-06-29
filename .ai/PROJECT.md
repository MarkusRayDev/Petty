# Petty — Project Overview

## Основная информация
- **Название:** Petty
- **Bundle ID:** MarkusRay.Petty
- **Разработчик:** Markus Ray (sihtmark@gmail.com)
- **Дата начала:** 29.06.2026
- **Swift:** 5.0
- **Минимальные версии:** iOS 17.6 / macOS 14.6

## Структура проекта

```
Petty/
├── Petty/                  # Основной таргет
│   ├── PettyApp.swift      # Точка входа (@main)
│   ├── AppDelegate.swift   # UIApplicationDelegate
│   ├── ContentView.swift   # Корневой View
│   └── Assets.xcassets/    # Ресурсы
├── PettyTests/             # Unit тесты
├── PettyUITests/           # UI тесты
└── .ai/                    # AI-контекст (этот каталог)
```

## Точка входа
`PettyApp.swift` — использует `@NSApplicationDelegateAdaptor` / `@UIApplicationDelegateAdaptor` для поддержки и macOS и iOS из одного таргета.

## Текущее состояние
Проект только что создан. `ContentView` содержит шаблонный код (globe icon + "Hello, world!").

## Технологии
- SwiftUI (основной UI-фреймворк)
- Multi-platform (iOS + macOS из одного таргета)
- Xcode 15+

## Задачи / TODO
*(пусто — заполняется по мере работы)*

## История решений
*(заполняется по мере работы)*
