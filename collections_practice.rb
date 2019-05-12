require "pry"

def begins_with_r(args)
  args.all? {|arg| arg.start_with?("r")}
end

def contain_a(args)
  has_a = []
  args.each {|arg| has_a << arg if arg.include?("a")}
  has_a
end

def first_wa(args)
  args.find {|arg| arg.start_with?("wa") if arg.instance_of? String}
end

def remove_non_strings(args)
  args.delete_if {|arg| (arg.instance_of? String) == false}
end

def count_elements(data)
  count_array = []
end

def merge_data(keys, data)
  merged = []
  keys.each do |hash1|
    data.each do |hashes2|
      hashes2.each do |person, attributes|
        if hash1[:first_name] == person
          merged << hash1.merge(attributes)
        end
      end
    end
  end
  merged
end

def find_cool(data)
  is_cool = []
  
  data.each do |person|
    if person[:temperature] == "cool"
      is_cool << person
    end
  end
  is_cool
end

def count_elements(names)
  count_array = []
  
  names.each do |name|
    if count_array.length == 0
      hash = name
      hash[:count] << names.count(name)
      count_array << names.count(name)
    else 
      count_array.each do |element|
      if element[:name] == name[:name]
        element[:count] += 1
      else 
        hash = name
        hash[:count] << names.count(name)
        count_array << names.count(name)
      end
    end
  count_array
  end
end