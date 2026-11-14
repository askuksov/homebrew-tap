cask "kombucha" do
  version "0.3.1"
  sha256 "afd1514be31443019c52ae3a30cc11ae251947324c165f7922294bc797ce5d63"

  url "https://github.com/askuksov/kombucha/releases/download/v#{version}/Kombucha-#{version}.zip"
  name "Kombucha"
  desc "Battery charge limiter in the menu bar"
  homepage "https://kombucha.kuksov.dev"

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
