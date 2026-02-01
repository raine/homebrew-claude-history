class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.15/claude-history-darwin-arm64.tar.gz"
      sha256 "ed54ff457dfc5bce41e2e51250d9eb78858ba7c2e18061a99953037715742b34"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.15/claude-history-darwin-amd64.tar.gz"
      sha256 "e08bdcd2a326c0fd26920804cc2f4bc831d6a2ddc0a7c2144a6560e6fef1cc09"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.15/claude-history-linux-amd64.tar.gz"
    sha256 "e470090ce5816490aa8b87ef1e8bacbec73da1610d77c35449840e8ad8374741"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
