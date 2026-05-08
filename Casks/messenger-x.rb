cask "messenger-x" do
  arch arm: "aarch64", intel: "7e96992099eca3ef142888b17a972281a4b2ff38eb36b590a4cb4936454bb528"

  version "1.4.0"
  sha256 arm:   "07fe8d641325de9312b4f4d4e2d06411e16dbbf88db9acd33d20cfb83e792a16",
         intel: "7e96992099eca3ef142888b17a972281a4b2ff38eb36b590a4cb4936454bb528"

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
