cask "tidalswift" do
  version "1.0.0-68"
  sha256 "7d8de599d573e73cfac358e941490b9338e6b08d7fbf246fa79639defe8c4d85"

  url "https://github.com/melgu/TidalSwift/releases/download/#{version}/TidalSwift.zip"
  name "TidalSwift"
  desc "Tidal client with offline playback, downloads, lyrics and new releases"
  homepage "https://github.com/melgu/TidalSwift"

  depends_on macos: :sonoma

  app "TidalSwift.app"

  # The app isn't notarized, so Gatekeeper would refuse to open it
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/TidalSwift.app"]
  end

  zap trash: "~/Library/Containers/de.melgu.TidalSwift"
end
