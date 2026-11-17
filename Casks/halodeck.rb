cask "halodeck" do
  version "0.1.0"
  sha256 "b7bfc86165dcc5b1ceacfca9379a28d7f6eb693816ca7ef146a7e88cb9f608cf"

  url "https://github.com/disc/halodeck/releases/download/v#{version}/Halodeck-#{version}.zip"
  name "Halodeck"
  desc "Turns the trackpad's sides into sliders and its corners into buttons"
  homepage "https://github.com/disc/halodeck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Halodeck.app"

  uninstall quit: "io.github.disc.halodeck"

  zap trash: [
    "~/Library/Caches/io.github.disc.halodeck",
    "~/Library/HTTPStorages/io.github.disc.halodeck",
    "~/Library/Preferences/io.github.disc.halodeck.plist",
  ]
end
