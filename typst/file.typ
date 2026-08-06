#set page(
  paper: "a4",
  margin: 1.7em,
  background: rect(
    width: 100%,
    height: 100%,
    fill: rgb("#fff"),
  ),
)

#set text(
  font: "Times New Roman",
  size: 12pt,
)

// HEADER
#let name = "Carlos Nascimento Costa"
#let title = "Front-end • UI/UX"
#let site = (
  title: "carlosnc.site",
  link: "http://carlosnc.site",
)
#let github = (
  title: "github.com/carllosnc",
  link: "http://github.com/carllosnc",
)
#let linkedin = (
  title: "linkedin.com/in/carllosnc",
  link: "http://linkedin.com/in/carllosnc",
)

// PERSONAL INFO
#let birth_date = "13/11/1990"
#let phone_number = "(084) 9917-7434"
#let state = "Natal, RN"
#let email = "carllos.nc@gmail.com"

//SKILLS
#let skill_description = "Desenvolvedor front-end com experiência em design, implementação de interfaces interativas e responsivas, melhoria de performance, experiência do usuário, integração de APIs e desenvolvimento de novos produtos digitais."
#let skill_front_end = "Javascript, Typescript, CSS, HTML, React, Svelte, Vue, Tailwind, NextJS, Astro, Rest Api, GraphQL"
#let skill_mobile_dev = "React Native, Flutter, Dart"
#let skill_design = "Figma, Prototipagem, Illustrator, Photoshop"

//EXPERIENCES
#let xp_01 = (
  company: "Faceponto",
  position: "Front-end • Design • Mobile dev",
  data: "Maio 2022 - Atualmente",
  action: (
    "Atuei no redesign e desenvolvimento da landing page do Faceponto melhorando a experiência de usuário, performance e SEO, resultando em 50% mais acessos e conversões.",
    "Colaboro com equipes de marketing e desenvolvimento para melhorar a experiência de usuário da plataforma Faceponto",
    "Atuo no desenvolvimento mobile Android/iOS com Flutter e no desenvolvimento web com Typescript, React e NextJS.",
  ),
)

#let xp_02 = (
  company: "GRT8",
  position: "Front-end • Mobile dev • UI/UX",
  data: "Fevereiro 2020 - Março 2022",
  action: (
    "Trabalhei no redesign e migração do aplicativo Mobby Cidade, o projeto foi migrado de Ionic para React Native, nesse período o aplicativo atendeu mais de 200 mill usuário em diversos municípios do Nordeste.",
    "Atuei no design e desenvolvimento da plataforma Mobby Candidato, o projeto foi desenvolvido com React native, durante esse período a plataforma atendeu mais de 200 candidatos e ao total teve mais de 70 mil usuários",
    "Colaborei na criação e manutenção de 2 projetos governamentais web/mobile feitos React e Flutter, para auxiliar no combate ao Covid-19.",
  ),
)

#let xp_03 = (
  company: "Incubatech",
  position: "Frontend • Mobile dev",
  data: "Janeiro 2018 - Janeiro 2020",
  action: (
    "Atuei no desenvolvimento da plataforma Faceponto(startup de ponto digital e gerenciamento de RH que atualmente atende +1800 empresas). Durante esse período trabalhei na criação/manutenção de 2 aplicativos para iOS e Android utilizando React Native.",
    "Colaborei em projetos com 2 startups dos setores de saúde e edução, desenvolvendo produtos web e mobile com React e React Native.",
    "Atuei no desenvolvimento de landing pages performáticas e dashboards web com React e Angular.",
  ),
)

#let xp_03 = (
  company: "Dynavideo",
  position: "Front-end • UI Design",
  data: "Janeiro 2014 - Fevereiro 2016",
  action: (
    "Colaborei com 2 equipes de desenvolvimento para a implementação de designs de interface, criação de novos produtos e melhorias na experiência de 2 produtos existentes.",
    "Atuei no planejamento e desenvolvimento de interfaces para plataforma Ginga(Sistema de TV Digital).",
    "Atuei como desenvolvedor front-end na manutenção de landing pages e dashboards web com HTML, CSS, Javascript JQuery e Bootstrap",
  ),
)

//EDUCATION
#let education = (
  school: "Universidade Federal do Rio Grande do Norte",
  state: "Natal, RN",
  course: "Bacharel em Ciência & Tecnologia (Incompleto)",
  period: "2011 - 2013",
)

//ADITIONAL INFORMATIONS
#let aditional_information = "Tecnologias que fazem parte da minha rotina de estudo e que já tive algumas experiências esporádicas: Angular, PHP(Laravel), NodeJS(Express, Honojs, Elysia), SQL, PostgreSQL, MySql, contrução de Api Rest."

//--------------

= #name
#v(3pt)
#title #h(20pt) #site.title #h(20pt) #github.title #h(20pt) #linkedin.title
#line(length: 100%)

== Informações pessoais
#birth_date
