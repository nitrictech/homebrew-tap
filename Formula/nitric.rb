# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.51.1"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.51.1/nitric_1.51.1_macOS_x86_64.tar.gz"
      sha256 "8853deff056ff96a65310f4201e04f0e15b42bfa9ab31c14eb0ad4561d0934ec"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.51.1/nitric_1.51.1_macOS_arm64.tar.gz"
      sha256 "933de18c876d125ba93ffaaaf27e6353cdfd1bde52b00f2fe69fa0407f671aad"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.51.1/nitric_1.51.1_Linux_arm64.tar.gz"
      sha256 "09022ff7346bc86e5cd3dc3976ec0a35e94a31e9989db13185ae5020b68bed99"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.51.1/nitric_1.51.1_Linux_x86_64.tar.gz"
      sha256 "952c38bbd57ba5d1379fb0ab35d63e1b38403370b8423b84d17f5e35925d2f5f"

      def install
        bin.install "nitric"
      end
    end
  end
end
