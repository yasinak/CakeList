Coding Test (fictitious)


***
NOTE: PLEASE DO NOT USE THIRD PARTY LIBRARIES. However, feel free to state which third party libraries you might have used.
***

Here you'll find the code for a simple mobile app to browse cakes. 

Unfortunately, the developer who wrote this code is no longer employed by the company as we had some concerns over his ability. 

The project compiles but the app crashes as soon as it runs. The app loads a JSON feed containing a repeated list of cakes, with title, image and description from a URL, then displays the contents of the feed in a scrollable list. 

We would like you to fix the crash bug, ensure the functionality of the app works as expected (all images display correctly on the table, all text is readable) and performs smoothly (ideally, this should be done without third party libraries). You should also refactor, optimise and improve the code where appropriate to use platform best practises. 

Please note that we are not looking for perfection, but rather for a clean and pragmatic solution. This should include refactoring but shouldn’t be over engineered. The test can be completed in 2-3 hours; howerever, this is a not a limit. Feel free to spend more time on it if you wish.
# CakeList

Few word about this test.
I started to fix the crash.
After that, I started to improve the presentation of the CakeCell, I had some Constraint and changed the image layout.
I make the choose to add one external library (AfNetworking) with Cocoapod. About the data downloading and the image downloading, to get time and because this library is done well. AfNetworking is very used, has a lot of support, regulary maintained...
To finish, I created models about the fetch data because I think it is good to have that to prepare a possible extension, modification of the fetch data into the JSON.

Good reading ;)
