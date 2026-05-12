cask "messenger-x" do
  arch arm: "aarch64", intel: "0c8d7bec7d090d0dca70acc47f78b3dfd90c14a8677e6d96e0c171a1e5048157"

  version "1.4.9"
  sha256 arm:   "6bbfe5b83908bed07efa4ab30a49ed90c59b9ed68a21d3c426ff02c322a2f972",
         intel: "0c8d7bec7d090d0dca70acc47f78b3dfd90c14a8677e6d96e0c171a1e5048157"

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
