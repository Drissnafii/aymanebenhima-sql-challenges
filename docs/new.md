```mermaid
graph TD;
usecaseDiagram

actor User
actor Admin

User --> [View Cities]
User --> [View Stadiums]
User --> [View Matches]
User --> [Search Matches]
User --> [View Transport Info]
User --> [View Accommodations]
User --> [View Cultural Info]
User --> [View Articles]
User --> [Save Favorites]

Admin --> [Manage Cities]
Admin --> [Manage Stadiums]
Admin --> [Manage Matches]
Admin --> [Manage Articles]
Admin --> [Manage Accommodations]
Admin --> [Manage Users]