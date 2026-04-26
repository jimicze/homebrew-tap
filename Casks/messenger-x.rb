cask "messenger-x" do
  arch arm: "aarch64", intel: "040ed2ea109a2f812f0aa6e941b6c5e53d643074483b5ce17bcf1c6c4fbb1777"

  version "1.3.14"
  sha256 arm:   "169d70391bbc4842ae10c67ea98eb32f87432e68af496089c8d8e7192c5e1b10",
         intel: "040ed2ea109a2f812f0aa6e941b6c5e53d643074483b5ce17bcf1c6c4fbb1777"

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
