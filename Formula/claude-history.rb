class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.17/claude-history-darwin-arm64.tar.gz"
      sha256 "ef53f72c2c5213b455d47cf7e1746e7fd3979c507593912b7c6c9d0371d19f04"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.17/claude-history-darwin-amd64.tar.gz"
      sha256 "ac465be8df847ffcb1f143c7373face335b28fee86875dcf61717f2a99332fbe"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.17/claude-history-linux-amd64.tar.gz"
    sha256 "0c20b9e5d6792a94dfa4f75379202bb25c19a684e0c047de2085d4127ced6163"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
