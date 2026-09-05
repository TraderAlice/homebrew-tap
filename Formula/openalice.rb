# typed: false
# frozen_string_literal: true

# Generated from accepted OpenAlice native release archives. DO NOT EDIT.
require "json"
require "time"

class Openalice < Formula
  desc "Local trading workspace for native coding-agent CLIs"
  homepage "https://openalice.ai"
  version "0.91.1"
  license "AGPL-3.0-only"
  depends_on "git"
  depends_on "bash"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.91.1/openalice-cli-0.91.1-darwin-arm64.tar.gz"
      sha256 "b4cc4165ca95691b8105b2641d5e802dfcec44b1b1f1b94a0a03dbfb009e97a3"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.91.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.91.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"arm64\",\"sha256\":\"b4cc4165ca95691b8105b2641d5e802dfcec44b1b1f1b94a0a03dbfb009e97a3\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.91.1/openalice-cli-0.91.1-darwin-x64.tar.gz"
      sha256 "ae7b6f255587abbe4684208a7d9f86605ec28d8965806c39dc119e8edf0bcacb"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.91.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.91.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"x64\",\"sha256\":\"ae7b6f255587abbe4684208a7d9f86605ec28d8965806c39dc119e8edf0bcacb\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.91.1/openalice-cli-0.91.1-linux-arm64.tar.gz"
      sha256 "be850f4fbd752f585bc7171c2ab1fcf605614f2e8c6965f596bf15bd5dab5f9b"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.91.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.91.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"arm64\",\"sha256\":\"be850f4fbd752f585bc7171c2ab1fcf605614f2e8c6965f596bf15bd5dab5f9b\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.91.1/openalice-cli-0.91.1-linux-x64.tar.gz"
      sha256 "71604ca5b9bfe87897d482524b04197706fd8cc3c9bdcc4ab532c739899cb89c"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.91.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.91.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"x64\",\"sha256\":\"71604ca5b9bfe87897d482524b04197706fd8cc3c9bdcc4ab532c739899cb89c\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

end
