module Suspiciouss
  module Suggestions
    class CamelCase

      def parse(line)
        "Don't use camelCase" if line =~ /[a-z][A-Z]{1}/
      end
    end
  end
end
