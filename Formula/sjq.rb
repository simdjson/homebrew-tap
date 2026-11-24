class Sjq < Formula
  desc "JSON processor compatible with jq, built on simdjson"
  homepage "https://simdjson.github.io/sjq/"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    # One universal binary for Apple silicon and Intel.
    on_arm do
      url "https://github.com/simdjson/sjq/releases/download/v0.3.0/sjq-macos-universal.tar.gz"
      sha256 "a133be40d5fb9ab155620ad375d6462eb536536f239496e8a8d2f1c15115eb9a"
    end
    on_intel do
      url "https://github.com/simdjson/sjq/releases/download/v0.3.0/sjq-macos-universal.tar.gz"
      sha256 "a133be40d5fb9ab155620ad375d6462eb536536f239496e8a8d2f1c15115eb9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simdjson/sjq/releases/download/v0.3.0/sjq-linux-aarch64.tar.gz"
      sha256 "95bb5a1bef8ad015f5a4ce1789c767cef4713f4057da1b35eae60b8a19924d81"
    end
    on_intel do
      url "https://github.com/simdjson/sjq/releases/download/v0.3.0/sjq-linux-x86_64.tar.gz"
      sha256 "9ca56713c137868663d8fb6068ec3c29caa7fd9681a616e17f902bae91338ab1"
    end
  end

  def install
    bin.install "sjq"
  end

  test do
    assert_equal "2\n", pipe_output("#{bin}/sjq .a", '{"a": 2}')
  end
end
