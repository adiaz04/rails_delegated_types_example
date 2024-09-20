# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding the database..."

puts "Creating content blocks..."
post = Post.create(body: "This is a blog post")
content_block = ContentBlock.create(title: "Blog Post", content_blockable: post)

image = Image.create(url: "http://example.com/image.jpg")
content_block = ContentBlock.create(title: "Image Block", content_blockable: image)

video = Video.create(url: "http://example.com/video.mp4")
content_block = ContentBlock.create(title: "Video Block", content_blockable: video)
puts "Content blocks created!"
