cask "flutter" do
  version :latest
  sha256 "9bee10962848b138a0e47764de270123444fae35f6b0dc44615560eff633c634"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.9.1+hotfix.4-stable.zip"

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
