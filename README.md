# MVP_example
Today I've been taking apart the MVP architecture
(Model View Presenter)

1) Model - well, it is clear here, the business logic of the application is brought
2) View - receives data from client
3) Presenter processes the data (the connection between Model and View).

The idea of this architecture is that there is no UIKit attached to Presenter, i.e. it processes the data. The example is https://github.com/plusfuturehendrix/MVP_example.

I have to add in my example Input and Output for connection between MVPs, i.e. a delegate between them.

<img width="830" alt="image" src="https://user-images.githubusercontent.com/107930591/204569087-1570405a-843e-4a91-b656-bd36d2b399a3.png">
