class TidalswiftCli < Formula
  desc "Command-line tool and MCP server for Tidal"
  homepage "https://github.com/melgu/TidalSwiftCLI"
  url "https://github.com/melgu/TidalSwiftCLI/releases/download/1.0.0/tidal-1.0.0-macos.tar.gz"
  sha256 "d4feb3415bbb3f41e56e84c2d1c5304bb4f88dcd4cdc60c9f6c90df225c08d21"
  license "GPL-3.0-only"

  depends_on macos: :sonoma

  def install
    bin.install "tidal"
    generate_completions_from_executable(bin/"tidal", "--generate-completion-script")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/tidal --version").strip
  end
end
