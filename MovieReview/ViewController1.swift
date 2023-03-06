////
////  DetailViewController.swift
////  MovieReview
////
////  Created by Samuel Lupton on 3/5/23.
////
//
////
////  DetailViewController.swift
////  lab-tunley
////
////  Created by Charlie Hieger on 12/5/22.
////
//
//import UIKit
//import Nuke
//
//class ViewController: UIViewController {
//        
//    @IBOutlet weak var avVoteLabel: UILabel!
//    @IBOutlet weak var voteLabel: UILabel!
//    @IBOutlet weak var popLabel: UILabel!
//    @IBOutlet weak var movieNameLabel: UILabel!
//    @IBOutlet weak var movieImageView: UIImageView!
////    @IBOutlet weak var movieNameLabel: UILabel!
////    @IBOutlet weak var voteLabel: UILabel!
////    @IBOutlet weak var popLabel: UILabel!
////    @IBOutlet weak var avVote: UILabel!
////    @IBOutlet weak var movieImageView: UIImageView!
//    
//    // TODO: Pt 1 - Add a track property
//    var movie: Movie!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // TODO: Pt 1 - Configure the UI elements with the passed in track
//        Nuke.loadImage(with: movie.artworkUrl100, into: movieImageView)
//
//        // Set labels with the associated track values.
//        movieNameLabel.text = movie.movieName
//        voteLabel.text = movie.numVotes
//        popLabel.text = movie.numPop
//        avVoteLabel.text = movie.numAvgVotes
//
//        
//
//
//
//    }
//
//
//
//}
//
