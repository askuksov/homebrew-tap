cask "kombucha" do
  version "0.1.0"
  sha256 "c2dfd640532646bc89db3f58f7c507f6942fd4a618ec2aeaa6a0e8a7234610f9"

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
