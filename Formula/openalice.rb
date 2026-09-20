# typed: false
# frozen_string_literal: true

# Generated from accepted OpenAlice native release archives. DO NOT EDIT.
require "json"
require "time"

class Openalice < Formula
  desc "Local trading workspace for native coding-agent CLIs"
  homepage "https://openalice.ai"
  version "0.94.0"
  license "AGPL-3.0-only"
  depends_on "git"
  depends_on "bash"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.94.0/openalice-cli-0.94.0-darwin-arm64.tar.gz"
      sha256 "b4d85ff2c1332ae1a6383e8fc1e9426d69a346983c92e79029c548e1830f58b5"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.94.0\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.94.0\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"arm64\",\"sha256\":\"b4d85ff2c1332ae1a6383e8fc1e9426d69a346983c92e79029c548e1830f58b5\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.94.0/openalice-cli-0.94.0-darwin-x64.tar.gz"
      sha256 "2620694deac0bb40010d62b3965b5b2ed8dda2474ddff68fd86e473cc90dfab8"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.94.0\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.94.0\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"x64\",\"sha256\":\"2620694deac0bb40010d62b3965b5b2ed8dda2474ddff68fd86e473cc90dfab8\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.94.0/openalice-cli-0.94.0-linux-arm64.tar.gz"
      sha256 "7d34d7643320df36955e6f02c3f84dc6d92bda765a0ff92f91d1862e8cd8928b"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.94.0\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.94.0\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"arm64\",\"sha256\":\"7d34d7643320df36955e6f02c3f84dc6d92bda765a0ff92f91d1862e8cd8928b\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.94.0/openalice-cli-0.94.0-linux-x64.tar.gz"
      sha256 "fc79ae101be59b1b698d0e94f5a9bfeeabf6830078f3c1583275a9f94b587147"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.94.0\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.94.0\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"x64\",\"sha256\":\"fc79ae101be59b1b698d0e94f5a9bfeeabf6830078f3c1583275a9f94b587147\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

end
