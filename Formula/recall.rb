class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  url "https://github.com/Sadham-Hussian/recall/releases/download/v0.1.6/recall_0.1.6_darwin_arm64.tar.gz"
  sha256 "a347dad011d5a8cdb1977dc9d764880c5df843f5b58e79ca9b86f827469774c3"
  license "MIT"

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end