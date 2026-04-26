cask "messenger-x" do
  arch arm: "aarch64", intel: "c470fd15d2cb252a0fdef116b0737e20283c89dba89c4b30c424eccd1aac5157"

  version "1.3.15"
  sha256 arm:   "a8f9c0b3bb2d524aa935dd28d6d155c6626fedf3c6e9e0e6144ef874c3376d19",
         intel: "c470fd15d2cb252a0fdef116b0737e20283c89dba89c4b30c424eccd1aac5157"

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
