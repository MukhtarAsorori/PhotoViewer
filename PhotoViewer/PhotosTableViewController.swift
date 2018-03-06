//
//  PhotosTableViewController.swift
//  PhotoViewer
//
//  Created by Admin on 02/03/2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {
    
    var photos = [Photo]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var newPhoto = Photo(name: "Mountain", fileName: "mountain", notes: "A mountain is a large landform that stretches above the surrounding land in a limited area, usually in the form of a peak. A mountain is generally steeper than a hill. Mountains are formed through tectonic forces or volcanism. These forces can locally raise the surface of the earth. Mountains erode slowly through the action of rivers, weather conditions, and glaciers. A few mountains are isolated summits, but most occur in huge mountain ranges.")
        
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Tree", fileName: "tree", notes: "In botany, a tree is a perennial plant with an elongated stem, or trunk, supporting branches and leaves in most species. In some usages, the definition of a tree may be narrower, including only woody plants with secondary growth, plants that are usable as lumber or plants above a specified height. Trees are not a taxonomic group but include a variety of plant species that have independently evolved a woody trunk and branches as a way to tower above other plants to compete for sunlight. Trees tend to be long-lived, some reaching several thousand years old. In looser definitions, the taller palms, tree ferns, bananas and bamboos are also trees. Trees have been in existence for 370 million years. It is estimated that there are just over 3 trillion mature trees in the world.")
        
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Waterfalls", fileName: "waterfall", notes: "Waterfalls are commonly formed in the upper course of a river in steep mountains. Because of their landscape position, many waterfalls occur over bedrock fed by little contributing area, so may be ephemeral and flow only during rainstorms or significant snowmelt. The further downstream, the more perennial a waterfall can be. Waterfalls can have a wide range of widths and depths, and this diversity is part of what makes them such a charismatic and interesting natural phenomenon. Research into the diversity of natural waterfalls systematics has been carried out in recent years.")
        
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "A river", fileName: "river", notes: "A river is a natural flowing watercourse, usually freshwater, flowing towards an ocean, sea, lake or another river. In some cases a river flows into the ground and becomes dry at the end of its course without reaching another body of water. Small rivers can be referred to using names such as stream, creek, brook, rivulet, and rill. There are no official definitions for the generic term river as applied to geographic features,[1] although in some countries or communities a stream is defined by its size. Many names for small rivers are specific to geographic location; examples are in some parts of the United States, in Scotland and northeast England, and in northern England. Sometimes a river is defined as being larger than a creek, but not always: the language is vague.")
        
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "A sea", fileName: "sea", notes: "A sea is a large body of salt water that is surrounded in whole or in part by land. More broadly, is the interconnected system of Earth's salty, oceanic watersóconsidered as one global ocean or as several principal oceanic divisions. The sea moderates Earth's climate and has important roles in the water cycle, carbon cycle, and nitrogen cycle. Although the sea has been traveled and explored since prehistory, the modern scientific study of the seaóoceanographyódates broadly to the British Challenger expedition of the 1870s. The sea is conventionally divided into up to five large oceanic sectionsóincluding the International Hydrographic Organization's four named oceans (the Atlantic, Pacific, Indian, and Arctic) and the Southern Ocean; smaller, second-order sections, such as the Mediterranean, are known as seas.")
        
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Nature", fileName: "nature", notes: "Nature, in the broadest sense, is the natural, physical, or material world or universe. Nature can refer to the phenomena of the physical world, and also to life in general. The study of nature is a large, if not the only, part of science. Although humans are part of nature, human activity is often understood as a separate category from other natural phenomena.The word nature is derived from the Latin word natura, or essential qualities, innate disposition, and in ancient times, literally meant birth. Natura is a Latin translation of the Greek word physis (?????), which originally related to the intrinsic characteristics that plants, animals, and other features of the world develop of their own accord.[2][3] The concept of nature as a whole, the physical universe, is one of several expansions of the original notion; it began with certain core applications of the word ????? by pre-Socratic philosophers, and has steadily gained currency ever since. This usage continued during the advent of modern scientific method in the last several centuries.")
        
        photos.append(newPhoto)
        
        newPhoto = Photo(name: "Earth", fileName: "earth", notes: "Earth is the third planet from the Sun and the only object in the Universe known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4 billion years ago.[24][25][26] Earth's gravity interacts with other objects in space, especially the Sun and the Moon, Earth's only natural satellite. Earth revolves around the Sun in 365.26 days, a period known as an Earth year. During this time, Earth rotates about its axis about 366.26 times")
        
        photos.append(newPhoto)


        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return photos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "photoCell", for: indexPath)

        let currentPhoto = photos[indexPath.row]
        cell.textLabel?.text = currentPhoto.name
        let photoIcon = UIImage(named: currentPhoto.fileName)
        cell.imageView?.image = photoIcon

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }    [
     ]    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let secondScene = segue.destination as! DisplayViewController
        if let indexPath = self.tableView.indexPathForSelectedRow{
            let selectedPhoto = photos[indexPath.row]
            secondScene.currentPhoto = selectedPhoto
        }
        // Pass the selected object to the new view controller.
    }
    
    
 

}
