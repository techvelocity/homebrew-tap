# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class VelocityRapid < Formula
  desc ""
  homepage "https://velocity.tech"
  version "0.0.1-7df89a1-20230410055647"

  on_macos do
    if Hardware::CPU.intel?
      url "https://releases.velocity.tech/velocity/v0.0.1-7df89a1-20230410055647/velocity_Darwin_x86_64.tar.gz"
      sha256 "95c0483c38dd4b295e6152e78d0b9ce646c482f7d73cf7a259e768fd7b195ef4"

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
      url "https://releases.velocity.tech/velocity/v0.0.1-7df89a1-20230410055647/velocity_Darwin_arm64.tar.gz"
      sha256 "9e97617062d188adc9bb174622c9252f39e790709538a92b3ce6528a8480c51d"

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
      url "https://releases.velocity.tech/velocity/v0.0.1-7df89a1-20230410055647/velocity_Linux_arm64.tar.gz"
      sha256 "534be9cf31282b0b12899f2be030a477a21f5b3d4272969d6eeb9f580e66cbf1"

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
      url "https://releases.velocity.tech/velocity/v0.0.1-7df89a1-20230410055647/velocity_Linux_x86_64.tar.gz"
      sha256 "8cda587ccb80752a326bd4b9ddfc7d4e0d256d99873b5f88c42a9c5474dec27a"

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
