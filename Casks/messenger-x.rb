cask "messenger-x" do
  arch arm: "aarch64", intel: "1ae27f8f642f925dcffb6db6cd8d95750c0c7059e37c1c3038dc7b26ff75906d"

  version "1.3.25"
  sha256 arm:   "e4bca89d3217208da076d163e252b8dfb5a4297328528364202505848d4d4d44",
         intel: "1ae27f8f642f925dcffb6db6cd8d95750c0c7059e37c1c3038dc7b26ff75906d"

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
