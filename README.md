# suspiCiouSS

Suspiciouss is a CSS/Sass/Less linter that will provide you a report of common minor errors in your CSS development.

## Usage

You can use it from the command line:

```bash
git diff | suspiciouss
```

Or you can use it in your Ruby code:

```ruby
require 'suspiciouss'
Suspiciouss::Linter.new.process(your_git_diff_as_text)
```

## What is going to report?

You will be warned about the following issues in your code:

- camel case selectors
- excessive indentation
- overqualified element selectors
- styling #id selectors
- styling js prefixed selectors
- underscores in selectors
- property with units if value is 0

The report will be as text or markdown, depending if you got provided a command line input or was used programatically.

## Contribute

- Fork it
- Write your feature with a test
- Issue a pull request
- ...
- Profit!

