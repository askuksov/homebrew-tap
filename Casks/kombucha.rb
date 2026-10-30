cask "kombucha" do
  version "0.2.1"
  sha256 "4ffcdd4c7b0c9ab0a25cd53cb2b05ee4cbca1e885a854bb707e904a2bf22de51"

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
