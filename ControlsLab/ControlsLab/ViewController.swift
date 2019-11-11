import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var suitChoice: UISegmentedControl!
   
    
    @IBOutlet weak var cardvalue: UIStepper!

    @IBOutlet weak var topSuitImage: UIImageView!
    
    @IBOutlet weak var bigSuitimage: UIImageView!
    
    
    @IBOutlet weak var bottomSuitImage: UIImageView!
    
    
 
    
    
    @IBOutlet var cardValueNumberArray: [UILabel]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func cardValueStepper(_ sender: UIStepper) {
        for i in cardValueNumberArray {
            let number = Int(sender.value)
            i.text = number.description
            if number > 10 {
                switch number {
                case 11:
                    i.text = "J"
                    
                case 12:
                    i.text = "Q"
//                    bigSuitimage.image = nil
                case 13:
                   i.text = "K"
//                     bigSuitimage.image = #imageLiteral(resourceName: "king")
                default:
                    i.text = "A"

                    
                    
                }
            }
            
        }
    }
        
        

        
        var currentSuitChoice: Int = 0 {
            didSet{
                switch suitChoice.selectedSegmentIndex {
                    
                case 0:
                   topSuitImage.image = #imageLiteral(resourceName: "diamonds")
                   bigSuitimage.image = #imageLiteral(resourceName: "diamonds")
                   bottomSuitImage.image = #imageLiteral(resourceName: "diamonds")
                case 1:
                  topSuitImage.image = #imageLiteral(resourceName: "club")
                  bigSuitimage.image = #imageLiteral(resourceName: "club")
                  bottomSuitImage.image = #imageLiteral(resourceName: "club")
                    case 2:
                        topSuitImage.image = #imageLiteral(resourceName: "heart image")
                        bigSuitimage.image = #imageLiteral(resourceName: "heart image")
                        bottomSuitImage.image = #imageLiteral(resourceName: "heart image")
                    
                default:
                topSuitImage.image = #imageLiteral(resourceName: "spade")
                bigSuitimage.image = #imageLiteral(resourceName: "spade")
                bottomSuitImage.image = #imageLiteral(resourceName: "spade")
                }
            }
        }
        
    @IBAction func suitController(_ sender: UISegmentedControl) {
        currentSuitChoice = sender.selectedSegmentIndex
    }
    
        
    }
    
    
    
 
    

