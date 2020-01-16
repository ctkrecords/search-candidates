class Candidate < ApplicationRecord
    belongs_to :user
    has_many :education_levels, dependent: :delete_all
    accepts_nested_attributes_for :education_levels,
                                  allow_destroy: true,
                                  reject_if: lambda { |attrs| attrs['name'].blank? }
    has_many :skills, dependent: :delete_all
    accepts_nested_attributes_for :skills, 
                                  allow_destroy: true,
                                  reject_if: lambda { |attrs| attrs['name'].blank? }
    has_many :careers, dependent: :delete_all
    accepts_nested_attributes_for :careers, 
                                  allow_destroy: true,
                                  reject_if: lambda { |attrs| attrs['name'].blank? }
    has_many :languages, dependent: :delete_all                                  
    accepts_nested_attributes_for :languages, 
                                  allow_destroy: true,
                                  reject_if: lambda { |attrs| attrs['name'].blank? }
    has_many :performance_areas, dependent: :delete_all                                  
    accepts_nested_attributes_for :performance_areas, 
                                  allow_destroy: true,
                                  reject_if: lambda { |attrs| attrs['name'].blank? }
    has_many :industries, dependent: :delete_all                                  
    accepts_nested_attributes_for :industries, 
                                   allow_destroy: true,
                                   reject_if: lambda { |attrs| attrs['name'].blank? }                                                     
                              

    GENRE_LIST = ["Masculino", "Femenino"]
    EDUCATION_LEVEL = ["Bachiller", "Estudiante Universitario", "Técnico", "Diplomado", "Licenciatura", "Ingenieria", "Maestria", "Postgrado", "MBA", "Doctorado", "PHD"]
    STATUS = ["Empleado", "Desempleado", "No disponible", "Sin Asignar"] 
    CAREERS = ["", "Administración", "Administración de Negocios", "Administración/Gestión Pública", "Aeroespacial", "Agronomía", "Alimentos", 
            "Anestesiología/Inhaloterapia", "Arqueología", "Arquitectura", "Arte Dramático", "Automotriz", "Aviación","Bellas Artes", "Bibliotecología/Documentación",
            "Biología", "Biología Marina", "Biomédica", "Bioquímica", "Ciencias Juridicas / Jurisprudencia", "Civil/Minas", 
            "Comercio Internacional/Exterior", "Computación/Sistemas", "Contabilidad/Auditoría", "Cosmetología", "Comunicaciones", "Crimonología", 
            "Danza", "Dibujo Técnico", "Diseño de Vestuario/Textil/Modas", "Diseño Gráfico", "Diseño Industrial", "Diseño Interior/ Ambiental/Paisajismo",
            "Ecología", "Economía", "Educación Básica/Primaria", "Educacion especial", "Educacion especial/Diferencial/Sicopedagogia",
            "Educación Física/Deporte", "Educación Parvularia/Inicial", "Electrica", "Electronica/ Electromecanica", 
            "Enfermería", "Estadísticas", "Filosofía", "Finanzas", "Finanzas Bancarias", "Física", "Fisioterapia", 
            "Fotografía", "Gastronomía/Cocina", "Geología/Cartografia/Topografía", "Hidráulica", "Hotelería", 
            "Idiomas", "Impuestos Internacionales", "Industrial", "Laboratorio Clínico", "Matemáticas", "Mecánica/Metalurgica",
            "Mecatronica/Automatizacion", "Medicina", "Mercadeo/Mercadotecnia", "Música", "Naval", "Negocios internacionales", 
            "Negocios/Economia/Industrial", "Nutrición", "Periodismo", "Pesquera/Cultivos", "Política", "Publicidad", 
            "Quimica", "Química y Farmacia", "Radiología", "Recursos Humanos/Relac. Ind.", "Relaciones Internacionales", 
            "Relaciones Públicas", "Responsabilidad Social Corporativa", "Salud Ambiental (Ecotecnologo)", "Secretariado/administración",
            "Seguridad Industrial/Ocupacional", "Sicología", "Sociología", "Tecnología Médica", "Telecomunicaciones", "Teologia/Pastoral",
            "Terapia Ocupacional", "Prevención de accidentes", "Textil", "Transporte", "Turismo", "Veterinaria/Zootecnia", 
            "Logística"]
    LANGUAGES = ["Inglés-Básico", "Inglés-Intermedio", "Inglés-Avanzado", "Francés-Básico", "Francés-Intermedio",
         "Francés-Avanzado", "Alemán-Basico", "Alemán-Intermedio", "Alemán-Avanzado", "Portugués-Básico", "Portugués-Intermedio",
         "Portugués-Avanzado", "Otros"]
    PERFORMANCE_AREAS = ["Administración","Calidad","Comercial / Ventas","Comunicaciones","Diseño / Fotografía / Multimedia",
        "Educación / Docencia / Investigación","Electricidad","Energía Renovables","Finanzas / Contabilidad","Gastronomía / Turismo",
        "Gobierno","Ingenierías","Legales","Logística / Distribución (Supply Chain)","Mercadeo / Publicidad","Minería / Petroleo / Gas",
        "Operaciones Bodega/Alamacen","Otra(s) área(s)","Producción / Manufactura","Recursos Humanos","Riesgos","Salud / Medicina / Farmacia",
        "Seguridad Industrial / Ocupacional","Servicio al Cliente","Tecnología / Sistemas / Computación","Telecomunicaciones / Redes"]   
    INDUSTRY = ["Aérea", "Agro-Industrial", "Agropecuaria", "Alimenticia", "Arquitectura", "Artesanal", "Automotriz", 
        "Banca/Financiera", "Biotecnología", "Call Center", "Calzado", "Comercio", "Comercio Exterior", "Construcción", 
        "Consultoria", "Consumo Masivo", "Defensa", "Diseño", "Editorial", "Educación", "Energía", "Entretenimiento", 
        "Farmacéutica", "Ferroviaria", "Financiera", "Forestal", "Ganadera", "Gastronómica", "Gobierno", "Higiene y Salud",
        "Holding", "Hoteleria", "Immobiliaria", "Imprenta", "Industrias", "Informacion e Investigacion", "Informatica/Tecnología", 
        "Internet", "Jurídica", "Laboratorio", "Manufactura", "Medios", "Minería/Petroleo/Gas", "Naviera/Transporte",
        "ONGs", "Otra", "Papelería", "Pesca", "Plasticos", "Publicidad/Marketing/RRPP", "Química", "Retail", "Salud", 
        "Seguros", "Servicios", "Super Mercado/Hipermercado", "Tabacalera", "Telecomunicaciones", "Textil", "Transporte", 
        "Turismo"]
    REGIONAL_CANDIDATE = ["No", "Si"]
    CIVIL_STATUS = ["Soltero", "Casado", "Unión libre", "Divorciado", "Viudo"]
    SKILLS = [".NET", "Abogado", "AFTER EFFECTS", "AMAZON-S3", "AS400", "Auditor", "Big Data", "BLACK BELT", "BPM", 
        "Business Intelligence", "C#", "Category Management", "CCNA", "CCNP", "CLOUD COMPUTING", "COBIT", "CRM", 
        "CSC", "DEBIAN", "DJANGO", "Dynamic", "Energías Renovables", "ERP", "Exactus", "FEDORA", "FIFO", 
        "Generación/ distribución electricidad", "GOGNOS", "Google Adwords Redes Sociales", "Google Analytics",
        "GREEN BELT", "HACCP", "Hay", "HEROKU", "HTML", "ILLUSTRATOR", "IN DESIGN", "IN DESING", "Ingles legal",
        "Investigación y Desarrollo", "IPV4", "IPV6", "ISO", "ISO 14000", "ISO 22000", "ISO 27000", "ISO9000", 
        "ISO9001", "ITIL", "Java", "JED", "KANBAN", "LAN", "LINUX", "NIELSEN", "Notario publico", "Oracle", "OSHA",
        "OTROS ERP", "Peachtree", "PHOTOSHOP", "PHP", "PLC", "PMI", "PMO", "PMP", "POP", "POWER BI", "PREMIER PRO",
        "PYTHON", "REDHAT", "RESTFUL", "RUBY ON RAILS", "SAP", "SCRUM", "SIX SIGMA", "SLA", "SOA", "SQL", 
        "SQL-SERVER", "SSAS", "SSP", "SSRS", "Tableau.Excel", "UBUNTU", "UI/UX", "VB", "VIRTUALIZACION", 
        "Visual Hur", "VISUAL STUDIO", "WAN", "WINDOWS SERVER", "YELLOW BELT"]
    RECRUITMENT_SOURCE = ["Hunting", "Bolsa de empleo en línea", "Redes sociales Search", "Página de Search", 
        "Referido", "Linkedin", "Bolsas de empleo", "Universidades", "Grupo o gremios Especializados"]
    RELOCATE = ["No", "Si"]
    COUNTRIES = ["Afganistán", "Albania", "Alemania", "Andorra", "Angola", "Antigua y Barbuda", "Arabia Saudita", "Argelia", "Argentina", "Armenia",
     "Australia", "Austria", "Azerbaiyán", "Bahamas", "Bangladés", "Barbados", "Baréin", "Bélgica", "Belice", "Benín", "Bielorrusia", "Birmania", 
     "Bolivia", "Bosnia-Herzegovina", "Botsuana", "Brasil", "Brunéi", "Bulgaria", "Burkina Faso", "Burundi", "Bután", "Cabo Verde", "Camboya", 
     "Camerún", "Canadá", "Catar", "Chad", "Chile", "China", "Chipre", "Colombia", "Comoras", "Congo", "Corea del Norte", "Corea del Sur", 
     "Costa de Marfil", "Costa Rica", "Croacia", "Cuba", "Dinamarca", "Dominica", "Ecuador", "Egipto", "El Salvador", "Emiratos Árabes Unidos", 
     "Eritrea", "Eslovaquia", "Eslovenia", "España", "Estados Unidos", "Estonia", "Etiopía", "Filipinas", "Finlandia", "Fiyi", "Francia", "Gabón", 
     "Gambia", "Georgia", "Ghana", "Granada", "Grecia", "Guatemala", "Guinea", "Guinea Ecuatorial", "Guinea-Bisáu", "Guyana", "Haití", "Honduras", 
     "Hungría", "India", "Indonesia", "Irak", "Irán", "Irlanda", "Islandia", "Islas Marshall", "Islas Salomón", "Israel", "Italia", "Jamaica", 
     "Japón", "Jordania", "Kazajistán", "Kenia", "Kirguistán", "Kiribati", "Kosovo", "Kuwait", "Laos", "Lesoto", "Letonia", "Líbano", "Liberia", 
     "Libia", "Liechtenstein", "Lituania", "Luxemburgo", "Macedonia", "Madagascar", "Malasia", "Malaui", "Maldivas", "Malí", "Malta", "Marruecos",
     "Mauricio", "Mauritania", "México", "Micronesia", "Moldavia", "Mónaco", "Mongolia", "Montenegro", "Mozambique", "Namibia", "Nauru", "Nepal", 
     "Nicaragua", "Níger", "Nigeria", "Noruega", "Nueva Zelanda", "Omán", "Países Bajos", "Pakistán", "Palaos", "Palestina", "Panamá", 
     "Papúa Nueva Guinea", "Paraguay", "Perú", "Polonia", "Portugal", "Reino Unido", "República Centroafricana", "República Checa", 
     "República Democrática del Congo", "República Dominicana", "Ruanda", "Rumania", "Rusia", "Samoa", "San Cristóbal y Nieves", "San Marino", 
     "San Vicente y las Granadinas", "Santa Lucía", "Santo Tomé y Príncipe", "Senegal", "Serbia", "Seychelles", "Sierra Leona", "Singapur", "Siria",
     "Somalia", "Sri Lanka", "Suazilandia", "Sudáfrica", "Sudán", "Sudán del Sur", "Suecia", "Suiza", "Surinam", "Tailandia", "Taiwán", "Tanzania",
     "Tayikistán", "Timor Oriental", "Togo", "Tonga", "Trinidad y Tobago", "Túnez", "Turkmenistán", "Turquía", "Tuvalu", "Ucrania", "Uganda",
      "Uruguay", "Uzbekistán", "Vanuatu", "Vaticano", "Venezuela", "Vietnam", "Yemen", "Yibuti", "Zambia", "Zimbabue"]

end
