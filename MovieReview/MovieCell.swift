//
//  MovieCell.swift
//  MovieReview
//
//  Created by Samuel Lupton on 3/5/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()

        // Initialization code
    }
    /// Configures the cell's UI for the given track.
    func configure(with movies: Movie) {
        movieName.text = movies.movieName
        movieDescription.text = movies.movieDescription
        backgroundColor = .lightGray


        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movies.artworkUrl100, into: moviePoster)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var movieDescription: UILabel!
}
