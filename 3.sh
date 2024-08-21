#!/bin/bash

# Download greenclip binary
wget https://github.com/erebe/greenclip/releases/download/v4.2/greenclip -O /tmp/greenclip

# Move the binary to /usr/bin/
sudo mv /tmp/greenclip /usr/bin/

# Make it executable
sudo chmod +x /usr/bin/greenclip

# Create configuration directory if it doesn't exist
mkdir -p ~/.config

# Create greenclip configuration file
cat <<EOL > ~/.config/greenclip.toml
[greenclip]
  history_file = "$HOME/.cache/greenclip.history"
  max_history_length = 50
  max_selection_size_bytes = 0
  trim_space_from_selection = true
  use_primary_selection_as_input = false
  blacklisted_applications = []
  enable_image_support = true
  image_cache_directory = "/tmp/greenclip"
  static_history = [
    '''¯\\_(ツ)_/¯''',
  ]
EOL

echo "greenclip has been installed and configured."
