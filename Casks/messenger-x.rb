cask "messenger-x" do
  arch arm: "aarch64", intel: "7dd62f8935bd63f450126c5b07dfb0d630070201fd45ebfe6d28fc62534213ad"

  version "1.3.32"
  sha256 arm:   "f561c8c4d27cb7c8753b3e60a95671d581a4dc726de5c6a67952a205edd06004",
         intel: "7dd62f8935bd63f450126c5b07dfb0d630070201fd45ebfe6d28fc62534213ad"

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
