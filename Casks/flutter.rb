cask "flutter" do
  version :latest
  sha256 "1bd5d165c79efebfba39e4602d6e07e74b40798630eb7173caedf0f664c53035"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.7.8+hotfix.3-stable.zip"

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
