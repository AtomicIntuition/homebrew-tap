class ErrorKing < Formula
  desc "CLI for 3RROR_K1NG - Website Roast Machine with AI-powered audits"
  homepage "https://3rrork1ng.com"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.1.0/3rror-darwin-arm64"
      sha256 "93021656a9740bf297356d43649bde3a20053e7e8d08072420745a987ed9ee36"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.1.0/3rror-darwin-x64"
      sha256 "5c0cf1f00c9a648ccf9cbd66fe6315d087f875a863433e46adecc8b1ebab8be9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.1.0/3rror-linux-arm64"
      sha256 "8422b7ef42163b8064941635345e9043a370e3c3a43424c173598abfb7acf654"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.1.0/3rror-linux-x64"
      sha256 "e21ee882b069ad75a6ba8d19ae700fc94d3e0eb4baf823f8255484dfe86b89c3"
    end
  end

  def install
    binary_name = if OS.mac?
      Hardware::CPU.arm? ? "3rror-darwin-arm64" : "3rror-darwin-x64"
    else
      Hardware::CPU.arm? ? "3rror-linux-arm64" : "3rror-linux-x64"
    end
    bin.install binary_name => "3rror"
  end

  test do
    system "#{bin}/3rror", "--version"
  end
end
