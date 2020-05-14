cask "flutter" do
  version :latest
  sha256 "598c6341e43421257a57fc17e82f000eb2df3ed9593e6d698fd2a2f62fe1c829"
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_1.17.1-stable.zip"

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
