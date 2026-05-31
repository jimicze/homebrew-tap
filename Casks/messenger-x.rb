cask "messenger-x" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.7"
  sha256 arm:   "3bb8db527e84d138ba60cf5fdc3ce57802caef219325aca8f814e5895fd95627",
         intel: "995e1f650cda8070687f57c399e753dd1bfce4c2d351629f9858783ba6234c02"

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
