require "yaml"

module Jekyll

  class TagPage < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tag'] = tag

      tag_title_prefix = site.config['tag_title_prefix'] || 'Tag: '
      self.data['title'] = "#{tag_title_prefix}#{tag}"
    end
  end

  class TagPageGenerator < Generator
    safe true

    def generate(site)
      # puts site.layouts.collections.tags
      # check if we have the tags_index layout
      if site.layouts.key? 'tag_page'
        dir = site.config['tag_dir'] || 'tags'
        site.tags.each_key do |tag|
          tag_filename = File.join(site.source, '_tags', "#{tag}.md")
          if File.file? tag_filename
            # Jekyll should handle old tag pages just fine
          else
            if ENV["CI"]
              # Make sure test will not pass when tag page not found
              abort "Tag page for '#{tag}' not found when running on CI environment"
            end
            # We're going to copy page template to the _tags folder
            # and add the new tag page because _tags index is already built

            tag_page_contents = "---\ntag: #{tag}\nlayout: tag_page\n---\n{% include tag_page_common.html %}"

            File.write tag_filename, tag_page_contents

          # site.pages << TagPage.new(site, site.source, File.join(dir, tag), tag)
          end
        end
      end
    end
  end
end
