cask "messenger-x" do
  arch arm: "aarch64", intel: "e9979994d3b5954bcfc9f53a65783ba12ffa5f90abd007ffaa836db0c9b6f678"

  version "1.3.34"
  sha256 arm:   "50d67a23a34999fa8ca0833ab7302ce8855953d355762870dc42b2d79b691ad6",
         intel: "e9979994d3b5954bcfc9f53a65783ba12ffa5f90abd007ffaa836db0c9b6f678"

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
