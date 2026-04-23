cask "messenger-x" do
  arch arm: "aarch64", intel: "54f5bc728b5795d10a7cbc7327c385fae92f9c532c71424cbb80957d2de82eb9"

  version "1.3.10"
  sha256 arm:   "e0bea70ff82e73455be2331fc67fcc08c4dadd23af8d43e9f295e949a3b419bf",
         intel: "54f5bc728b5795d10a7cbc7327c385fae92f9c532c71424cbb80957d2de82eb9"

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
