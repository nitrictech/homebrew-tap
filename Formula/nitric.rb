# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.18.0"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.18.0/nitric_1.18.0_macOS_x86_64.tar.gz"
      sha256 "1c3e18569149108197cdd3a51a3266df5891bd82b634da33ec111f8d1dc8e0ce"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.18.0/nitric_1.18.0_macOS_arm64.tar.gz"
      sha256 "6c70c66e37fd750de3b41422e2968b623a2c2ca5cfc48cff8fe9b16c25f0c3fe"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.18.0/nitric_1.18.0_Linux_arm64.tar.gz"
      sha256 "0ee59ed84a15a17f8b3b5c86bf02268b5ac42331fb477face16cce968769a408"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.18.0/nitric_1.18.0_Linux_x86_64.tar.gz"
      sha256 "2742e28d63e3585ef4fd2f2f9d48d79710f1335fd2ce5151c9d39efa681df8d7"

      def install
        bin.install "nitric"
      end
    end
  end
end
