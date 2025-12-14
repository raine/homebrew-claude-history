class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.8/aarch64-apple-darwin.tar.gz"
      sha256 "d6184519b0ffb63e236297f88b3e5dc7c04d2f478447df06be32c238c022adb2"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.8/x86_64-apple-darwin.tar.gz"
      sha256 "df4c7bc01ef35bfae933528b4dfda758e83e2dbc384f9765e52814c73d605b56"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.8/x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c61c48426fa8144de5e27d614ebe0f3909c179b946e81cb1895f4fd6438b5a80"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
