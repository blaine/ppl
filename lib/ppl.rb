
module Ppl

  module Adapter
  end

  module Application
  end

  module Entity
  end

  module Factory
  end

end

require "ppl/command"

require "ppl/adapter/vcard"
require "ppl/adapter/vcard/vpim"

require "ppl/application/command_selector"

require "ppl/entity/alias"
require "ppl/entity/contact"
require "ppl/entity/name"

require "ppl/factory/contact"

