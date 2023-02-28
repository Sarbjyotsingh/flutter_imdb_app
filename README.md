# Flutter IMDB App

A Flutter project allows user to search for movies titles and view the related details.

## Uses The Open Movie Database API
- [Open Movie Database API](https://www.omdbapi.com)
- Example search: `https: /www.omdbapi.com/?s=batman&apikey=APIKey`

## Architectural:
MVC: MVC architecture allows us to separate the user interface (View) from the
business logic (Controller) and data (Model). This separation makes it easier to
maintain, test and modify each component of the application independently without
affecting the others. The business logic (Controller) is decoupled from the View. It
helps us maintain a clean architecture.

## State Management:
Riverpod: Riverpod encourages a modular design approach to state management,
which makes it easy to organize and manage your code. This can improve the overall
maintainability and readability of your codebase
Riverpod is highly scalable and can be used in both small and large applications. It
provides a flexible architecture that allows you to manage states across different layers
of your application.
In the Current application, we have fetched data from API and displayed it according to
search text which makes Riverpod a good choice.

## Implementing Delay in API Call while typing:
We frequently use a search box in our app to conduct network-based autocomplete-style
searches. It would be impractical in this situation to send a network request for each
character the user types or modifies because that would waste resources. As soon as the
user pauses or stops typing, it is preferable to call API. Using a Class, which utilizes a
timer to delay the search request until it stops receiving text updates after 0.3 seconds
or any duration you specify, we have accomplished this.

## Demo Video:

https://user-images.githubusercontent.com/28133782/221993657-288cf030-5840-42b6-bfaa-922668860a7c.mp4

## ScreenShots

<table>
  <tr>
    <td>
  <img width="250px" src="https://user-images.githubusercontent.com/28133782/221994002-50ebbfbf-e77e-403d-8fcc-6d73307b8a23.jpeg">
    </td>
    <td>
       <img width="250px" src="https://user-images.githubusercontent.com/28133782/221994004-5de57342-c957-43a6-9665-1c1ae890c0b9.jpeg">
    </td>
  </tr>
</table>
