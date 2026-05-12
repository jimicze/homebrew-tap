cask "messenger-x" do
  arch arm: "aarch64", intel: "ac5d320111e3394d8618ecc79c31470d64199d856d3f69fa9185df53bb0789ab"

  version "1.4.8"
  sha256 arm:   "52cdb8b72ad3e866cc04f58c46a46a8762e47a2cd14493ecf5b786e28c2e25d8",
         intel: "ac5d320111e3394d8618ecc79c31470d64199d856d3f69fa9185df53bb0789ab"

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
