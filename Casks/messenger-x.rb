cask "messenger-x" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.7"
  sha256 arm:   "ea43c0ff0d757b6f643cb92957febfd81b13fe712cfc4e7f9f053ea6449efc33",
         intel: "42ce4a79185f9daa1c5a066713520e5a7c9eb57339471dbfdc6a00fd912b93a7"

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
