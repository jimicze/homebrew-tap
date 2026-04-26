cask "messenger-x" do
  arch arm: "aarch64", intel: "ec4e99efe7eeb614864de32359ec5989c8807907e0664c0e1a3c8b483de21bbb"

  version "1.3.18"
  sha256 arm:   "57937e5f6272b2205bb9bb25bd460e0cea61f491ff7a1b2e27f36c6cb7ab241a",
         intel: "ec4e99efe7eeb614864de32359ec5989c8807907e0664c0e1a3c8b483de21bbb"

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
