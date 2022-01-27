
> **⚠️ DEPRECATION WARNING ⚠️**\
> There's a Brew cask which is directly available through `brew install --cask flutter`.\
> This formula is now deprecated.

# Homebrew Flutter 

Super-easy two-step [Flutter](https://flutter.dev) installation with [Homebrew](https://brew.sh) :sunglasses:

This will install the latest [master|dev|beta|stable] version of the framework directly from Google's servers.

Afterwards you can simply use `flutter channel [master|dev|beta|stable]` to switch between the different channels and `flutter upgrade` to upgarde to the latest version in the currently selected channel :cocktail:

## Installing

```
brew tap flschweiger/flutter
brew install flutter
```

And voilà! You're done :tada:

FYI: You will find your Flutter installation here: `/usr/local/Cellar/flutter/sdk`.

## Uninstalling
```
brew uninstall flutter
brew untap flschweiger/flutter
```

That's already it :put_litter_in_its_place:

## Contributors

- [dancamdev](https://github.com/dancamdev) - Added channel selection :wrench:
- [passsy](https://github.com/passsy) - Tester & proofreading :eyeglasses:
