class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.76"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.76/claude-history-darwin-arm64.tar.gz"
      sha256 "ed973ddb8324ddad8b2e7073a33fe9f7dfe8f2d1f7933cd921d87ec5ef11e78e"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.76/claude-history-darwin-amd64.tar.gz"
      sha256 "327f7c95835d695a58b0206aaa7e7a5c0fa7002a9a76ce06221753626d7f30ce"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.76/claude-history-linux-amd64.tar.gz"
    sha256 "2096392dc489da182c6171952b70d8e4b234678bb8547acda7ad3e6fb3626428"
  end

  def install
    bin.install "claude-history"
    lib.install Dir["lib/*"]
    bin.install_symlink lib/"libonnxruntime.dylib" if OS.mac?
    bin.install_symlink lib/"libonnxruntime.so" if OS.linux?
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/claude-history --version")
  end
end
