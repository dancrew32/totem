# :nodoc:
struct YAML::Any
  def to_json(json : JSON::Builder)
    @raw.to_json(json)
  end
end

# :nodoc:
struct Slice
  def to_json(json : JSON::Builder)
    json.array do
      to_a.each do |v|
        v.to_json(json)
      end
    end
  end
end

# :nodoc:
struct Char
  def to_json(json : JSON::Builder)
    json.string(self)
  end
end
