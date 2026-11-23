class Sjq < Formula
  desc "JSON processor compatible with jq, built on simdjson"
  homepage "https://simdjson.github.io/sjq/"
  license any_of: ["Apache-2.0", "MIT"]

  on_macos do
    # One universal binary for Apple silicon and Intel.
    on_arm do
      url "https://github.com/simdjson/sjq/releases/download/v0.2.0/sjq-macos-universal.tar.gz"
      sha256 "f14823b91974d465164eb64acd5d15a8509d0d94f13e423541f66eca8ccfa85a"
    end
    on_intel do
      url "https://github.com/simdjson/sjq/releases/download/v0.2.0/sjq-macos-universal.tar.gz"
      sha256 "f14823b91974d465164eb64acd5d15a8509d0d94f13e423541f66eca8ccfa85a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/simdjson/sjq/releases/download/v0.2.0/sjq-linux-aarch64.tar.gz"
      sha256 "12cdad4e7da94b57bef0d7c8c24b429ae36f1ceac8d64f9145ee0674ab6a6139"
    end
    on_intel do
      url "https://github.com/simdjson/sjq/releases/download/v0.2.0/sjq-linux-x86_64.tar.gz"
      sha256 "6a27792ab330feb10754d5dd490039e82788065c6746ae63c9e981914bc75c85"
    end
  end

  def install
    bin.install "sjq"
  end

  test do
    assert_equal "2\n", pipe_output("#{bin}/sjq .a", '{"a": 2}')
  end
end
