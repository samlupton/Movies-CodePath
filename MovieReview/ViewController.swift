//
//  DetailViewController.swift
//  MovieReview
//
//  Created by Samuel Lupton on 3/5/23.
//

import UIKit
import Nuke

class ViewController: UIViewController {

    @IBOutlet weak var original_title: UILabel!
    @IBOutlet weak var vote_count: UILabel!
    @IBOutlet weak var popularity: UILabel!
    @IBOutlet weak var vote_average: UILabel!
    @IBOutlet weak var moviePosterImageView: UIImageView!
    @IBOutlet weak var overview: UILabel!
    // TODO: Pt 1 - Add a track property
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray


        // TODO: Pt 1 - Configure the UI elements with the passed in track
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" + movie.backdrop_path.absoluteString)!, into: moviePosterImageView)

        // Set labels with the associated track values.
        original_title.text = movie.original_title
        vote_count.text = String(movie.vote_count)
        popularity.text = String(movie.popularity)
        vote_average.text = String(movie.vote_average)
        overview.text = movie.overview
        
    }
}

