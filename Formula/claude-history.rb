class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.53"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.53/claude-history-darwin-arm64.tar.gz"
      sha256 "c32feb5a7fffa15b3fda55d0db1f8fd7635a595082cfa1665acddc51a872a862"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.53/claude-history-darwin-amd64.tar.gz"
      sha256 "aa6e111a9b441cb138491ae8cc6055a792df6ff3a08b06f70a8033a8657e681a"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.53/claude-history-linux-amd64.tar.gz"
    sha256 "ec92aa3ae54d2fa44f877c0e9babc1fff351c8cb8e1c1646973ff57cff95729e"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
