require "iiif_s3"

# Set up configuration variables
opts = {
  output_dir: "./source",
  upload_to_s3: false,
  base_url: "http://evil-manifests.davidnewbury.com",
  prefix: "iiif"
}

iiif = IiifS3::Builder.new(opts)
iiif.create_build_directories

img =  IiifS3::ImageRecord.new({
        "path"        => "./source/images/the_garden_of_earthly_delights.jpg",
        "id"          => "garden",
        "label"       => "Default evil manifest",
        "description" => "This is the base version of the IIIF manifest, with nothing odd about it at all.",
        "metadata"    => [{"label"=> "Author", "value"=> "David Newbury"}],
        "license"     => "https://creativecommons.org/publicdomain/zero/1.0/",
        "attribution" => "Manifest created by David Newbury to test IIIF edge cases. Image use is The Garden of Earthly Delights, by Hieronymus Bosch, which is in the public domain."
      })


iiif.load(img)
iiif.process_data