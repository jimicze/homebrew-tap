cask "messenger-x" do
  arch arm: "aarch64", intel: "ca9223b5d604958b367e030387b8288977444b35aec7b55c423b56430c195dd8"

  version "1.3.28"
  sha256 arm:   "f56819cc160eb3c0a8bf074ce97b55433d6b895f8745b459d209ceced77705f4",
         intel: "ca9223b5d604958b367e030387b8288977444b35aec7b55c423b56430c195dd8"

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
