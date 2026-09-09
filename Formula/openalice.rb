# typed: false
# frozen_string_literal: true

# Generated from accepted OpenAlice native release archives. DO NOT EDIT.
require "json"
require "time"

class Openalice < Formula
  desc "Local trading workspace for native coding-agent CLIs"
  homepage "https://openalice.ai"
  version "0.92.1"
  license "AGPL-3.0-only"
  depends_on "git"
  depends_on "bash"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.92.1/openalice-cli-0.92.1-darwin-arm64.tar.gz"
      sha256 "04822de65cc9c2fb6b44652652d6ee188617b4d0fb6034aef09b95d9becc1b6f"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.92.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.92.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"arm64\",\"sha256\":\"04822de65cc9c2fb6b44652652d6ee188617b4d0fb6034aef09b95d9becc1b6f\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.92.1/openalice-cli-0.92.1-darwin-x64.tar.gz"
      sha256 "4be483012fb602d42c08c1637da9be32986a7ad431a03494aa369c19438a55d1"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.92.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.92.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"x64\",\"sha256\":\"4be483012fb602d42c08c1637da9be32986a7ad431a03494aa369c19438a55d1\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.92.1/openalice-cli-0.92.1-linux-arm64.tar.gz"
      sha256 "e781ed881b366485489f4d1bcf268bb586bf92d4b56948f2f38f26bd65522447"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.92.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.92.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"arm64\",\"sha256\":\"e781ed881b366485489f4d1bcf268bb586bf92d4b56948f2f38f26bd65522447\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.92.1/openalice-cli-0.92.1-linux-x64.tar.gz"
      sha256 "5f374b4e4db11cc0bcb1ecf9cf1951d3ace179c330470945b3d1a25d035067f8"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.92.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.92.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"x64\",\"sha256\":\"5f374b4e4db11cc0bcb1ecf9cf1951d3ace179c330470945b3d1a25d035067f8\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

end
