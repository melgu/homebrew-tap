cask "tidalswift" do
  version "1.1.0-69"
  sha256 "2727b38a8c91b87932de09f873fd3151c8187f9efcd022cf5aebc32362713712"

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
