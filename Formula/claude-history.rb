class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.43/claude-history-darwin-arm64.tar.gz"
      sha256 "24369bc7e3a9c95b18a1b5ed8a544b4f3f8056b2aac604bd58bf7527ae912d44"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.43/claude-history-darwin-amd64.tar.gz"
      sha256 "7fbf3a307f42e6d4b54f372e72139cd002618d856c513f7f9dff1582bcef44e4"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.43/claude-history-linux-amd64.tar.gz"
    sha256 "bd908f05a7108e1ec5e2c45b1ab76343b4d1a572e63c2a0cf7cae6a4700d2076"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
