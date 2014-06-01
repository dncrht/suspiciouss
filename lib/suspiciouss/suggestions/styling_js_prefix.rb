module Suspiciouss
  module Suggestions
    class StylingJsPrefix

      def parse(line)
        return if line.include?(':')
        "Don't style js- prefixed selectors" if line =~ /(\.|\#)js-/
      end
    end
  end
end
