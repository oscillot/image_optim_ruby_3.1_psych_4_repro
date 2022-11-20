# frozen_string_literal: true

require 'image_optim'

# When you use a Range in your yml, as the readme indicated you may, eg:

# pngquant:
#   quality: !ruby/range 80..99
#   speed: 3

config = ImageOptim::Config.read_options('.image_optim.yml')

# will emit "exception when reading .../.image_optim.yml: Tried to load unspecified class: Range"

# and the config is not loaded
p config
# config is an empty hash: {}
