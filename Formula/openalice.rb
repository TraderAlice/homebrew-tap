# typed: false
# frozen_string_literal: true

# Generated from accepted OpenAlice native release archives. DO NOT EDIT.
require "json"
require "time"

class Openalice < Formula
  desc "Local trading workspace for native coding-agent CLIs"
  homepage "https://openalice.ai"
  version "0.90.2"
  license "AGPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.90.2/openalice-cli-0.90.2-darwin-arm64.tar.gz"
      sha256 "f96085c33997cbb90078870daf8fa3e8ede68a583c0e3c44e9d8e685a53401de"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.90.2\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.90.2\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"arm64\",\"sha256\":\"f96085c33997cbb90078870daf8fa3e8ede68a583c0e3c44e9d8e685a53401de\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.90.2/openalice-cli-0.90.2-darwin-x64.tar.gz"
      sha256 "2f82b345882c271ede90d9c135f61db1309084b44c78f5ff63ac2fad796be22e"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.90.2\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.90.2\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"x64\",\"sha256\":\"2f82b345882c271ede90d9c135f61db1309084b44c78f5ff63ac2fad796be22e\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.90.2/openalice-cli-0.90.2-linux-arm64.tar.gz"
      sha256 "348b4a8765562c6685280a5a125dfdf967af82b88dd229b7873fdcb961fd0e4c"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.90.2\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.90.2\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"arm64\",\"sha256\":\"348b4a8765562c6685280a5a125dfdf967af82b88dd229b7873fdcb961fd0e4c\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.90.2/openalice-cli-0.90.2-linux-x64.tar.gz"
      sha256 "f3dcdeae7cbb65eab5deb2d528203d9c5248138c546e3580ecc79a839514bd21"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.90.2\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.90.2\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"x64\",\"sha256\":\"f3dcdeae7cbb65eab5deb2d528203d9c5248138c546e3580ecc79a839514bd21\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

end
