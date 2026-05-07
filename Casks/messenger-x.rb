cask "messenger-x" do
  arch arm: "aarch64", intel: "28b73f65765a80483309bbebc129d174c4bd08b8a938bad4be919331f3f07439"

  version "1.3.27"
  sha256 arm:   "3e2f4ff07ae47eff12c06a872672fdb039d93f6400afbe240ed7ce36ce03725f",
         intel: "28b73f65765a80483309bbebc129d174c4bd08b8a938bad4be919331f3f07439"

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
