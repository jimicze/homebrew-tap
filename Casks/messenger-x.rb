cask "messenger-x" do
  arch arm: "aarch64", intel: "d28e6d12515f5e2209f27b8a5bc0340711678cb5e1dd835c58eb95d6704b23e6"

  version "1.3.4"
  sha256 arm:   "267bf69a4e3b66cd85c23f90deb8e7cff4c30b6b007c0af1c3445310a78da543",
         intel: "d28e6d12515f5e2209f27b8a5bc0340711678cb5e1dd835c58eb95d6704b23e6"

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
