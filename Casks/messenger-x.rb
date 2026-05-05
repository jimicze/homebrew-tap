cask "messenger-x" do
  arch arm: "aarch64", intel: "e5cca20ad3d2146b27dead48c252f78dbfcde0252ec03e3c673812c92e26e5c0"

  version "1.3.21"
  sha256 arm:   "bc657103531ddfe2a1e43a5900f4c4a32d2bd2e5102cb2b9613d082034704c9e",
         intel: "e5cca20ad3d2146b27dead48c252f78dbfcde0252ec03e3c673812c92e26e5c0"

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
