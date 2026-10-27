class ClaudeHistory < Formula
  desc "Fuzzy-search Claude Code conversation history from the terminal"
  homepage "https://github.com/raine/claude-history"
  version "0.1.81"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/claude-history/releases/download/v0.1.81/claude-history-darwin-arm64.tar.gz"
      sha256 "39d7a7f12396306a24dddaf27e080007c91f54c61521799e6dc956c16b88d24b"
    else
      url "https://github.com/raine/claude-history/releases/download/v0.1.81/claude-history-darwin-amd64.tar.gz"
      sha256 "3e244c193abff8e53beb53409b1fc298a9c335a30bf1c910e2dec204b37ed0d1"
    end
  end

  on_linux do
    url "https://github.com/raine/claude-history/releases/download/v0.1.81/claude-history-linux-amd64.tar.gz"
    sha256 "0f85c5693b5b81c2f383b206e361d90db43171cbf19d08805f83a3752e16012e"
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
