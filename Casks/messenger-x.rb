cask "messenger-x" do
  arch arm: "aarch64", intel: "a58dcfeb89e63c219802df1e40c83d91e4b8422881cd3a06f1aa67424313be8b"

  version "1.3.30"
  sha256 arm:   "d128edcf277e4559f808c2ad153eb429f1d6d02b15b7cdf341ab30fefc15edf5",
         intel: "a58dcfeb89e63c219802df1e40c83d91e4b8422881cd3a06f1aa67424313be8b"

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
