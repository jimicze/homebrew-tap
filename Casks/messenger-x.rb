cask "messenger-x" do
  arch arm: "aarch64", intel: "e0523ef0f1c923b2b8bfd9175212f1d0fb4a73e6532e446816ce48199720a134"

  version "1.3.33"
  sha256 arm:   "ae3cabef4f3715dcc86ff23b7c5eac6858cfb320f1071dffb0d6ba8aaef8f910",
         intel: "e0523ef0f1c923b2b8bfd9175212f1d0fb4a73e6532e446816ce48199720a134"

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
