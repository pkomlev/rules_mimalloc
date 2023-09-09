# Rules mimalloc
Bazel rules for mimalloc.

# Getting Started
## WORKSPACE file
Copy this into your Bazel WORKSPACE file to add this repo as an external dependency, update to the latest commit per instructions below.

```
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_github_pkomlev_rules_mimalloc",
    # Replace the <commit-hash> in both places (below) with the latest, rather than using the stale one here.
    url = "https://github.com/pkomlev/rules_mimalloc/archive/<commit-hash>.tar.gz",
    strip_prefix = "rules_boost-<commit-hash>",
)
load("@com_github_pkomlev_rules_mimalloc//:bazel/mimalloc.bzl", "mimalloc_deps")
mimalloc_deps()
```

## cc_binary
