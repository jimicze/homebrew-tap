cask "messenger-x" do
  arch arm: "aarch64", intel: "2779e106f8c6a76675fbb66c159d53facd05b17f646ced60ef041330c5d572c1"

  version "1.3.38"
  sha256 arm:   "a86a5ff531fa316ba7e16ee1aec49d05df9af146c1f490a35f0b7ab4fa7e3e41",
         intel: "2779e106f8c6a76675fbb66c159d53facd05b17f646ced60ef041330c5d572c1"

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
