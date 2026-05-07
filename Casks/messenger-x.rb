cask "messenger-x" do
  arch arm: "aarch64", intel: "b9edfaa157a86c6820316a1cb392de5dd863e55679551769d0d328f64dbffb1f"

  version "1.3.24"
  sha256 arm:   "4dad8a34bc03ff247288ba10541839e9aaa1016b45459e6419d44be368394b11",
         intel: "b9edfaa157a86c6820316a1cb392de5dd863e55679551769d0d328f64dbffb1f"

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
