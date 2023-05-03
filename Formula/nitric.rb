# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.16.0"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.16.0/nitric_1.16.0_macOS_x86_64.tar.gz"
      sha256 "a1c85e4baaf4240f493d9238580467fd96e4c3c078518bb3fa3f1707b4c307e7"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.16.0/nitric_1.16.0_macOS_arm64.tar.gz"
      sha256 "c2fc3164353cf1e9f832e61d09f37bb2e02ada07c77cc5beaef46e5dcf4332be"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.16.0/nitric_1.16.0_Linux_arm64.tar.gz"
      sha256 "5b65b162fcefdd3d207bffefecbe510c093e1e96b1ca688936a0ce87cff59e88"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.16.0/nitric_1.16.0_Linux_x86_64.tar.gz"
      sha256 "7383a94f0861e1bfaa075befb5a06a82340819e57345feb89d03657021740802"

      def install
        bin.install "nitric"
      end
    end
  end
end
