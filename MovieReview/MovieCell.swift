//
//  MovieCell.swift
//  MovieReview
//
//  Created by Samuel Lupton on 3/5/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {
    @IBOutlet weak var original_title: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var overview: UILabel!
    
    
    /// Configures the cell's UI for the given track.
    func configure(with movie: Movie) {
        original_title.text = movie.original_title
        overview.text = movie.overview
        backgroundColor = .lightGray


        // Load image async via Nuke library image loading helper method
//        Nuke.loadImage(with: movies.backdrop_path, into: moviePoster)
        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" + movie.poster_path.absoluteString)!, into: moviePoster)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code let
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
