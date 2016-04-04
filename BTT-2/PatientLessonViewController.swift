import UIKit
import AVFoundation
import AVKit

class PatientLessonViewController: UIViewController {
    
    @IBOutlet weak var lbl_exerciseNum: UILabel!
    
    @IBOutlet weak var lbl_duration: UILabel!
    @IBOutlet weak var lbl_frequency: UILabel!
    @IBOutlet weak var lbl_instructions: UITextView!
    @IBOutlet weak var lbl_tips: UITextView!
    @IBOutlet weak var toggle_Sunday1: UISegmentedControl!
    @IBOutlet weak var toggle_Monday1: UISegmentedControl!
    @IBOutlet weak var toggle_Tuesday1: UISegmentedControl!
    @IBOutlet weak var toggle_Wednesday1: UISegmentedControl!
    @IBOutlet weak var toggle_Thursday1: UISegmentedControl!
    @IBOutlet weak var toggle_Friday1: UISegmentedControl!
    @IBOutlet weak var toggle_Saturday1: UISegmentedControl!
    @IBOutlet weak var toggle_Sunday2: UISegmentedControl!
    @IBOutlet weak var toggle_Monday2: UISegmentedControl!
    @IBOutlet weak var toggle_Tuesday2: UISegmentedControl!
    @IBOutlet weak var toggle_Wednesday2: UISegmentedControl!
    @IBOutlet weak var toggle_Thursday2: UISegmentedControl!
    @IBOutlet weak var toggle_Friday2: UISegmentedControl!
    @IBOutlet weak var toggle_Saturday2: UISegmentedControl!
    @IBOutlet weak var toggle_Sunday3: UISegmentedControl!
    @IBOutlet weak var toggle_Monday3: UISegmentedControl!
    @IBOutlet weak var toggle_Tuesday3: UISegmentedControl!
    @IBOutlet weak var toggle_Wednesday3: UISegmentedControl!
    @IBOutlet weak var toggle_Thursday3: UISegmentedControl!
    @IBOutlet weak var toggle_Friday3: UISegmentedControl!
    @IBOutlet weak var toggle_Saturday3: UISegmentedControl!
 
  @IBOutlet weak var btn_playVideo: UIButton!
    var exercise: Exercise!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_exerciseNum.text = "\(exercise.exerciseNumber) - \(exercise.title)"
        lbl_duration.text = "Duration: \(exercise.duration)"
        lbl_frequency.text = "Frequency: \(exercise.frequency)"
        lbl_instructions.text = exercise.instructions
        lbl_tips.text = exercise.tips
        lbl_instructions.layer.cornerRadius = 10
        lbl_tips.layer.cornerRadius = 10
        //    lbl_instructions.layer.borderColor = [UIColor blackColor].CGColor
        btn_playVideo.layer.cornerRadius = 10
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue,
        sender: AnyObject?) {
            let pathstr = exercise.videoURL
            let destination = segue.destinationViewController as! AVPlayerViewController
            // let url = NSURL(string:"http://www.bustthethrust.com/video/tonguetiptaps.mp4")
            guard let path = NSBundle.mainBundle().pathForResource(pathstr, ofType:"mp4") else {
                print("no video found")
                return
            }
            destination.player = AVPlayer(URL: NSURL(fileURLWithPath: path))
            destination.player!.play()
    }
    
    
    
    
}
