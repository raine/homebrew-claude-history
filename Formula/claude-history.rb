class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.23/claude-history-darwin-arm64.tar.gz"
      sha256 "1d6eb4a6e2c2edb4caeef1cd53086a3aa10b135a886f55d4b807ab8e647de76c"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.23/claude-history-darwin-amd64.tar.gz"
      sha256 "3c3d5cf1bc9f5c3a29a036ade8982b5acc484676bef19b17a3da77722b46751e"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.23/claude-history-linux-amd64.tar.gz"
    sha256 "a4c312c1f2ff7498b74b7aba90924fb22f55a15e544863642372942527aa73b8"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
