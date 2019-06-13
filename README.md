# Homebrew Flutter 

Super-easy two-step [Flutter](https://flutter.dev) installation with [Homebrew](https://brew.sh) :sunglasses:

This will install the latest `stable` version of the framework directly from Google's servers.

Afterwards you can simply use `flutter channel [master|dev|beta|stable]` to switch between the different channels and `flutter upgrade` to upgarde to the latest version in the currently selected channel :cocktail:

## Installing

```
brew tap flschweiger/flutter
brew cask install flutter
```

And voilà! You're done :tada:

FYI: You will find your Flutter installation here: `/usr/local/Caskroom/flutter/latest/flutter`.

## Uninstalling
```
brew cask uninstall flutter
brew untap flschweiger/flutter
```

That's already it :put_litter_in_its_place:
