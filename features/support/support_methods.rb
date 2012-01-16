def get_user(name)
  FactoryGirl.build(name)
end

def parse_name(name)
  name.parameterize('_')
end
