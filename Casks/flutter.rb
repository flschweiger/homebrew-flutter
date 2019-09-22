cask "flutter" do
  version :latest
  sha256 "cec91922f563e3a0ff09a5420f8a6eda2a74ce45914a2b008cdf4da97e52c4bd"
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
