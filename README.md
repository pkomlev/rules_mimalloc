# Rules mimalloc
Bazel rules for [mimalloc](https://github.com/microsoft/mimalloc).

# Getting Started
## WORKSPACE file
Copy this into your Bazel `WORKSPACE` file to add this repo as an external dependency, update to the latest commit per instructions below.

```
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "com_github_pkomlev_rules_mimalloc",
    # Replace the <commit-hash> in both places (below) with the latest
    # rather than using the stale one here.
    url = "https://github.com/pkomlev/rules_mimalloc/archive/<commit-hash>.tar.gz",
    strip_prefix = "rules_mimalloc-<commit-hash>",
)
load("@com_github_pkomlev_rules_mimalloc//:bazel/mimalloc.bzl", "mimalloc_deps")
mimalloc_deps()
```

## cc_binary / cc_test

Supply `@com_microsoft_mimalloc//:mimalloc` as a `malloc` argument to the `cc_binary` / `cc_test`. 

```
load("@rules_cc//cc:defs.bzl", "cc_binary")

cc_binary(
    name = "my_binary",
    srcs = [ ... ],
    malloc = "@com_microsoft_mimalloc//:mimalloc",
    deps = [ ... ],
)

```

See `cc_binary.malloc` Bazel [reference](https://bazel.build/reference/be/c-cpp#cc_binary.malloc) for further details on "canonical" malloc overrides.