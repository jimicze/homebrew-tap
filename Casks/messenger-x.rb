cask "messenger-x" do
  arch arm: "aarch64", intel: "1442615802ce244a180a1fe1525797059ccf0df4fa9f1d597af87edd038800bf"

  version "1.5.0"
  sha256 arm:   "88cda6f68da9b6e60dc2fdcd93e1ad41fa5cf13fbc97a5602d9d38369062434d",
         intel: "1442615802ce244a180a1fe1525797059ccf0df4fa9f1d597af87edd038800bf"

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
