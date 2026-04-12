cask "messenger-x" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "0654962c9af1c7f198387560bbb6ca00cd06551cacf7fe620bb6d272ab57f382",
         intel: "eaf9cbd58e6b72ba6c1f959bb07d543ca04f3a8ce8e3c20bc36953250e9be8ae"

  url "https://github.com/jimicze/fb-messanger-crossplatform/releases/download/v#{version}/Messenger.X_#{version}_#{arch}.dmg"
  name "Messenger X"
  desc "Cross-platform desktop client for Facebook Messenger"
  homepage "https://github.com/jimicze/fb-messanger-crossplatform"

  app "Messenger X.app"

  zap trash: [
    "~/Library/Application Support/com.lasakondrej.messengerx",
    "~/Library/Caches/com.lasakondrej.messengerx",
    "~/Library/Logs/com.lasakondrej.messengerx",
    "~/Library/Preferences/com.lasakondrej.messengerx.plist",
    "~/Library/Saved Application State/com.lasakondrej.messengerx.savedState",
  ]
end
