cask "flutter" do
  version :latest
  sha256 "0105b4c12d8c5d5f548befd0eabcd633a2ae8cea686635b199ff363337d756a5"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_1.17.0-stable.zip"

  name "flutter"
  homepage "https://flutter.dev"

  binary "flutter/bin/flutter", target: "flutter"
  
  postflight do
    # Upgrade stable channel to the latest version
    system_command '/usr/local/bin/flutter',
                   args: ['upgrade', '--force'],
                   sudo: false
  end
end
