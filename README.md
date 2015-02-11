# SimpleGrapeParams

This gem is a very simple extension for [grape gem](https://github.com/intridea/grape).
It allows you to move params validation block to external class.

Instead of:

```ruby
class API < Grape::API
  ...
  params do
    requires :id, type: Integer
  end
  ...
end
```

you can do:

```ruby
class API < Grape::API
  ...
  validate_params_with SimpleValidator
  ...
end

class SimpleValidator < SimpleGrapeParams::Validator
  params do
    requires :id, type: Integer
  end
end
```
