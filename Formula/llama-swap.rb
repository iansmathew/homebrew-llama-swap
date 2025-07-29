class LlamaSwap < Formula
  desc "Proxy server for swapping models on llama.cpp"
  homepage "https://github.com/mostlygeek/llama-swap"
  version "143"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_arm64.tar.gz"
      sha256 "sha256:181947c972f14f9d7887e17686600f1f4ed880ef37d32fa37727c18d2e06a4bf"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_darwin_amd64.tar.gz"
      sha256 "sha256:59b2087484476554666cdc3f1bd5e4635c3237441967e39c1f6a574bb025f385"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_arm64.tar.gz"
      sha256 "sha256:17fb50fcc9960c89016eb099363895b5732cbfdbd1735cdc2adf243dc5ff83c1"
    end
    on_intel do
      url "https://github.com/mostlygeek/llama-swap/releases/download/v#{version}/llama-swap_#{version}_linux_amd64.tar.gz"
      sha256 "sha256:f2cf78d7bba7fad8df7290107615cfe36bc1acd9d689a5eed4c7c2cfcaa7cd04"
    end
  end

  def install
    bin.install "llama-swap"
  end

  test do
    system "#{bin}/llama-swap", "--version"
  end
end
