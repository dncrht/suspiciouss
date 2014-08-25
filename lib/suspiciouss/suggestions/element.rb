module Suspiciouss
  module Suggestions
    class Element

      def parse(line)
        return if line.include?(':')
        'Rightmost selector might be very common. Use a class instead' if line =~ /\s+(div|a|p|span)/
      end
    end
  end
end