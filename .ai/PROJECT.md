# Petty — Project Overview

## Основная информация
- **Название:** Petty
- **Bundle ID:** MarkusRay.Petty
- **Разработчик:** Markus Ray (sihtmark@gmail.com)
- **GitHub:** `git@github.com:MarkusRayDev/Petty.git`
- **Дата начала:** 29.06.2026
- **Swift:** 5.9+
- **Минимальные версии:** iOS 17.6

## Структура проекта

```
Petty/
├── Petty/                          # Основной app-таргет (тонкая оболочка)
│   ├── PettyApp.swift              # Точка входа (@main) → AppCoordinator
│   ├── AppDelegate.swift           # UIApplicationDelegate
│   ├── Assets.xcassets/
│   └── Coordinator/
│       ├── Route.swift             # Enum всех маршрутов приложения
│       ├── Router.swift            # @Observable — push/pop навигация
│       └── AppCoordinator.swift    # Root view, NavigationStack, сборка фич
├── Packages/
│   ├── Domain/                     # Entities, UseCase protocols, Repository protocols
│   ├── Data/                       # Repository implementations, Network, Local
│   └── Features/
│       └── Home/                   # Первая фича (шаблон для новых)
│           └── Sources/Home/
│               ├── HomeView.swift
│               └── HomeViewModel.swift
├── PettyTests/
├── PettyUITests/
├── Project.swift                   # Tuist-манифест
├── Tuist.swift                     # Tuist config
└── .ai/                            # AI-контекст
```

## Архитектура
- **Clean Architecture** — Domain / Data / Presentation слои
- **Coordinator** — все переходы только через `Router`, никаких `NavigationLink` напрямую во View
- **Каждая новая фича** — отдельный локальный SPM-пакет в `Packages/Features/`
- **@Observable** — вместо `@StateObject`/`@ObservedObject` (iOS 17+)
- **NavigationStack** с типизированным `NavigationPath`

## Как добавить новую фичу
1. Создать `Packages/Features/NewFeature/Package.swift` + `Sources/NewFeature/`
2. Добавить `.local(path: "Packages/Features/NewFeature")` в `Project.swift` → `packages`
3. Добавить `.package(product: "NewFeature")` в dependencies основного таргета
4. Добавить `case newFeature` в `Route.swift`
5. Добавить `case .newFeature:` в `AppCoordinator.swift` → `destination(for:)`
6. Запустить `tuist generate`

## Технологии
- SwiftUI + @Observable (iOS 17+)
- Tuist 4.x (управление проектом)
- Локальные SPM-пакеты для фич
- Multi-platform: iPhone / iPad / Mac (Designed for iPad) / visionOS

## История решений
- **Tuist вместо .xcodeproj в git** — исключает конфликты в `.pbxproj` при работе в команде
- **SPM-фичи** — изоляция, быстрая компиляция, явные зависимости между слоями
- **Router через @Observable** — нет лишних `@EnvironmentObject` обёрток
