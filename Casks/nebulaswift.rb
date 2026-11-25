cask "nebulaswift" do
  version "1.0.1-2"
  sha256 "5a0249745a95715a244dd58a1f45afb893fdb3e429390b192d49f7a6b7c4c0c5"

  url "https://github.com/melgu/NebulaSwift/releases/download/#{version}/NebulaSwift.zip"
  name "NebulaSwift"
  desc "Unofficial client for the Nebula streaming service"
  homepage "https://github.com/melgu/NebulaSwift"

  depends_on macos: :sonoma

  app "NebulaSwift.app"

  # The app isn't notarized, so Gatekeeper would refuse to open it
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/NebulaSwift.app"]
  end

  zap trash: [
    "~/Library/Application Scripts/de.melgu.NebulaSwift",
    "~/Library/Containers/de.melgu.NebulaSwift",
  ]
end
