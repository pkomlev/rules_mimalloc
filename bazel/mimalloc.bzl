load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def mimalloc_deps():
    maybe(
        http_archive,
        name = "com_microsoft_mimalloc",
        build_file = "@com_github_pkomlev_rules_mimalloc//:bazel/mimalloc.BUILD",
        sha256 = "2b1bff6f717f9725c70bf8d79e4786da13de8a270059e4ba0bdd262ae7be46eb",
        strip_prefix = "mimalloc-2.1.2",
        urls = ["https://github.com/microsoft/mimalloc/archive/refs/tags/v2.1.2.tar.gz"],
    )
