cask "messenger-x" do
  arch arm: "aarch64", intel: "026b9e381659d7ac4ba851277b6cfcd32966eaa16a14347c883d85c08487fc62"

  version "1.3.31"
  sha256 arm:   "6576c0a13cd1b14c522cdfa9072066f2d458d28d7ef895f1861601ce3a30ef9a",
         intel: "026b9e381659d7ac4ba851277b6cfcd32966eaa16a14347c883d85c08487fc62"

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
