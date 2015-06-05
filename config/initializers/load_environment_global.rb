RAILS_ROOT=Rails.root
class String
  ACENTOS_MINUS = "ãàáâäèéêëìíîïõòóôöùúûüçñ "
  ACENTOS_MAIUS = "ÃÀÁÂÄÈÉÊËÌÍÎÏÕÒÓÔÖÙÚÛÜÇÑ "

  SEM_ACENTOS_MINUS = "aaaaaeeeeiiiiooooouuuucn "
  SEM_ACENTOS_MAIUS = "AAAAAEEEEIIIIOOOOOUUUUCN "

  def br_downcase
    self.tr([*('A'..'Z')].join(','), [*('a'..'z')].join(',')).tr(ACENTOS_MAIUS, ACENTOS_MINUS)
  end

  def br_downcase!
    self.replace(self.br_downcase)
  end

  def br_upcase
    self.tr([*('a'..'z')].join(','), [*('A'..'Z')].join(',')).tr(ACENTOS_MINUS, ACENTOS_MAIUS)
  end

  def br_upcase!
    self.replace(self.br_upcase)
  end

 	def fonetica
  	self.tr( ACENTOS_MINUS+ACENTOS_MAIUS, SEM_ACENTOS_MINUS+SEM_ACENTOS_MAIUS).br_upcase
  end

  # Ex: 'MaRIA De lurdEs'.nome_proprio #=> 'Maria de Lurdes'
  #     'JOÃO DA COSTA E SILVA'.nome_proprio #=> 'João da Costa e Silva'
  def nome_proprio
    return self if self.blank?
    self.br_downcase!
    self.replace( self.split(' ').map{|s| s.mb_chars[0] = s.mb_chars.first.br_upcase; s }.join(' ') )
    self.gsub(/ D(a|e|o|as|os) /, ' d\1 ').gsub(/ E /, ' e ')
  end

  # Ex: 'exemplo de frase grande'.abreviar(10) #=> 'exemplo de ...'
  def abreviar( tamanho, string_final = ' ...' )
    return nil if self.nil?
    return self[0..tamanho] + ( self.size > tamanho ? string_final : '' )
  end

  # Ex: 'teste\ncom\nquebra'.com_quebra_html #=> 'teste<br/>com<br/>quebra'
  def com_quebra_html
    return self if self.blank?
    self.gsub("\n", '<br/>').gsub('\n', '<br/>')
  end
  
  def strip_tags
	HTML::FullSanitizer.new.sanitize(self).strip
  end

  def nome_proprio_para_tags
	miolo = self.strip_tags
	if miolo != self
		arr_tag = self.split miolo
		arr_tag.first.to_s + miolo.nome_proprio + arr_tag[1..-1].to_s
	else
		self
	end
  end

  #METODO DE INTERPOLAÇÃO DA VERSAO 1.9 DO RUBY
  if RUBY_VERSION < '1.9'
    unless instance_methods.find {|m| m.to_s == 'bytesize'}
      alias :bytesize :size
    end
    alias :_old_format_m :% # :nodoc:

    PERCENT_MATCH_RE = Regexp.union(/%%/,  /%\{(\w+)\}/, /%<(\w+)>(.*?\d*\.?\d*[bBdiouxXeEfgGcps])/
    )

    def %(args)
      if args.kind_of?(Hash)
        ret = dup
        ret.gsub!(PERCENT_MATCH_RE) {|match|
          if match == '%%'
            '%'
          elsif $1
            key = $1.to_sym
            args.has_key?(key) ? args[key] : match
          elsif $2
            key = $2.to_sym
            args.has_key?(key) ? sprintf("%#{$3}", args[key]) : match
          end
        }
      ret
      else
        ret = gsub(/%([{<])/, '%%\1')
        begin
          ret._old_format_m(args)
          rescue ArgumentError => e
          if $DEBUG
            $stderr.puts "  The string:#{ret}"
            $stderr.puts "  args:#{args.inspect}"
            puts e.backtrace
          else
            raise ArgumentError, e.message
          end
        end
      end
    end
  end # if
end