cask "kombucha" do
  version "0.3.0"
  sha256 "a34b9520dc7aad1fbb48ae620cc2de2089996dfa33757e2daa0743476ee037b7"

  url "https://github.com/askuksov/kombucha/releases/download/v#{version}/Kombucha-#{version}.zip"
  name "Kombucha"
  desc "Battery charge limiter in the menu bar"
  homepage "https://github.com/askuksov/kombucha"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Kombucha.app"

  uninstall quit: "dev.kuksov.kombucha"

  zap trash: [
    "~/Library/Application Support/Kombucha",
    "~/Library/Preferences/dev.kuksov.kombucha.plist",
  ]
end
