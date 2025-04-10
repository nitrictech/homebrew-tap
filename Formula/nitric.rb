# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.59.3"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.59.3/nitric_1.59.3_macOS_arm64.tar.gz"
      sha256 "adec5c9d72f72af0f05d466297cf14450fbba1ae8bc559746b40af8891ddbd0b"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.59.3/nitric_1.59.3_macOS_x86_64.tar.gz"
      sha256 "83c335d61c1068550240df357d232cd38add13cdc2e51dfbca54f40f33b3c183"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.59.3/nitric_1.59.3_Linux_arm64.tar.gz"
      sha256 "5715cdc2c6e190f1f849253639dd0209e9011632ae339e56fa873ad6093de275"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.59.3/nitric_1.59.3_Linux_x86_64.tar.gz"
      sha256 "9384cd7cb63108285669a0b577194d6f6c449d775e955ff045680bd2bbe12b17"

      def install
        bin.install "nitric"
      end
    end
  end
end
