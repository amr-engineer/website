#set page(
  paper: "a4",
  margin: (x: 1.25cm, y: 1.25cm),
  footer: align(center)[
    #text(size: 8pt, fill: rgb("#777777"))[
      Reference: #link("https://amr-arkani.pages.dev/cv")[amr-arkani.pages.dev/cv]
    ]
  ],
)

#set text(
  font: ("Inter", "Liberation Sans", "DejaVu Sans"),
  size: 9.5pt,
  fill: rgb("#1a1a1a"),
)

#set par(justify: false, leading: 0.55em)

#show link: set text(fill: rgb("#1C366C"))

#import "@preview/fontawesome:0.5.0": *

#let section(title) = {
  v(4pt)
  text(size: 10.5pt, weight: "bold", tracking: 0.05em)[#upper(title)]
  v(-4pt)
  line(length: 100%, stroke: 0.5pt + rgb("#999"))
  v(2pt)
}

#let job(company, role, dates, location, points) = {
  v(2pt)
  grid(
    columns: (1fr, auto),
    [*#role* -- _#(company)_], text(fill: rgb("#555555"), size: 9pt)[#location | #dates],
  )
  v(-3pt)
  list(..points)
}

#let project(name, tech, dates, points) = {
  v(2pt)
  grid(
    columns: (1fr, auto),
    [*#name* #if tech != "" [(_#(tech)_)]], text(fill: rgb("#555555"), size: 9pt)[#dates],
  )
  v(-3pt)
  list(..points)
}

#align(center)[
  #text(size: 18pt, weight: "bold")[AMR AL-ARKANI] \
  #v(2pt)
  #text(size: 9pt, fill: rgb("#444444"))[
    #fa-envelope() #h(2pt) amr\@programmer.net #h(4pt) • #h(4pt)
    #fa-whatsapp() #h(2pt) #link("https://wa.me/966504979812")[+966 50 497 9812] #h(4pt) • #h(4pt)
    #fa-map-marker-alt() #h(2pt) Makkah, SA #h(4pt) • #h(4pt)
    #fa-globe() #h(2pt) #link("https://amr-arkani.pages.dev")[amr-arkani.pages.dev] #h(4pt) • #h(4pt)
    #fa-github() #h(2pt) #link("https://github.com/amr-engineer")[amr-engineer]
  ]
]

#v(4pt)

#section("Summary")
#v(2pt)
Backend-leaning *software engineer* building *scalable web* platforms and *backend architecture*, with reliability focus and strong *UI/UX* awareness. Experienced with *Node.js*, *Go*, *PostgreSQL*, *MongoDB*, *Linux* and *AWS*.

#section("Experience")

#job(
  "Sarmad Studio",
  "Game Developer",
  "Jan 2025 - Present",
  "Hybrid",
  (
    [Co-founded an indie game studio, directing technical architecture and *cross-platform* builds.],
    [Shipped #link("https://sarmad.studio/charlatan")[*Charlatan*], a social deduction game featuring *real-time voice* chat over *WebRTC* via *TURN*.],
  ),
)

#job(
  "Noor al Mashaer (Part-Time)",
  "Full-Stack Developer",
  "Apr 2025 - Jul 2025",
  "Makkah, SA",
  (
    [Co-built a *Next.js* web app, replacing manual *Excel spreadsheets* with a *PostgreSQL* database-backed system.],
    [Implemented *Role-Based Access Control* (*RBAC*) and internationalization (*i18n*) with responsive operator UI.],
  ),
)

#job(
  "Smart TMBot",
  "Software Engineer",
  "Jun 2021 - Sep 2024",
  "Remote",
  (
    [Engineered *event-driven* automated *chat bots* for community management at monthly *280k+ user* scale.],
    [Integrated third-party *REST APIs* with advanced workflows backed by *MongoDB* for reliable automation.],
    [Deployed and operated services on *Google Cloud* Platform *Compute Engine* (*GCP*).],
  ),
)


#section("Projects")

#project(
  link("https://amr.engineer/clipdmenu")[clipdmenu],
  "Clipboard Manager",
  "Released Aug 2026",
  (
    [Built a lightweight clipboard manager in *Rust* based on *client-server* architecture for *X11* on *Linux*.],
    [Implemented text and image history with a *background monitoring*, *caching* and *realtime* serving.],
  ),
)

#project(
  link("https://github.com/amr-engineer/website")[amr-arkani.pages.dev],
  "Personal Website",
  "Released Dec 2025",
  (
    [Published a responsive professional website (*HTML*, *CSS*, *JavaScript*); attracted *25K+ visits* in month one.],
    [Hosted on *AWS* *EC2* behind *nginx* then *Caddy*, migrated backend from *Node.js* (*Express.js*) to *Go*.],
  ),
)

#project(
  link("https://amr-arkani.pages.dev/mini-polkit")[mini-polkit],
  "PolicyKit Authorization",
  "Released Jul 2025",
  (
    [Developed a minimal, security-focused *low-level* *authentication* agent in *C* for embedded *Linux* systems.],
  ),
)

#section("Languages")
- *Arabic* - Native speaker
- *English* - Achived *94/100* in the Standard Test for English Proficiency (STEP)


#section("Technical Skills")

#v(2pt)
- *Programming:* C, Rust, Python, JavaScript, TypeScript, SQL, Go
- *DevOps:* Linux, Git, CI/CD, GitHub Actions, Docker, AWS EC2
- *Backend:* Node.js, REST APIs, PostgreSQL, MongoDB, WebSockets, Auth (JWT, OAuth2)
- *Frontend:* Next.js, React, HTML, CSS, Tailwind CSS

#section("Education")

#v(2pt)
#grid(
  columns: (1fr, auto),
  [*High-School Diploma* -- Makkah Scientific Institute, Imam Mohammad ibn Saud University],
  text(fill: rgb("#555555"), size: 9pt)[Sep 2019 - Jul 2022],
)
