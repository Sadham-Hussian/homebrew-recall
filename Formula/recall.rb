# class Recall < Formula
#   desc "Intelligent CLI history with semantic search"
#   homepage "https://github.com/Sadham-Hussian/recall"
#   license "MIT"

#   on_macos do
#     if Hardware::CPU.arm?
#       url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.3/recall_darwin_arm64.tar.gz"
#       sha256 "4ac27f3cd696ccf66665e7a0da5aa71a6004b7f27c23473853dac3373acc9b94"
#     else
#       url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.3/recall_darwin_amd64.tar.gz"
#       sha256 "8ee5f30eb5f8f018acb748db7d932f0beef5ab90e380ed779735d7e8d4ea4ce0"
#     end
#   end

#   def install
#     bin.install "recall"
#   end

#   test do
#     system "#{bin}/recall", "--version"
#   end
# end

class Recall < Formula
  desc "Intelligent CLI history with semantic search"
  homepage "https://github.com/Sadham-Hussian/recall"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.3/recall_darwin_arm64.tar.gz"
      sha256 "dea61beaabb343f17757da230b5dba47fe1a9ee3fdbe51e0de31d347cb683019"
    else
      url "https://github.com/Sadham-Hussian/recall/releases/download/v1.0.3/recall_darwin_amd64.tar.gz"
      sha256 "7cd2a4cf34adfa0fc099aee4f5cb232e6e1b6dfa816d29ce0bdccddaa2296877"
    end
  end

  def install
    bin.install "recall"
  end

  test do
    system "#{bin}/recall", "--version"
  end
end
