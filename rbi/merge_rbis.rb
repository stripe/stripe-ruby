require "parlour"

# Initialize a new DSL (Domain Specific Language) object
dsl = Parlour::RbiGenerator.new

# Define the directory containing your RBIs
rbi_directory = "stripe/**/*"

# Iterate over all .rbi files in the specified directory
Dir.glob(rbi_directory).each do |file|
  puts("loading file #{file}")

  next unless File.file?(file)

  Parlour::TypeLoader.load_file(file, generator: dsl)
end

# # Generate the merged RBI content
merged_rbi = dsl.rbi

# # Write the merged content to a new file
output_file = "stripe.rbi" # You can change this output path if needed
File.write(output_file, merged_rbi)

puts "Merged RBI files are written to #{output_file}"
