class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.35/claude-history-darwin-arm64.tar.gz"
      sha256 "4fd2db51e4ea15500d95d0cd3862591d3dce151ec3cf5c6f1f1a4b6940996088"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.35/claude-history-darwin-amd64.tar.gz"
      sha256 "602376f188952868ab2b4afd3efcbd3e25ff98b82b976c14dda5d82e06f08a9b"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.35/claude-history-linux-amd64.tar.gz"
    sha256 "6ff4dafd41770caacfedf5eafb3b8ca4d4c60021f96037bb1701cce257286171"
  end

  def install
    bin.install "claude-history"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
