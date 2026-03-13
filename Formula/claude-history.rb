class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.39/claude-history-darwin-arm64.tar.gz"
      sha256 "6ad4fae2d39adba0774e365a50e95b4d9bc6a98bf648f4292de02724f8d0d63a"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.39/claude-history-darwin-amd64.tar.gz"
      sha256 "60206d98c3294e3233fc50422af7df19edafa616282c27c80c4ee459e7bf5198"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.39/claude-history-linux-amd64.tar.gz"
    sha256 "ec746cd40e4ef6267ac22e3072209cc2796e092c2fc55bcddcafc21165b00feb"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
