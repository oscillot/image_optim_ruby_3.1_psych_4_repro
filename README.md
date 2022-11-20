# To reproduce the issue

- Install ruby 3.1.2 (e.g. `rbenv install` if you use rbenv)
- `gem install bundler`
- `bundle install`
- `bundle exec ruby repro.rb`

You will see output like this:

```
exception when reading .../.image_optim.yml: Tried to load unspecified class: Range
{}
```

Image_optim should explicitly pass the `Range` class to `permitted_classes` in this call to `Yaml.load_file`:
<https://github.com/toy/image_optim/blob/v0.31.1/lib/image_optim/config.rb#L36>

If there are any other classes not listed here that are expected to be usable they will also need to be added:
<https://ruby-doc.org/stdlib-3.1.2/libdoc/psych/rdoc/Psych.html>
