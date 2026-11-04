class SwiftPackageList < Formula
  desc "A command-line tool to list Swift package dependencies and generate acknowledgments."
  homepage "https://github.com/felixherrmann/swift-package-list"
  url "https://github.com/felixherrmann/swift-package-list/releases/download/4.12.0/swift-package-list.tar.gz"
  sha256 "98b5b8d13e05cb07d1e3afda3f87f4e0e6e64021aea2632f8b3f9e13386dde73"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "swift-package-list"
    man1.install "swift-package-list.1"
    generate_completions_from_executable(bin/"swift-package-list", "--generate-completion-script")
  end

  test do
    system "#{bin}/swift-package-list"
  end
end
