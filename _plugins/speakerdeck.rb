module Jekyll
    class SpeakerDeck < Liquid::Tag
  
        def initialize(name, id, tokens)
            super
            @id = id
        end

        def render(context)
            %(<div id="presentation-container"><script async="true" class="speakerdeck-embed" data-id="#{@id.strip}" src="//speakerdeck.com/assets/embed.js"> </script> </div>)
        end

    end
end

Liquid::Template.register_tag('speakerdeck', Jekyll::SpeakerDeck)