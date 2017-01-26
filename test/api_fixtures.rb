class APIFixtures
  def initialize
    @fixtures = ::JSON.parse(File.read("#{PROJECT_ROOT}/spec/fixtures.json"),
      symbolize_names: true)
    freeze_recursively(@fixtures)
  end

  def [](name)
    @fixtures[name]
  end

  private

  def freeze_recursively(data)
    data.each do |k, v|
      if v.is_a?(Hash)
        freeze_recursively(v)
      end
    end
    data.freeze
  end
end
