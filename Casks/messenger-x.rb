cask "messenger-x" do
  arch arm: "aarch64", intel: "fb549936e116b33f4872bfa26e9d9527bc636590aca7d65027ac156b0c79819d"

  version "1.3.13"
  sha256 arm:   "a0028bb249c6f72d7819ccd836ce29d1b5d5b481de0152f279b9b8ef349bc265",
         intel: "fb549936e116b33f4872bfa26e9d9527bc636590aca7d65027ac156b0c79819d"

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
