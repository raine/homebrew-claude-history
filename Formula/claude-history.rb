class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.13/aarch64-apple-darwin.tar.gz"
      sha256 "ab027aa6fe07f23f5434750989912718c77adf85aa21315f6874f4916e06ab19"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.13/x86_64-apple-darwin.tar.gz"
      sha256 "aade931de32220fbdc24e1e2d369045dff588beb48df0dbf5756dff620afb051"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.13/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "7924636d1cae2b96e271f632088785d38d8acbe0a4ce6f0be56e928b20e2ed21"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
