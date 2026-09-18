# typed: false
# frozen_string_literal: true

# Generated from accepted OpenAlice native release archives. DO NOT EDIT.
require "json"
require "time"

class Openalice < Formula
  desc "Local trading workspace for native coding-agent CLIs"
  homepage "https://openalice.ai"
  version "0.93.1"
  license "AGPL-3.0-only"
  depends_on "git"
  depends_on "bash"

  on_macos do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.93.1/openalice-cli-0.93.1-darwin-arm64.tar.gz"
      sha256 "42c5a567c9f3fdd93f50462516899f5fb6e7f9c7d56deb4499cebc154f664da6"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.93.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.93.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"arm64\",\"sha256\":\"42c5a567c9f3fdd93f50462516899f5fb6e7f9c7d56deb4499cebc154f664da6\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_macos do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.93.1/openalice-cli-0.93.1-darwin-x64.tar.gz"
      sha256 "fd8117c9af0503b0abe1f9e90a8013a6757bbcbc40f27535177ae5c3024a4a9c"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.93.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.93.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"darwin\",\"arch\":\"x64\",\"sha256\":\"fd8117c9af0503b0abe1f9e90a8013a6757bbcbc40f27535177ae5c3024a4a9c\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.93.1/openalice-cli-0.93.1-linux-arm64.tar.gz"
      sha256 "ce96770bcb7ccfa2a438ad717d74ab3a2af804123f225a8f6a22de7d7d745bd3"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.93.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.93.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"arm64\",\"sha256\":\"ce96770bcb7ccfa2a438ad717d74ab3a2af804123f225a8f6a22de7d7d745bd3\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/TraderAlice/OpenAlice/releases/download/v0.93.1/openalice-cli-0.93.1-linux-x64.tar.gz"
      sha256 "050274c701f631aebc327aa61ff9b0930ca1859faff704d4dec180fb876aee81"

      def install
        release = buildpath
        release_metadata = (release/"release.json").read
        bin.install release/"bin/openalice"
        share.install release/"share/openalice"
        prefix.install release/"release.json"
        (share/"openalice/release.json").write(release_metadata)
        prefix.install release/"THIRD_PARTY_NOTICES.md"
        metadata = JSON.parse("{\"schemaVersion\":3,\"repository\":\"TraderAlice/OpenAlice\",\"cliVersion\":\"0.93.1\",\"selector\":{\"kind\":\"version\",\"value\":\"v0.93.1\"},\"installerUrl\":\"https://github.com/TraderAlice/homebrew-tap\",\"updateChannel\":\"stable\",\"method\":\"brew\",\"artifact\":{\"platform\":\"linux\",\"arch\":\"x64\",\"sha256\":\"050274c701f631aebc327aa61ff9b0930ca1859faff704d4dec180fb876aee81\"}}")
        metadata["installedAt"] = Time.now.utc.iso8601
        content = JSON.pretty_generate(metadata) + "\n"
        (prefix/"install-source.json").write(content)
        (share/"openalice/install-source.json").write(content)
      end
    end
  end

end
