class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.59"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      odie "Intel macOS bottles are not available for this version"
    end

    url "https://github.com/raine/claude-history/releases/download/v0.1.59/claude-history-darwin-arm64.tar.gz"
    sha256 "c69c7720d33784df47c825cf2d127f8d3b28bec3467cbee402f04abff70a9741"
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.59/claude-history-linux-amd64.tar.gz"
    sha256 "36019a5ff9cd85a7555012aa4e3914ee32e61b634a212a1244367ed698b93162"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
