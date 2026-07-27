# Editor
export EDITOR="vim"

# User-local binaries
export PATH="$HOME/.local/bin:$PATH"

# Cargo
export CARGO_HOME="$HOME/.config/cargo"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-25.jdk/Contents/Home"

# Rust
export SCCACHE_CACHE_SIZE="40G"
export RUSTC_WRAPPER="sccache"
