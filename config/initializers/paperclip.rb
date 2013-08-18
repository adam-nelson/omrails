# config/initializers/paperclip.rb 
Paperclip.interpolates(:s3_sg_url) do |att, style| 
"#{att.s3_protocol}://s3-us-west-2.amazonaws.com/#{att.bucket_name}/#{att.path(style)}"
end
