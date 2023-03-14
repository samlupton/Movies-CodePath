//
//  MoviesViewController.swift
//  MovieReview
//
//  Created by Samuel Lupton on 3/13/23.
//

import UIKit
import Nuke


class MoviesViewController: UIViewController, UICollectionViewDataSource {
    var movies: [Poster] = []
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        view.backgroundColor = .lightGray


        
        
        // Get a reference to the collection view's layout
        // We want to dynamically size the cells for the available space and desired number of columns.
        // NOTE: This collection view scrolls vertically, but collection views can alternatively scroll horizontally.
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout

        // The minimum spacing between adjacent cells (left / right, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumInteritemSpacing = 4

        // The minimum spacing between adjacent cells (top / bottom, in vertical scrolling collection)
        // Set this to taste.
        layout.minimumLineSpacing = 4

        // Set this to however many columns you want to show in the collection.
        let numberOfColumns: CGFloat = 3

        // Calculate the width each cell need to be to fit the number of columns, taking into account the spacing between cells.
        let width = (collectionView.bounds.width - layout.minimumInteritemSpacing * (numberOfColumns - 1)) / numberOfColumns

        // Set the size that each tem/cell should display at
        layout.itemSize = CGSize(width: width, height: width)
        
        // Create a search URL for fetching albums (`entity=album`)
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=2f98b69e714eea4eb620cfc243b75d09")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            do {
                // Create a JSON Decoder
                let decoder = JSONDecoder()
                do {
                    // Try to parse the response into our custom model
                    let response = try decoder.decode(MovieSearchResponse.self, from: data)
                    let movies = response.results
                    print(movies)
                    
                    DispatchQueue.main.async {
                        self?.movies = movies
                        self?.collectionView.reloadData()
                    }
                }
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }


        task.resume()
        view.backgroundColor = .lightGray


    }
    
 
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // TODO: Pt 1 - Pass the selected track to the detail view controller
//        // Get the cell that triggered the segue
//        if let cell = sender as? UICollectionViewCell,
//           // Get the index path of the cell from the table view
//           let indexPath = collectionView.indexPath(for: cell),
//           // Get the detail view controller
//           let ViewController = segue.destination as? ViewController {
//
//            // Use the index path to get the associated track
//            let movies = movies[indexPath.row]
//
//            // Set the track on the detail view controller
//            ViewController.movie = movies
//        }
//
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {

        // the number of items shown should be the number of albums we have.
        movies.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        view.backgroundColor = .lightGray

        // Get a collection view cell (based in the identifier you set in storyboard) and cast it to our custom AlbumCell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell

        // Use the indexPath.item to index into the albums array to get the corresponding album
        let movie = movies[indexPath.item]

        // Get the artwork image url
        let imageUrl = movie.poster_path

        // Set the image on the image view of the cell

        Nuke.loadImage(with:URL(string:"https://image.tmdb.org/t/p/w500" +  imageUrl.absoluteString)!, into: cell.moviePosters)

        return cell
    }
}
