cask "flutter" do
  version :latest
  sha256 "4506b3ab985f86a7a5b7a65ba2377b7407395e993c5094b9c843cbc4c798eb92"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_1.17.3-stable.zip"

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
