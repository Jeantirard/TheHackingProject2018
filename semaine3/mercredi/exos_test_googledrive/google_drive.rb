require "google_drive"
#crea un archivo config.son con mis contrasenas de google drive en un archivo .json
session = GoogleDrive::Session.from_config("config.json")

# obtiene toda la lista de mis archivos, documentos en el google drive *web
session.files.each do |file|
  p file.title
end

	# Sube un archivo que tengo en la ruta, digamos tengo un test.txt en la misma carpeta de mi ejecutable, y este archivo lo subo a mi google drive con el nombre hello.txt
#session.upload_from_file("./test.txt", "hello.txt", convert: false) #crea una copia de mi test.txt en mi google drive con el nombre de hello.txt

# Downloads to a local file.
file = session.file_by_title("Capture d’écran 2018-08-04 à 20.30.41.png")
file.download_to_file("intentando.png") 

# Updates content of the remote file.
#file.update_from_file("hello.txt")