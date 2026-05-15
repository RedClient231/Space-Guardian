# Space Guardian

Virtual Space for Android that allows running apps in an isolated environment. GameGuardian compatible.

## Features
- Run apps in virtual space without installation
- GameGuardian support inside virtual environment
- Xposed module support (no root required)
- Android 5.0 - 13 support
- ARM64 native support

## Build
```bash
./gradlew assembleDebug
```

## Architecture
- `app/` - UI layer (Home, App list, Xposed manager)
- `app/sdk/lib-release.aar` - Virtual engine core (prebuilt)
- `lib/` - Virtual engine source (reference)
- `hooklib/` - SandHook ART method hooking
- `xposedcompat/` - Xposed framework compatibility
