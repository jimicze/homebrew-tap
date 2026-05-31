cask "messenger-x" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.6"
  sha256 arm:   "3bb8db527e84d138ba60cf5fdc3ce57802caef219325aca8f814e5895fd95627",
         intel: "a63bb2080085b0ebb37dc4aaffa49e1b3c5356a852dde2e11634bf5c83c037e4"

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
