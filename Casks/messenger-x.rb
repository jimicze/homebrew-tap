cask "messenger-x" do
  arch arm: "aarch64", intel: "76259af105bfb2325ef9b99b196af9c4adbb80d256b87500028530ae4da38253"

  version "1.3.23"
  sha256 arm:   "d6e9b8a9864a3b069ce65597def591aeb7fac9cbea87c4d8337110e58c1191e3",
         intel: "76259af105bfb2325ef9b99b196af9c4adbb80d256b87500028530ae4da38253"

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
