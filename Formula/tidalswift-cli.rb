class TidalswiftCli < Formula
  desc "Command-line tool and MCP server for Tidal"
  homepage "https://github.com/melgu/TidalSwiftCLI"
  url "https://github.com/melgu/TidalSwiftCLI/releases/download/1.3.0/tidal-1.3.0-macos.tar.gz"
  sha256 "3b3c3a5e76fe08c932b8346ddb71f584af6cca46e12df5745c131df7b422fce6"
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
