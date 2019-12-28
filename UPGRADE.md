## Upgrade cask

When a new stable Flutter release gets published it is recommended to update this bottle.
This lets new users automatically download the latest version when installing. 
Existing users receive the update via `brew cask upgrade` and don't have to run `flutter upgrade` themselves.

- Go to [flutter.dev - macOS install](https://flutter.dev/docs/get-started/install/macos) and download the latest release (`flutter_macos_v1.X.Y+hotfix.Z-stable.zip`).
- Run `openssl dgst -sha256 ~/Downloads/flutter_macos_v1.X.Y+hotfix.Z-stable.zip` to get the sha256
- Replace the download link and the sha256 in `Casks/flutter.rb`
- Verify it is working by running `brew cask reinstall Casks/flutter.rb`