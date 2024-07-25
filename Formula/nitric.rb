# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.47.1"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.47.1/nitric_1.47.1_macOS_x86_64.tar.gz"
      sha256 "c35f207d20605b1004cad5684a9a257b415e4f0d3ed10af344da43d5ca19339c"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.47.1/nitric_1.47.1_macOS_arm64.tar.gz"
      sha256 "6babf300e0588edc86d4774eef1a3127262bf039e0b603484e3f5908bdb12d6a"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.47.1/nitric_1.47.1_Linux_arm64.tar.gz"
      sha256 "1015c3c695152d225a30535a1c4d994ae899610b781e5367138054168ce488ea"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.47.1/nitric_1.47.1_Linux_x86_64.tar.gz"
      sha256 "207185fdef41415d1f713dd251f8acef78dd34ec915dd808f1e0094982d2a991"

      def install
        bin.install "nitric"
      end
    end
  end
end
