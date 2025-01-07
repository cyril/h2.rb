# Alternative Implementations

This directory contains alternative implementations of the H256 hash generator in Bash and ZSH. Both are secure and follow similar usage patterns.

## Available Implementations

- **Bash**: `alternatives/bash/h256`
  - POSIX-compliant, minimal dependencies (coreutils, OpenSSL)
  - Strict error handling with `set -euo pipefail`
  - Compatible with older Bash versions

- **ZSH**: `alternatives/zsh/h256`
  - Leverages ZSH-specific features (e.g., strict variable scoping)
  - Advanced error handling with ZSH options
  - Modern and robust for ZSH environments

## Common Features

- Secure secret management in `~/.h256` (created if missing with `600` permissions)
- File validation and dependency checks
- Handles missing or empty input gracefully
- Outputs SHA-256 hashes consistently across both implementations

## Usage

```bash
# Bash
./alternatives/bash/h256 "your string"

# ZSH
./alternatives/zsh/h256 "your string"

# Without arguments (uses an empty string)
./alternatives/bash/h256
./alternatives/zsh/h256
