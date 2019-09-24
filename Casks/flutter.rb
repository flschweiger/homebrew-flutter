cask "flutter" do
  version :latest
  sha256 "8f7a5cfa1494b6758e1b9b7913871a60934c7f3d487979a6ef176ce4f2a7b4a3"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.9.1+hotfix.2-stable.zip"

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
