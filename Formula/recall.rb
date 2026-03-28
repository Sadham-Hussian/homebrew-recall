class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  url "https://github.com/Sadham-Hussian/recall/releases/download/v0.1.2/recall_0.1.2_darwin_arm64.tar.gz"
  sha256 "a4a35e474b09ab3cd612dbc23f1abbcddc56d426da75e862ce5776f1ac6932d6"
  license "MIT"

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end