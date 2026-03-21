class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.46"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.46/claude-history-darwin-arm64.tar.gz"
      sha256 "f9522f8edd8237eb26baaef5413f508e84d088322ee3e51ccdac1e06ad3effc0"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.46/claude-history-darwin-amd64.tar.gz"
      sha256 "c212f968dec76f71866c083eb7ca1362fb6805dc8b2ecc3da3d4d34ff7f2f9db"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.46/claude-history-linux-amd64.tar.gz"
    sha256 "1709335b066e7eeab361c334f89e449b7e7e364d1d5469b34c2bc664c1b944b9"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
