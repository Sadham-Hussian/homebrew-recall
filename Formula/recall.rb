class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sadham-Hussian/recall/releases/download/v0.1.25/recall_darwin_arm64.tar.gz"
      sha256 "ec71967d4fa3036ddcccfb38449ab4af85aefbe0b0600e49377759fa2f578393"
    else
      url "https://github.com/Sadham-Hussian/recall/releases/download/v0.1.25/recall_darwin_amd64.tar.gz"
      sha256 "359dca8d03731cf431c23892ffb501197ad7fdb24c88813cf1b985c86aee0d24"
    end
  end

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end