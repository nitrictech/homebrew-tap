# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.55.17"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.17/nitric_1.55.17_macOS_arm64.tar.gz"
      sha256 "100e7b342204bf879bafc4a8e75d693dad423b97d7360d5a183cf4261f5e9ea6"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.17/nitric_1.55.17_macOS_x86_64.tar.gz"
      sha256 "527dc790aeeb942ae1397b8fdd1eed6041e111f020d23ded8a0c7de0d1f82979"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.17/nitric_1.55.17_Linux_arm64.tar.gz"
      sha256 "e5f0b24d6444f0458ba05c3fa4ad12f09470630136d951a1c326510c2377f72a"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.17/nitric_1.55.17_Linux_x86_64.tar.gz"
      sha256 "504675bd401b6b5c4b182f1210ee72791ab650b75be452d3b89b4f482f9bf430"

      def install
        bin.install "nitric"
      end
    end
  end
end
