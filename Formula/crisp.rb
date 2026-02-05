class Crisp < Formula
  desc "Website audit tool — security, performance, SEO & accessibility from your terminal"
  homepage "https://crisp.sh"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.1/crisp-darwin-arm64"
      sha256 "69f2cfbe5e383511ec3b914244877c34648b58ef6670535fb4346dd0906f01d0"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.1/crisp-darwin-x64"
      sha256 "57667dffbb3693646e394c3d02d458ec49945e52b230ae9bb310c5e22483e391"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.1/crisp-linux-arm64"
      sha256 "20e84858c600c467701248828982f25c7491a3718eeda5ec109ecdf5a7c08e7d"
    else
      url "https://github.com/AtomicIntuition/3RR0R_K1NG/releases/download/cli-v0.2.1/crisp-linux-x64"
      sha256 "5d2ebbb295d939f5cd36f9ccad0d475bf2447b9b42f06bf725002d0ae3953c80"
    end
  end

  def install
    binary_name = if OS.mac?
      Hardware::CPU.arm? ? "crisp-darwin-arm64" : "crisp-darwin-x64"
    else
      Hardware::CPU.arm? ? "crisp-linux-arm64" : "crisp-linux-x64"
    end
    bin.install binary_name => "crisp"
  end

  test do
    system "#{bin}/crisp", "--version"
  end
end
