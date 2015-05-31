defmodule Workshop.I18n do
  use Linguist.Vocabulary

  @default_locale "en"

  locale "en", [
    index: [
      layout: [
        title: "Design Thinking Workshops",
        navbar: [
          brand: "July 24 & 25, 2015 - Yachay, Imbabura, Ecuador",
          contact: "Questions? hello@pocketknife.io"
        ],
        credits: "Photo credits, Emi Kolawole."
      ],

      header: [
        title: "Design Thinking Workshops",
        subtitle: "Experience Stanford Universities" <>
          " ‘design thinking’ approach to innovation."
      ],

      body: [
        innovation: [
          subheader: "The Skills to Build Your Big Idea",
          header: "Innovation in the Heart of Ecuador",
          body: "Join us for a full-day workshop at Yachay City of" <>
            " Knowledge and learn Stanford University's winning strategies" <>
            " for creating products and services that matter. Instructors" <>
            " from Stanford's d.school classes will lead participants" <>
            " through an innovation sprint, and teach essential skills" <>
            " for any entrepeneur or professional.",
        ],

        great_ideas: [
          header: "How Great Ideas Are Developed",
          body: "Our intensive programs are designed to help you" <>
            " experience the process of innovation. The entire workshop" <>
            " is hands-on - you're solving a problem with other local " <>
            "innovators."
        ],

        skills: [
          header: "Crucial Skills, Hands-on Experience",
          body: "Every product changes between idea and market. This" <>
            " workshop provides a hands-on experience of the entire" <>
            " design lifecycle, from user interviews to building and" <>
            " testing a prototype."
        ],

        workshop: [
          header: "Workshop Overview",
          part_1: [
            header: "Part 1",
            intro: [
              header: "Introduction & Welcome",
              item_1: "form teams and discuss innovation sprint prompt",
              item_2: "materials orientation"
            ],
            empathize: [
              header: "Empathize",
              item_1: "interview prep and demonstration",
              item_2: "user research skills",
              item_3: "practice interviewing users"
            ],
            define: [
              header: "Define",
              item_1: "tools for understanding user research",
              item_2: "POV/user persona mapping",
              item_3: "insight identification"
            ],
            ideate: [
              header: "Ideate",
              item_1: "structured, collaborative brainstorming tools",
              item_2: "analogous inspiration"
            ]
          ],
          part_2: [
            header: "Part 2",
            prototype: [
              header: "Prototype",
              item_1: "rapid, iterative product realization",
              item_2: "create testing fieldguide, make a plan"
            ],
            test: [
              header: "Test",
              item_1: "user testing methods",
              item_2: "interpreting feedback",
              item_3: "modifying your prototype"
            ],
            storytelling: [
              header: "Storytelling",
              item_1: "the elements of a memorable story",
              item_2: "groups share their prototypes"
            ],
            debrief: [
              header: "Debrief",
              item_1: "group networking activity",
              item_2: "how to use design in daily life"
            ]
          ]
        ],

        yachay: [
          header: "Innovation is about meeting the challenges that we" <>
           " encounter in our lives.",
          body: "Workshop participants will work in small groups to tackle some of Ecuador's most pressing issues. They'll be doing this at the heart of the country's defenses. Yachay is a community of business and education that works to understand its challenges and opportunities. You will be addressing the same issues, and your group's ideas can help The City of Knowledge respond."
        ],

        features: [
          yachay: [
            header: "Yachay City of Knowledge",
            body: "Workshop host and Ecuadorian research, business and" <>
              " educational hub."
          ],
          design: [
            header: "Design Thinking",
            body: "A five-step framework for innovation pioneered at" <>
              " Stanford’s d.school."
          ],
          try: [
            header: "Try it out!",
            body: "Take the d.school’s Virtual Crash Course to get a taste" <>
              " of the workshop"
          ],
          more: "Read More"
        ],

        instructors: [
          header: "Workshop Instruction",
          caitria: "Caitria is a design strategist and innovation coach, and a former fellow/adjunct at Stanford’s Hasso Plattner Institute of Design (d.school). She is the founder/CEO emeritus of Recovers.org, an internationally recognized disaster relief technology company. She's led design work and done workshops for organizations like The Lean Startup, Hyatt, Boys & Girls Club, and SXSW. Her work has been profiled by TED.com, FastCompany, and Forbes and she is the recipient of a White House Champion of Change award for contributions to resilience and disaster recovery. She's a graduate of Harvard University."
        ]

      ]
    ],

    form: [
      reserve: "Reserve Your Place",
      ticket: "Signing up reserves you a $45 ticket to the workshop" <>
        " day of your choice.",
      english: "Instruction in English, English comprehension required.",
      understand: "I understand.",
      signup: "Sign Up",
      labels: [
        name: "Name",
        email: "Email",
        occupation: "Occupation"
      ],
      workshop: [
        default: "Select your workshop",
        entrepreneur: "Friday July 24, 2015 - Entrepreneurs $45",
        student: "July 25, 2015 - University Students & Entrepreneurs $45"
      ]
    ]
  ]

  locale "es", [
    index: [
      layout: [
        title: "Talleres de Design Thinking",
        navbar: [
          brand: "Julio 24 & 25, 2015 - Yachay, Imbabura, Ecuador",
          contact: "Preguntas? hello@pocketknife.io"
        ],
        credits: "Fotos por: Emi Kolawole."
      ],

      header: [
        title: "Talleres de Design Thinking",
        subtitle: "Descubre el enfoque de la Universidad Standford para" <>
          " la innovación utilizando Design Thinking."
      ],

      body: [
        innovation: [
          subheader: "Habilidades para desarrollar tu idea!",
          header: "Innovación desde el centro del mundo",
          body: "Acompáñanos para un día completo de taller y aprende sobre las estrategias ganadoras de Stanford para la creación de productos y servicios con impacto. Los instructores de la escuela de diseño (d.school) de Stanford acompañarán a los participantes durante el proceso."
        ],

        great_ideas: [
          header: "Dirigido a emprendedores, estudiantes, profesionales, innovadores",
          body: "¿Tienes ideas en mente? ¿No estás seguro por dónde empezar? Este programa intensivo está diseñado para enseñarte las habilidades que necesitas y ayudarte a crear una red junto con otros innovadores locales."
        ],

        skills: [
          header: "Aprende habilidades esenciales con experiencia práctica",
          body: "Recorre a través del ciclo de vida completo del diseño de" <>
            " producto, desde la fase de exploración hasta la construcción" <>
            " y testeo del prototipo. Aprende haciendo"
        ],

        workshop: [
          header: "Agenda del programa",
          part_1: [
            header: "Parte 1",
            intro: [
              header: "Introducción y Bienvenida",
              item_1: "formación de equipos y planteamiento de retos",
              item_2: "introducción al uso de materiales"
            ],
            empathize: [
              header: "Empatizar",
              item_1: "preparación de entrevistas y demostración",
              item_2: "investigación de usuario",
              item_3: "práctica de entrevista a usuarios"
            ],
            define: [
              header: "Definir"
            ],
            ideate: [
              header: "Idear",
              item_1: "herramientas para brainstorming estructurado y colaborativo",
              item_2: "inspiración análoga"
            ]
          ],
          part_2: [
            header: "Parte 2",
            prototype: [
              header: "Prototipar",
              item_1: "diseño rápido e iterativo de productos",
              item_2: "creación de guía de pruebas de concepto y planificación"
            ],
            test: [
              header: "Testear",
              item_1: "métodos de prueba con usuarios",
              item_2: "interpretación de la retroalimentación",
              item_3: "actualizando el prototipo"
            ],
            storytelling: [
              header: "Storytelling",
              item_1: "the elements of a memorable story",
              item_2: "groups share their prototypes"
            ],
            debrief: [
              header: "Entrevista (Debrief)",
              item_1: "networking",
              item_2: "cómo diseñar en el día a día"
            ]
          ]
        ],

        yachay: [
          header: "Innovation is about meeting the challenges that we" <>
           " encounter in our lives.",
          body: "Los talleres de design thinking tratarán problemas" <>
            " reales para perfeccionar habilidades reales dentro del" <>
            " contexto ecuatoriano."
        ],

        features: [
          yachay: [
            header: "Yachay Ciudad del Conocimiento",
            body: "Workshop host and Ecuadorian research, business and" <>
              " educational hub."
          ],
          design: [
            header: "Design Thinking",
            body: "El modelo de cinco pasos para la innovación de la" <>
              " d.school de Stanford"
          ],
          try: [
            header: "Pruébalo",
            body: "Toma el curso virtual de d.school para una muestra del taller"
          ],
          more: "Leer más"
        ],

        instructors: [
          header: "Instructores",
          caitria: "Estratega de diseño y mentora de innovación, fellow del Instituto Hasso Plattner de Diseño de la Universidad Stanford (d.school). Fundadora y CEO de Recovers.org, un compañía de base tecnológica internacionalmente reconocida en remediación de desastres naturales. Experiencia en entrenamiento y diseño para Lean Startup, Hyatt, Boys & Girls Club, Outset Medical. Su trabajo ha sido publicado en TED.com, FastCompany, Forbes entre otros. Ganadora del reconocimiento US White House Champion of Change por sus contribuciones en diseño en el campo de remediación y resiliencia de desastres. Graduada de Harvard University."
        ]
      ]
    ],

    form: [
      reserve: "Reserva tu Cupo",
      ticket: "Al registrarte reservarás tu cupo por $45 para el taller" <>
        " de tu elección",
      english: "La instrucción se dará en inglés por lo que se requiere" <>
        " comprensión del idioma.",
      understand: "Entiendo.",
      signup: "Registrarse",
      labels: [
        name: "Nombre",
        email: "Email",
        occupation: "Occupacion"
      ]
    ]
  ]

  @doc """
  Translate for the given locale, fallback to `#{@default_locale}`.
  """
  def t_en(locale, key, bindings \\ []) do
    case t(locale, key, bindings) do
      {:ok, translation}        -> translation
      {:error, :no_translation} -> t!(@default_locale, key, bindings)
    end
  end

end
