cask "messenger-x" do
  arch arm: "aarch64", intel: "5899450ed417b943867b7e5d602393d83304ba19312835d80dc0c92f0d0adf23"

  version "1.3.20"
  sha256 arm:   "3eb8eec1be2de1a64c55943f4a7f7c5d1c2252aa58e8918112398896b3dea338",
         intel: "5899450ed417b943867b7e5d602393d83304ba19312835d80dc0c92f0d0adf23"

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
