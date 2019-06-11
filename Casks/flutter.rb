cask "flutter" do
  version :latest
  sha256 "6a2554c3754322848aa6b38e449c42d5aa9149ea82bf97f168782f68a8efa0b1"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.5.4-hotfix.2-stable.zip"

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
