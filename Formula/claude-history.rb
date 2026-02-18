class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.26/claude-history-darwin-arm64.tar.gz"
      sha256 "50e41146fd4b8f89063814aee411940df8cedc8b137c15a613f4c2c7b14580c1"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.26/claude-history-darwin-amd64.tar.gz"
      sha256 "4916a4313ff9c420e75249db6bc9c21b2484da84f0167c662d49818056776cff"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.26/claude-history-linux-amd64.tar.gz"
    sha256 "f1831767191d592f82ae2b38bd934294f0dacd9c0b8b9aef8254bbbffd380880"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
