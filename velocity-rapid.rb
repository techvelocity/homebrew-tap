# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VelocityRapid < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.0.1-20230504113509-e75d9d7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.0.1-20230504113509-e75d9d7/velocity_Darwin_x86_64.tar.gz"
      sha256 "7fd6319193be7dae6a3c59415a28ae0853bfb5102223a88ff2d3ed2c4e3951cc"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://releases.velocity.tech/velocity/v0.0.1-20230504113509-e75d9d7/velocity_Darwin_arm64.tar.gz"
      sha256 "f9b1f21d90249b7d8c350d2f0e4b865f8745faee764823901c59eaf63621d1ea"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://releases.velocity.tech/velocity/v0.0.1-20230504113509-e75d9d7/velocity_Linux_arm64.tar.gz"
      sha256 "3d14e9193a45b0dec1c43f18b7033d81747e7ceea67c4cc34e8ed645aa76bce8"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.0.1-20230504113509-e75d9d7/velocity_Linux_x86_64.tar.gz"
      sha256 "67c168a117b934d994aabf0fcfb0de4160819cc248c80d45d76985fa6be513f7"

      def install
        bin.install "velocity"

        system bin/"velocity completion bash > bash_completion.bash"
        bash_completion.install "bash_completion.bash" => "velocity"

        system bin/"velocity completion zsh > zsh_completion.zsh"
        zsh_completion.install "zsh_completion.zsh" => "_velocity"

        system bin/"velocity completion fish > fish_completion.fish"
        fish_completion.install "fish_completion.fish" => "velocity.fish"
      end
    end
  end

  test do
    system "#{bin}/velocity version"
  end
end
