//
//  Movie.swift
//  MovieReview
//
//  Created by Samuel Lupton on 3/5/23.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct

struct Movie {
    let movieName: String
    let numPop: String
    let numVotes: String
    let numAvgVotes: String
    let movieDescription: String
    let moviePoster: URL
    let artworkUrl100: URL
}

// TODO: Pt 1 - Create an extension with a mock tracks static var

extension Movie {
    
    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        Movie(movieName: "Knock at the Cabin", numPop: "4286.16", numVotes: "751", numAvgVotes: "6.6", movieDescription: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.", moviePoster: URL(string: "https://image.tmdb.org/t/p/w500/22z44LPkMyf5nyyXvv8qQLsbom.jpg")!, artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w500/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg")!),
        Movie(movieName: "Black Panther: Wakanda Forever", numPop: "2949.117", numVotes: "3783", numAvgVotes: "7.4", movieDescription: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.", moviePoster: URL(string: "https://image.tmdb.org/t/p/w500/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg")!, artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w500/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!),
        Movie(movieName: "Puss in Boots: The Last Wish", numPop: "2820.651", numVotes: "4235", numAvgVotes: "8.4", movieDescription: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.", moviePoster: URL(string: "https://image.tmdb.org/t/p/w500/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!, artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w500/kuf6dutpsT0vSVehic3EZIqkOBt.jpg")!),
        Movie(movieName: "Plane", numPop: "2200.205", numVotes: "754", numAvgVotes: "6.9", movieDescription: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.", moviePoster: URL(string: "https://image.tmdb.org/t/p/w500/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg")!, artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w500/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!),
        Movie(movieName: "Little Dixie", numPop: "1511.332", numVotes: "44", numAvgVotes: "6.3", movieDescription: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.", moviePoster: URL(string: "https://image.tmdb.org/t/p/w500/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!, artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w500/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!),
        Movie(movieName: "Huesera", numPop: "1420.255", numVotes: "57", numAvgVotes: "6.8", movieDescription: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.", moviePoster: URL(string: "https://image.tmdb.org/t/p/w500/A2avUoNFstnBhAnHiogXQs4c9Bt.jpg")!, artworkUrl100: URL(string: "https://image.tmdb.org/t/p/w500/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg")!)
    ]
    
    
}
