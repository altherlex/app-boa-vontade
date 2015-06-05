require 'date'
namespace "js" do
  desc "Comprimi os arquivos javascript em ambiente de produção"
  task :min do
    # list of files to minify
    libs = ['cliente/javascripts/prototype.js',
      'cliente/javascripts/ajax.js',
      'cliente/javascripts/effects.js',
      'cliente/javascripts/dragdrop.js',
      'cliente/javascripts/seguranca.js',
      'cliente/javascripts/sistema.js',
      'cliente/javascripts/html.js',
      'cliente/javascripts/popcalendar.js',
      'cliente/javascripts/tablekit.js',
      'cliente/javascripts/prototip.js',
      'cliente/javascripts/livepipe.js',
      'cliente/javascripts/contextmenu.js',
      'cliente/javascripts/carousel.js',
      'cliente/javascripts/shortcut.js'
      ]

    # Define o script yuicompressor script e o arquivo final
    yuicompressor = 'cliente/compressor/yuicompressor-2.4.6/build/yuicompressor-2.4.6.jar'
		arquivo_tmp = "all#{Time.now}.js"
    arquivo_final = 'cliente/javascripts/all_min.js'

    # Cria um arquivo js temporário
    tmp = File.new(arquivo_tmp,  "w+")
    libs.each {|lib| open(lib) {|f| tmp.write(f.read) } }
    tmp.rewind

    # Comprimi o arquivo temporário
    %x[java -jar #{yuicompressor} "#{tmp.path}" -o "#{arquivo_final}" --type js --charset iso-8859-1]   

    File.delete(arquivo_tmp)
  end
end

