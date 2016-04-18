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
    var patient: Patient!
    var week: Week!
    override func viewDidLoad() {
        super.viewDidLoad()
        if (exercise.title == "Resting Position" || exercise.title == "The Spot"){
            lbl_exerciseNum.text = "\(exercise.title)"
        }
        else{
        lbl_exerciseNum.text = "\(exercise.exerciseNumber) - \(exercise.title)"
        }
        lbl_duration.text = "Duration: \(exercise.duration)"
        lbl_frequency.text = "Frequency: \(exercise.frequency)"
        lbl_instructions.text = exercise.instructions
        lbl_tips.text = exercise.tips
        lbl_instructions.layer.cornerRadius = 5
        lbl_tips.layer.cornerRadius = 5
        //    lbl_instructions.layer.borderColor = [UIColor blackColor].CGColor
        btn_playVideo.layer.cornerRadius = 7
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue,
        sender: AnyObject?) {
            if (segue.identifier != "backToTable")
            {
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
            else {
               let destination = segue.destinationViewController as! PatientLessonTableViewController
                destination.user = patient
            }
    }
    @IBAction func indexChanged(sender : UISegmentedControl) {
     if (sender.selectedSegmentIndex == 1)
     {
        switch week.weekNumber!{
           
            case "Week 1":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                        case toggle_Sunday1: patient.week1E1Complete![0][0] = true
                    case toggle_Sunday2: patient.week1E1Complete![0][1] = true
                    case toggle_Sunday3: patient.week1E1Complete![0][2] = true
                    case toggle_Monday1: patient.week1E1Complete![1][0] = true
                    case toggle_Monday2: patient.week1E1Complete![1][1] = true
                    case toggle_Monday3: patient.week1E1Complete![1][2] = true
                    case toggle_Tuesday1: patient.week1E1Complete![2][0] = true
                    case toggle_Tuesday2: patient.week1E1Complete![2][1] = true
                    case toggle_Tuesday3: patient.week1E1Complete![2][2] = true
                    case toggle_Wednesday1: patient.week1E1Complete![3][0] = true
                    case toggle_Wednesday2: patient.week1E1Complete![3][1] = true
                    case toggle_Wednesday3: patient.week1E1Complete![3][2] = true
                    case toggle_Thursday1: patient.week1E1Complete![4][0] = true
                    case toggle_Thursday2: patient.week1E1Complete![4][1] = true
                    case toggle_Thursday3: patient.week1E1Complete![4][2] = true
                    case toggle_Friday1: patient.week1E1Complete![5][0] = true
                    case toggle_Friday2: patient.week1E1Complete![5][1] = true
                    case toggle_Friday3: patient.week1E1Complete![5][2] = true
                    case toggle_Saturday1: patient.week1E1Complete![6][0] = true
                    case toggle_Saturday2: patient.week1E1Complete![6][1] = true
                    case toggle_Saturday3: patient.week1E1Complete![6][2] = true
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week1E2Complete![0][0] = true
                    case toggle_Sunday2: patient.week1E2Complete![0][1] = true
                    case toggle_Sunday3: patient.week1E2Complete![0][2] = true
                    case toggle_Monday1: patient.week1E2Complete![1][0] = true
                    case toggle_Monday2: patient.week1E2Complete![1][1] = true
                    case toggle_Monday3: patient.week1E2Complete![1][2] = true
                    case toggle_Tuesday1: patient.week1E2Complete![2][0] = true
                    case toggle_Tuesday2: patient.week1E2Complete![2][1] = true
                    case toggle_Tuesday3: patient.week1E2Complete![2][2] = true
                    case toggle_Wednesday1: patient.week1E2Complete![3][0] = true
                    case toggle_Wednesday2: patient.week1E2Complete![3][1] = true
                    case toggle_Wednesday3: patient.week1E2Complete![3][2] = true
                    case toggle_Thursday1: patient.week1E2Complete![4][0] = true
                    case toggle_Thursday2: patient.week1E2Complete![4][1] = true
                    case toggle_Thursday3: patient.week1E2Complete![4][2] = true
                    case toggle_Friday1: patient.week1E2Complete![5][0] = true
                    case toggle_Friday2: patient.week1E2Complete![5][1] = true
                    case toggle_Friday3: patient.week1E2Complete![5][2] = true
                    case toggle_Saturday1: patient.week1E2Complete![6][0] = true
                    case toggle_Saturday2: patient.week1E2Complete![6][1] = true
                    case toggle_Saturday3: patient.week1E2Complete![6][2] = true
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week1E3Complete![0][0] = true
                    case toggle_Sunday2: patient.week1E3Complete![0][1] = true
                    case toggle_Sunday3: patient.week1E3Complete![0][2] = true
                    case toggle_Monday1: patient.week1E3Complete![1][0] = true
                    case toggle_Monday2: patient.week1E3Complete![1][1] = true
                    case toggle_Monday3: patient.week1E3Complete![1][2] = true
                    case toggle_Tuesday1: patient.week1E3Complete![2][0] = true
                    case toggle_Tuesday2: patient.week1E3Complete![2][1] = true
                    case toggle_Tuesday3: patient.week1E3Complete![2][2] = true
                    case toggle_Wednesday1: patient.week1E3Complete![3][0] = true
                    case toggle_Wednesday2: patient.week1E3Complete![3][1] = true
                    case toggle_Wednesday3: patient.week1E3Complete![3][2] = true
                    case toggle_Thursday1: patient.week1E3Complete![4][0] = true
                    case toggle_Thursday2: patient.week1E3Complete![4][1] = true
                    case toggle_Thursday3: patient.week1E3Complete![4][2] = true
                    case toggle_Friday1: patient.week1E3Complete![5][0] = true
                    case toggle_Friday2: patient.week1E3Complete![5][1] = true
                    case toggle_Friday3: patient.week1E3Complete![5][2] = true
                    case toggle_Saturday1: patient.week1E3Complete![6][0] = true
                    case toggle_Saturday2: patient.week1E3Complete![6][1] = true
                    case toggle_Saturday3: patient.week1E3Complete![6][2] = true
                    default: break
                        
                    }
                    
            }
            
        case "Week 2":
            if (exercise.exerciseNumber == "Exercise 1"){
                switch sender{
                case toggle_Sunday1: patient.week2E1Complete![0][0] = true
                case toggle_Sunday2: patient.week2E1Complete![0][1] = true
                case toggle_Sunday3: patient.week2E1Complete![0][2] = true
                case toggle_Monday1: patient.week2E1Complete![1][0] = true
                case toggle_Monday2: patient.week2E1Complete![1][1] = true
                case toggle_Monday3: patient.week2E1Complete![1][2] = true
                case toggle_Tuesday1: patient.week2E1Complete![2][0] = true
                case toggle_Tuesday2: patient.week2E1Complete![2][1] = true
                case toggle_Tuesday3: patient.week2E1Complete![2][2] = true
                case toggle_Wednesday1: patient.week2E1Complete![3][0] = true
                case toggle_Wednesday2: patient.week2E1Complete![3][1] = true
                case toggle_Wednesday3: patient.week2E1Complete![3][2] = true
                case toggle_Thursday1: patient.week2E1Complete![4][0] = true
                case toggle_Thursday2: patient.week2E1Complete![4][1] = true
                case toggle_Thursday3: patient.week2E1Complete![4][2] = true
                case toggle_Friday1: patient.week2E1Complete![5][0] = true
                case toggle_Friday2: patient.week2E1Complete![5][1] = true
                case toggle_Friday3: patient.week2E1Complete![5][2] = true
                case toggle_Saturday1: patient.week2E1Complete![6][0] = true
                case toggle_Saturday2: patient.week2E1Complete![6][1] = true
                case toggle_Saturday3: patient.week2E1Complete![6][2] = true
                default: break
                    
                }
            }
            if (exercise.exerciseNumber == "Exercise 2"){
                switch sender{
                    
                case toggle_Sunday1: patient.week2E2Complete![0][0] = true
                case toggle_Sunday2: patient.week2E2Complete![0][1] = true
                case toggle_Sunday3: patient.week2E2Complete![0][2] = true
                case toggle_Monday1: patient.week2E2Complete![1][0] = true
                case toggle_Monday2: patient.week2E2Complete![1][1] = true
                case toggle_Monday3: patient.week2E2Complete![1][2] = true
                case toggle_Tuesday1: patient.week2E2Complete![2][0] = true
                case toggle_Tuesday2: patient.week2E2Complete![2][1] = true
                case toggle_Tuesday3: patient.week2E2Complete![2][2] = true
                case toggle_Wednesday1: patient.week2E2Complete![3][0] = true
                case toggle_Wednesday2: patient.week2E2Complete![3][1] = true
                case toggle_Wednesday3: patient.week2E2Complete![3][2] = true
                case toggle_Thursday1: patient.week2E2Complete![4][0] = true
                case toggle_Thursday2: patient.week2E2Complete![4][1] = true
                case toggle_Thursday3: patient.week2E2Complete![4][2] = true
                case toggle_Friday1: patient.week2E2Complete![5][0] = true
                case toggle_Friday2: patient.week2E2Complete![5][1] = true
                case toggle_Friday3: patient.week2E2Complete![5][2] = true
                case toggle_Saturday1: patient.week2E2Complete![6][0] = true
                case toggle_Saturday2: patient.week2E2Complete![6][1] = true
                case toggle_Saturday3: patient.week2E2Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 3"){
                switch sender{
                case toggle_Sunday1: patient.week2E3Complete![0][0] = true
                case toggle_Sunday2: patient.week2E3Complete![0][1] = true
                case toggle_Sunday3: patient.week2E3Complete![0][2] = true
                case toggle_Monday1: patient.week2E3Complete![1][0] = true
                case toggle_Monday2: patient.week2E3Complete![1][1] = true
                case toggle_Monday3: patient.week2E3Complete![1][2] = true
                case toggle_Tuesday1: patient.week2E3Complete![2][0] = true
                case toggle_Tuesday2: patient.week2E3Complete![2][1] = true
                case toggle_Tuesday3: patient.week2E3Complete![2][2] = true
                case toggle_Wednesday1: patient.week2E3Complete![3][0] = true
                case toggle_Wednesday2: patient.week2E3Complete![3][1] = true
                case toggle_Wednesday3: patient.week2E3Complete![3][2] = true
                case toggle_Thursday1: patient.week2E3Complete![4][0] = true
                case toggle_Thursday2: patient.week2E3Complete![4][1] = true
                case toggle_Thursday3: patient.week2E3Complete![4][2] = true
                case toggle_Friday1: patient.week2E3Complete![5][0] = true
                case toggle_Friday2: patient.week2E3Complete![5][1] = true
                case toggle_Friday3: patient.week2E3Complete![5][2] = true
                case toggle_Saturday1: patient.week2E3Complete![6][0] = true
                case toggle_Saturday2: patient.week2E3Complete![6][1] = true
                case toggle_Saturday3: patient.week2E3Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 4"){
                switch sender{
                case toggle_Sunday1: patient.week2E4Complete![0][0] = true
                case toggle_Sunday2: patient.week2E4Complete![0][1] = true
                case toggle_Sunday3: patient.week2E4Complete![0][2] = true
                case toggle_Monday1: patient.week2E4Complete![1][0] = true
                case toggle_Monday2: patient.week2E4Complete![1][1] = true
                case toggle_Monday3: patient.week2E4Complete![1][2] = true
                case toggle_Tuesday1: patient.week2E4Complete![2][0] = true
                case toggle_Tuesday2: patient.week2E4Complete![2][1] = true
                case toggle_Tuesday3: patient.week2E4Complete![2][2] = true
                case toggle_Wednesday1: patient.week2E4Complete![3][0] = true
                case toggle_Wednesday2: patient.week2E4Complete![3][1] = true
                case toggle_Wednesday3: patient.week2E4Complete![3][2] = true
                case toggle_Thursday1: patient.week2E4Complete![4][0] = true
                case toggle_Thursday2: patient.week2E4Complete![4][1] = true
                case toggle_Thursday3: patient.week2E4Complete![4][2] = true
                case toggle_Friday1: patient.week2E4Complete![5][0] = true
                case toggle_Friday2: patient.week2E4Complete![5][1] = true
                case toggle_Friday3: patient.week2E4Complete![5][2] = true
                case toggle_Saturday1: patient.week2E4Complete![6][0] = true
                case toggle_Saturday2: patient.week2E4Complete![6][1] = true
                case toggle_Saturday3: patient.week2E4Complete![6][2] = true
                default: break
                }
            }
            
        case "Week 3":
            if (exercise.exerciseNumber == "Exercise 1"){
                switch sender{
                case toggle_Sunday1: patient.week3E1Complete![0][0] = true
                case toggle_Sunday2: patient.week3E1Complete![0][1] = true
                case toggle_Sunday3: patient.week3E1Complete![0][2] = true
                case toggle_Monday1: patient.week3E1Complete![1][0] = true
                case toggle_Monday2: patient.week3E1Complete![1][1] = true
                case toggle_Monday3: patient.week3E1Complete![1][2] = true
                case toggle_Tuesday1: patient.week3E1Complete![2][0] = true
                case toggle_Tuesday2: patient.week3E1Complete![2][1] = true
                case toggle_Tuesday3: patient.week3E1Complete![2][2] = true
                case toggle_Wednesday1: patient.week3E1Complete![3][0] = true
                case toggle_Wednesday2: patient.week3E1Complete![3][1] = true
                case toggle_Wednesday3: patient.week3E1Complete![3][2] = true
                case toggle_Thursday1: patient.week3E1Complete![4][0] = true
                case toggle_Thursday2: patient.week3E1Complete![4][1] = true
                case toggle_Thursday3: patient.week3E1Complete![4][2] = true
                case toggle_Friday1: patient.week3E1Complete![5][0] = true
                case toggle_Friday2: patient.week3E1Complete![5][1] = true
                case toggle_Friday3: patient.week3E1Complete![5][2] = true
                case toggle_Saturday1: patient.week3E1Complete![6][0] = true
                case toggle_Saturday2: patient.week3E1Complete![6][1] = true
                case toggle_Saturday3: patient.week3E1Complete![6][2] = true
                default: break
                    
                }
            }
            if (exercise.exerciseNumber == "Exercise 2"){
                switch sender{
                    
                case toggle_Sunday1: patient.week3E2Complete![0][0] = true
                case toggle_Sunday2: patient.week3E2Complete![0][1] = true
                case toggle_Sunday3: patient.week3E2Complete![0][2] = true
                case toggle_Monday1: patient.week3E2Complete![1][0] = true
                case toggle_Monday2: patient.week3E2Complete![1][1] = true
                case toggle_Monday3: patient.week3E2Complete![1][2] = true
                case toggle_Tuesday1: patient.week3E2Complete![2][0] = true
                case toggle_Tuesday2: patient.week3E2Complete![2][1] = true
                case toggle_Tuesday3: patient.week3E2Complete![2][2] = true
                case toggle_Wednesday1: patient.week3E2Complete![3][0] = true
                case toggle_Wednesday2: patient.week3E2Complete![3][1] = true
                case toggle_Wednesday3: patient.week3E2Complete![3][2] = true
                case toggle_Thursday1: patient.week3E2Complete![4][0] = true
                case toggle_Thursday2: patient.week3E2Complete![4][1] = true
                case toggle_Thursday3: patient.week3E2Complete![4][2] = true
                case toggle_Friday1: patient.week3E2Complete![5][0] = true
                case toggle_Friday2: patient.week3E2Complete![5][1] = true
                case toggle_Friday3: patient.week3E2Complete![5][2] = true
                case toggle_Saturday1: patient.week3E2Complete![6][0] = true
                case toggle_Saturday2: patient.week3E2Complete![6][1] = true
                case toggle_Saturday3: patient.week3E2Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 3"){
                switch sender{
                case toggle_Sunday1: patient.week3E3Complete![0][0] = true
                case toggle_Sunday2: patient.week3E3Complete![0][1] = true
                case toggle_Sunday3: patient.week3E3Complete![0][2] = true
                case toggle_Monday1: patient.week3E3Complete![1][0] = true
                case toggle_Monday2: patient.week3E3Complete![1][1] = true
                case toggle_Monday3: patient.week3E3Complete![1][2] = true
                case toggle_Tuesday1: patient.week3E3Complete![2][0] = true
                case toggle_Tuesday2: patient.week3E3Complete![2][1] = true
                case toggle_Tuesday3: patient.week3E3Complete![2][2] = true
                case toggle_Wednesday1: patient.week3E3Complete![3][0] = true
                case toggle_Wednesday2: patient.week3E3Complete![3][1] = true
                case toggle_Wednesday3: patient.week3E3Complete![3][2] = true
                case toggle_Thursday1: patient.week3E3Complete![4][0] = true
                case toggle_Thursday2: patient.week3E3Complete![4][1] = true
                case toggle_Thursday3: patient.week3E3Complete![4][2] = true
                case toggle_Friday1: patient.week3E3Complete![5][0] = true
                case toggle_Friday2: patient.week3E3Complete![5][1] = true
                case toggle_Friday3: patient.week3E3Complete![5][2] = true
                case toggle_Saturday1: patient.week3E3Complete![6][0] = true
                case toggle_Saturday2: patient.week3E3Complete![6][1] = true
                case toggle_Saturday3: patient.week3E3Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 4"){
                switch sender{
                case toggle_Sunday1: patient.week3E4Complete![0][0] = true
                case toggle_Sunday2: patient.week3E4Complete![0][1] = true
                case toggle_Sunday3: patient.week3E4Complete![0][2] = true
                case toggle_Monday1: patient.week3E4Complete![1][0] = true
                case toggle_Monday2: patient.week3E4Complete![1][1] = true
                case toggle_Monday3: patient.week3E4Complete![1][2] = true
                case toggle_Tuesday1: patient.week3E4Complete![2][0] = true
                case toggle_Tuesday2: patient.week3E4Complete![2][1] = true
                case toggle_Tuesday3: patient.week3E4Complete![2][2] = true
                case toggle_Wednesday1: patient.week3E4Complete![3][0] = true
                case toggle_Wednesday2: patient.week3E4Complete![3][1] = true
                case toggle_Wednesday3: patient.week3E4Complete![3][2] = true
                case toggle_Thursday1: patient.week3E4Complete![4][0] = true
                case toggle_Thursday2: patient.week3E4Complete![4][1] = true
                case toggle_Thursday3: patient.week3E4Complete![4][2] = true
                case toggle_Friday1: patient.week3E4Complete![5][0] = true
                case toggle_Friday2: patient.week3E4Complete![5][1] = true
                case toggle_Friday3: patient.week3E4Complete![5][2] = true
                case toggle_Saturday1: patient.week3E4Complete![6][0] = true
                case toggle_Saturday2: patient.week3E4Complete![6][1] = true
                case toggle_Saturday3: patient.week3E4Complete![6][2] = true
                default: break
                }
            }
        case "Week 4":
            if (exercise.exerciseNumber == "Exercise 1"){
                switch sender{
                case toggle_Sunday1: patient.week4E1Complete![0][0] = true
                case toggle_Sunday2: patient.week4E1Complete![0][1] = true
                case toggle_Sunday3: patient.week4E1Complete![0][2] = true
                case toggle_Monday1: patient.week4E1Complete![1][0] = true
                case toggle_Monday2: patient.week4E1Complete![1][1] = true
                case toggle_Monday3: patient.week4E1Complete![1][2] = true
                case toggle_Tuesday1: patient.week4E1Complete![2][0] = true
                case toggle_Tuesday2: patient.week4E1Complete![2][1] = true
                case toggle_Tuesday3: patient.week4E1Complete![2][2] = true
                case toggle_Wednesday1: patient.week4E1Complete![3][0] = true
                case toggle_Wednesday2: patient.week4E1Complete![3][1] = true
                case toggle_Wednesday3: patient.week4E1Complete![3][2] = true
                case toggle_Thursday1: patient.week4E1Complete![4][0] = true
                case toggle_Thursday2: patient.week4E1Complete![4][1] = true
                case toggle_Thursday3: patient.week4E1Complete![4][2] = true
                case toggle_Friday1: patient.week4E1Complete![5][0] = true
                case toggle_Friday2: patient.week4E1Complete![5][1] = true
                case toggle_Friday3: patient.week4E1Complete![5][2] = true
                case toggle_Saturday1: patient.week4E1Complete![6][0] = true
                case toggle_Saturday2: patient.week4E1Complete![6][1] = true
                case toggle_Saturday3: patient.week4E1Complete![6][2] = true
                default: break
                    
                }
            }
            if (exercise.exerciseNumber == "Exercise 2"){
                switch sender{
                    
                case toggle_Sunday1: patient.week4E2Complete![0][0] = true
                case toggle_Sunday2: patient.week4E2Complete![0][1] = true
                case toggle_Sunday3: patient.week4E2Complete![0][2] = true
                case toggle_Monday1: patient.week4E2Complete![1][0] = true
                case toggle_Monday2: patient.week4E2Complete![1][1] = true
                case toggle_Monday3: patient.week4E2Complete![1][2] = true
                case toggle_Tuesday1: patient.week4E2Complete![2][0] = true
                case toggle_Tuesday2: patient.week4E2Complete![2][1] = true
                case toggle_Tuesday3: patient.week4E2Complete![2][2] = true
                case toggle_Wednesday1: patient.week4E2Complete![3][0] = true
                case toggle_Wednesday2: patient.week4E2Complete![3][1] = true
                case toggle_Wednesday3: patient.week4E2Complete![3][2] = true
                case toggle_Thursday1: patient.week4E2Complete![4][0] = true
                case toggle_Thursday2: patient.week4E2Complete![4][1] = true
                case toggle_Thursday3: patient.week4E2Complete![4][2] = true
                case toggle_Friday1: patient.week4E2Complete![5][0] = true
                case toggle_Friday2: patient.week4E2Complete![5][1] = true
                case toggle_Friday3: patient.week4E2Complete![5][2] = true
                case toggle_Saturday1: patient.week4E2Complete![6][0] = true
                case toggle_Saturday2: patient.week4E2Complete![6][1] = true
                case toggle_Saturday3: patient.week4E2Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 3"){
                switch sender{
                case toggle_Sunday1: patient.week4E3Complete![0][0] = true
                case toggle_Sunday2: patient.week4E3Complete![0][1] = true
                case toggle_Sunday3: patient.week4E3Complete![0][2] = true
                case toggle_Monday1: patient.week4E3Complete![1][0] = true
                case toggle_Monday2: patient.week4E3Complete![1][1] = true
                case toggle_Monday3: patient.week4E3Complete![1][2] = true
                case toggle_Tuesday1: patient.week4E3Complete![2][0] = true
                case toggle_Tuesday2: patient.week4E3Complete![2][1] = true
                case toggle_Tuesday3: patient.week4E3Complete![2][2] = true
                case toggle_Wednesday1: patient.week4E3Complete![3][0] = true
                case toggle_Wednesday2: patient.week4E3Complete![3][1] = true
                case toggle_Wednesday3: patient.week4E3Complete![3][2] = true
                case toggle_Thursday1: patient.week4E3Complete![4][0] = true
                case toggle_Thursday2: patient.week4E3Complete![4][1] = true
                case toggle_Thursday3: patient.week4E3Complete![4][2] = true
                case toggle_Friday1: patient.week4E3Complete![5][0] = true
                case toggle_Friday2: patient.week4E3Complete![5][1] = true
                case toggle_Friday3: patient.week4E3Complete![5][2] = true
                case toggle_Saturday1: patient.week4E3Complete![6][0] = true
                case toggle_Saturday2: patient.week4E3Complete![6][1] = true
                case toggle_Saturday3: patient.week4E3Complete![6][2] = true
                default: break
                }
            }
            
        case "Week 5":
            if (exercise.exerciseNumber == "Exercise 1"){
                switch sender{
                case toggle_Sunday1: patient.week5E1Complete![0][0] = true
                case toggle_Sunday2: patient.week5E1Complete![0][1] = true
                case toggle_Sunday3: patient.week5E1Complete![0][2] = true
                case toggle_Monday1: patient.week5E1Complete![1][0] = true
                case toggle_Monday2: patient.week5E1Complete![1][1] = true
                case toggle_Monday3: patient.week5E1Complete![1][2] = true
                case toggle_Tuesday1: patient.week5E1Complete![2][0] = true
                case toggle_Tuesday2: patient.week5E1Complete![2][1] = true
                case toggle_Tuesday3: patient.week5E1Complete![2][2] = true
                case toggle_Wednesday1: patient.week5E1Complete![3][0] = true
                case toggle_Wednesday2: patient.week5E1Complete![3][1] = true
                case toggle_Wednesday3: patient.week5E1Complete![3][2] = true
                case toggle_Thursday1: patient.week5E1Complete![4][0] = true
                case toggle_Thursday2: patient.week5E1Complete![4][1] = true
                case toggle_Thursday3: patient.week5E1Complete![4][2] = true
                case toggle_Friday1: patient.week5E1Complete![5][0] = true
                case toggle_Friday2: patient.week5E1Complete![5][1] = true
                case toggle_Friday3: patient.week5E1Complete![5][2] = true
                case toggle_Saturday1: patient.week5E1Complete![6][0] = true
                case toggle_Saturday2: patient.week5E1Complete![6][1] = true
                case toggle_Saturday3: patient.week5E1Complete![6][2] = true
                default: break
                    
                }
            }
            if (exercise.exerciseNumber == "Exercise 2"){
                switch sender{
                    
                case toggle_Sunday1: patient.week5E2Complete![0][0] = true
                case toggle_Sunday2: patient.week5E2Complete![0][1] = true
                case toggle_Sunday3: patient.week5E2Complete![0][2] = true
                case toggle_Monday1: patient.week5E2Complete![1][0] = true
                case toggle_Monday2: patient.week5E2Complete![1][1] = true
                case toggle_Monday3: patient.week5E2Complete![1][2] = true
                case toggle_Tuesday1: patient.week5E2Complete![2][0] = true
                case toggle_Tuesday2: patient.week5E2Complete![2][1] = true
                case toggle_Tuesday3: patient.week5E2Complete![2][2] = true
                case toggle_Wednesday1: patient.week5E2Complete![3][0] = true
                case toggle_Wednesday2: patient.week5E2Complete![3][1] = true
                case toggle_Wednesday3: patient.week5E2Complete![3][2] = true
                case toggle_Thursday1: patient.week5E2Complete![4][0] = true
                case toggle_Thursday2: patient.week5E2Complete![4][1] = true
                case toggle_Thursday3: patient.week5E2Complete![4][2] = true
                case toggle_Friday1: patient.week5E2Complete![5][0] = true
                case toggle_Friday2: patient.week5E2Complete![5][1] = true
                case toggle_Friday3: patient.week5E2Complete![5][2] = true
                case toggle_Saturday1: patient.week5E2Complete![6][0] = true
                case toggle_Saturday2: patient.week5E2Complete![6][1] = true
                case toggle_Saturday3: patient.week5E2Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 3"){
                switch sender{
                case toggle_Sunday1: patient.week5E3Complete![0][0] = true
                case toggle_Sunday2: patient.week5E3Complete![0][1] = true
                case toggle_Sunday3: patient.week5E3Complete![0][2] = true
                case toggle_Monday1: patient.week5E3Complete![1][0] = true
                case toggle_Monday2: patient.week5E3Complete![1][1] = true
                case toggle_Monday3: patient.week5E3Complete![1][2] = true
                case toggle_Tuesday1: patient.week5E3Complete![2][0] = true
                case toggle_Tuesday2: patient.week5E3Complete![2][1] = true
                case toggle_Tuesday3: patient.week5E3Complete![2][2] = true
                case toggle_Wednesday1: patient.week5E3Complete![3][0] = true
                case toggle_Wednesday2: patient.week5E3Complete![3][1] = true
                case toggle_Wednesday3: patient.week5E3Complete![3][2] = true
                case toggle_Thursday1: patient.week5E3Complete![4][0] = true
                case toggle_Thursday2: patient.week5E3Complete![4][1] = true
                case toggle_Thursday3: patient.week5E3Complete![4][2] = true
                case toggle_Friday1: patient.week5E3Complete![5][0] = true
                case toggle_Friday2: patient.week5E3Complete![5][1] = true
                case toggle_Friday3: patient.week5E3Complete![5][2] = true
                case toggle_Saturday1: patient.week5E3Complete![6][0] = true
                case toggle_Saturday2: patient.week5E3Complete![6][1] = true
                case toggle_Saturday3: patient.week5E3Complete![6][2] = true
                default: break
                }
            }
        case "Week 6":
            if (exercise.exerciseNumber == "Exercise 1"){
                switch sender{
                case toggle_Sunday1: patient.week6E1Complete![0][0] = true
                case toggle_Sunday2: patient.week6E1Complete![0][1] = true
                case toggle_Sunday3: patient.week6E1Complete![0][2] = true
                case toggle_Monday1: patient.week6E1Complete![1][0] = true
                case toggle_Monday2: patient.week6E1Complete![1][1] = true
                case toggle_Monday3: patient.week6E1Complete![1][2] = true
                case toggle_Tuesday1: patient.week6E1Complete![2][0] = true
                case toggle_Tuesday2: patient.week6E1Complete![2][1] = true
                case toggle_Tuesday3: patient.week6E1Complete![2][2] = true
                case toggle_Wednesday1: patient.week6E1Complete![3][0] = true
                case toggle_Wednesday2: patient.week6E1Complete![3][1] = true
                case toggle_Wednesday3: patient.week6E1Complete![3][2] = true
                case toggle_Thursday1: patient.week6E1Complete![4][0] = true
                case toggle_Thursday2: patient.week6E1Complete![4][1] = true
                case toggle_Thursday3: patient.week6E1Complete![4][2] = true
                case toggle_Friday1: patient.week6E1Complete![5][0] = true
                case toggle_Friday2: patient.week6E1Complete![5][1] = true
                case toggle_Friday3: patient.week6E1Complete![5][2] = true
                case toggle_Saturday1: patient.week6E1Complete![6][0] = true
                case toggle_Saturday2: patient.week6E1Complete![6][1] = true
                case toggle_Saturday3: patient.week6E1Complete![6][2] = true
                default: break
                    
                }
            }
            if (exercise.exerciseNumber == "Exercise 2"){
                switch sender{
                    
                case toggle_Sunday1: patient.week6E2Complete![0][0] = true
                case toggle_Sunday2: patient.week6E2Complete![0][1] = true
                case toggle_Sunday3: patient.week6E2Complete![0][2] = true
                case toggle_Monday1: patient.week6E2Complete![1][0] = true
                case toggle_Monday2: patient.week6E2Complete![1][1] = true
                case toggle_Monday3: patient.week6E2Complete![1][2] = true
                case toggle_Tuesday1: patient.week6E2Complete![2][0] = true
                case toggle_Tuesday2: patient.week6E2Complete![2][1] = true
                case toggle_Tuesday3: patient.week6E2Complete![2][2] = true
                case toggle_Wednesday1: patient.week6E2Complete![3][0] = true
                case toggle_Wednesday2: patient.week6E2Complete![3][1] = true
                case toggle_Wednesday3: patient.week6E2Complete![3][2] = true
                case toggle_Thursday1: patient.week6E2Complete![4][0] = true
                case toggle_Thursday2: patient.week6E2Complete![4][1] = true
                case toggle_Thursday3: patient.week6E2Complete![4][2] = true
                case toggle_Friday1: patient.week6E2Complete![5][0] = true
                case toggle_Friday2: patient.week6E2Complete![5][1] = true
                case toggle_Friday3: patient.week6E2Complete![5][2] = true
                case toggle_Saturday1: patient.week6E2Complete![6][0] = true
                case toggle_Saturday2: patient.week6E2Complete![6][1] = true
                case toggle_Saturday3: patient.week6E2Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 3"){
                switch sender{
                case toggle_Sunday1: patient.week6E3Complete![0][0] = true
                case toggle_Sunday2: patient.week6E3Complete![0][1] = true
                case toggle_Sunday3: patient.week6E3Complete![0][2] = true
                case toggle_Monday1: patient.week6E3Complete![1][0] = true
                case toggle_Monday2: patient.week6E3Complete![1][1] = true
                case toggle_Monday3: patient.week6E3Complete![1][2] = true
                case toggle_Tuesday1: patient.week6E3Complete![2][0] = true
                case toggle_Tuesday2: patient.week6E3Complete![2][1] = true
                case toggle_Tuesday3: patient.week6E3Complete![2][2] = true
                case toggle_Wednesday1: patient.week6E3Complete![3][0] = true
                case toggle_Wednesday2: patient.week6E3Complete![3][1] = true
                case toggle_Wednesday3: patient.week6E3Complete![3][2] = true
                case toggle_Thursday1: patient.week6E3Complete![4][0] = true
                case toggle_Thursday2: patient.week6E3Complete![4][1] = true
                case toggle_Thursday3: patient.week6E3Complete![4][2] = true
                case toggle_Friday1: patient.week6E3Complete![5][0] = true
                case toggle_Friday2: patient.week6E3Complete![5][1] = true
                case toggle_Friday3: patient.week6E3Complete![5][2] = true
                case toggle_Saturday1: patient.week6E3Complete![6][0] = true
                case toggle_Saturday2: patient.week6E3Complete![6][1] = true
                case toggle_Saturday3: patient.week6E3Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 4"){
                switch sender{
                case toggle_Sunday1: patient.week6E4Complete![0][0] = true
                case toggle_Sunday2: patient.week6E4Complete![0][1] = true
                case toggle_Sunday3: patient.week6E4Complete![0][2] = true
                case toggle_Monday1: patient.week6E4Complete![1][0] = true
                case toggle_Monday2: patient.week6E4Complete![1][1] = true
                case toggle_Monday3: patient.week6E4Complete![1][2] = true
                case toggle_Tuesday1: patient.week6E4Complete![2][0] = true
                case toggle_Tuesday2: patient.week6E4Complete![2][1] = true
                case toggle_Tuesday3: patient.week6E4Complete![2][2] = true
                case toggle_Wednesday1: patient.week6E4Complete![3][0] = true
                case toggle_Wednesday2: patient.week6E4Complete![3][1] = true
                case toggle_Wednesday3: patient.week6E4Complete![3][2] = true
                case toggle_Thursday1: patient.week6E4Complete![4][0] = true
                case toggle_Thursday2: patient.week6E4Complete![4][1] = true
                case toggle_Thursday3: patient.week6E4Complete![4][2] = true
                case toggle_Friday1: patient.week6E4Complete![5][0] = true
                case toggle_Friday2: patient.week6E4Complete![5][1] = true
                case toggle_Friday3: patient.week6E4Complete![5][2] = true
                case toggle_Saturday1: patient.week6E4Complete![6][0] = true
                case toggle_Saturday2: patient.week6E4Complete![6][1] = true
                case toggle_Saturday3: patient.week6E4Complete![6][2] = true
                default: break
                }
            }
        case "Week 7":
            if (exercise.exerciseNumber == "Exercise 1"){
                switch sender{
                case toggle_Sunday1: patient.week7E1Complete![0][0] = true
                case toggle_Sunday2: patient.week7E1Complete![0][1] = true
                case toggle_Sunday3: patient.week7E1Complete![0][2] = true
                case toggle_Monday1: patient.week7E1Complete![1][0] = true
                case toggle_Monday2: patient.week7E1Complete![1][1] = true
                case toggle_Monday3: patient.week7E1Complete![1][2] = true
                case toggle_Tuesday1: patient.week7E1Complete![2][0] = true
                case toggle_Tuesday2: patient.week7E1Complete![2][1] = true
                case toggle_Tuesday3: patient.week7E1Complete![2][2] = true
                case toggle_Wednesday1: patient.week7E1Complete![3][0] = true
                case toggle_Wednesday2: patient.week7E1Complete![3][1] = true
                case toggle_Wednesday3: patient.week7E1Complete![3][2] = true
                case toggle_Thursday1: patient.week7E1Complete![4][0] = true
                case toggle_Thursday2: patient.week7E1Complete![4][1] = true
                case toggle_Thursday3: patient.week7E1Complete![4][2] = true
                case toggle_Friday1: patient.week7E1Complete![5][0] = true
                case toggle_Friday2: patient.week7E1Complete![5][1] = true
                case toggle_Friday3: patient.week7E1Complete![5][2] = true
                case toggle_Saturday1: patient.week7E1Complete![6][0] = true
                case toggle_Saturday2: patient.week7E1Complete![6][1] = true
                case toggle_Saturday3: patient.week7E1Complete![6][2] = true
                default: break
                    
                }
            }
            if (exercise.exerciseNumber == "Exercise 2"){
                switch sender{
                    
                case toggle_Sunday1: patient.week7E2Complete![0][0] = true
                case toggle_Sunday2: patient.week7E2Complete![0][1] = true
                case toggle_Sunday3: patient.week7E2Complete![0][2] = true
                case toggle_Monday1: patient.week7E2Complete![1][0] = true
                case toggle_Monday2: patient.week7E2Complete![1][1] = true
                case toggle_Monday3: patient.week7E2Complete![1][2] = true
                case toggle_Tuesday1: patient.week7E2Complete![2][0] = true
                case toggle_Tuesday2: patient.week7E2Complete![2][1] = true
                case toggle_Tuesday3: patient.week7E2Complete![2][2] = true
                case toggle_Wednesday1: patient.week7E2Complete![3][0] = true
                case toggle_Wednesday2: patient.week7E2Complete![3][1] = true
                case toggle_Wednesday3: patient.week7E2Complete![3][2] = true
                case toggle_Thursday1: patient.week7E2Complete![4][0] = true
                case toggle_Thursday2: patient.week7E2Complete![4][1] = true
                case toggle_Thursday3: patient.week7E2Complete![4][2] = true
                case toggle_Friday1: patient.week7E2Complete![5][0] = true
                case toggle_Friday2: patient.week7E2Complete![5][1] = true
                case toggle_Friday3: patient.week7E2Complete![5][2] = true
                case toggle_Saturday1: patient.week7E2Complete![6][0] = true
                case toggle_Saturday2: patient.week7E2Complete![6][1] = true
                case toggle_Saturday3: patient.week7E2Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 3"){
                switch sender{
                case toggle_Sunday1: patient.week7E3Complete![0][0] = true
                case toggle_Sunday2: patient.week7E3Complete![0][1] = true
                case toggle_Sunday3: patient.week7E3Complete![0][2] = true
                case toggle_Monday1: patient.week7E3Complete![1][0] = true
                case toggle_Monday2: patient.week7E3Complete![1][1] = true
                case toggle_Monday3: patient.week7E3Complete![1][2] = true
                case toggle_Tuesday1: patient.week7E3Complete![2][0] = true
                case toggle_Tuesday2: patient.week7E3Complete![2][1] = true
                case toggle_Tuesday3: patient.week7E3Complete![2][2] = true
                case toggle_Wednesday1: patient.week7E3Complete![3][0] = true
                case toggle_Wednesday2: patient.week7E3Complete![3][1] = true
                case toggle_Wednesday3: patient.week7E3Complete![3][2] = true
                case toggle_Thursday1: patient.week7E3Complete![4][0] = true
                case toggle_Thursday2: patient.week7E3Complete![4][1] = true
                case toggle_Thursday3: patient.week7E3Complete![4][2] = true
                case toggle_Friday1: patient.week7E3Complete![5][0] = true
                case toggle_Friday2: patient.week7E3Complete![5][1] = true
                case toggle_Friday3: patient.week7E3Complete![5][2] = true
                case toggle_Saturday1: patient.week7E3Complete![6][0] = true
                case toggle_Saturday2: patient.week7E3Complete![6][1] = true
                case toggle_Saturday3: patient.week7E3Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 4"){
                switch sender{
                case toggle_Sunday1: patient.week7E4Complete![0][0] = true
                case toggle_Sunday2: patient.week7E4Complete![0][1] = true
                case toggle_Sunday3: patient.week7E4Complete![0][2] = true
                case toggle_Monday1: patient.week7E4Complete![1][0] = true
                case toggle_Monday2: patient.week7E4Complete![1][1] = true
                case toggle_Monday3: patient.week7E4Complete![1][2] = true
                case toggle_Tuesday1: patient.week7E4Complete![2][0] = true
                case toggle_Tuesday2: patient.week7E4Complete![2][1] = true
                case toggle_Tuesday3: patient.week7E4Complete![2][2] = true
                case toggle_Wednesday1: patient.week7E4Complete![3][0] = true
                case toggle_Wednesday2: patient.week7E4Complete![3][1] = true
                case toggle_Wednesday3: patient.week7E4Complete![3][2] = true
                case toggle_Thursday1: patient.week7E4Complete![4][0] = true
                case toggle_Thursday2: patient.week7E4Complete![4][1] = true
                case toggle_Thursday3: patient.week7E4Complete![4][2] = true
                case toggle_Friday1: patient.week7E4Complete![5][0] = true
                case toggle_Friday2: patient.week7E4Complete![5][1] = true
                case toggle_Friday3: patient.week7E4Complete![5][2] = true
                case toggle_Saturday1: patient.week7E4Complete![6][0] = true
                case toggle_Saturday2: patient.week7E4Complete![6][1] = true
                case toggle_Saturday3: patient.week7E4Complete![6][2] = true
                default: break
                }
            }
            
            if (exercise.exerciseNumber == "Exercise 5"){
                switch sender{
                case toggle_Sunday1: patient.week7E5Complete![0][0] = true
                case toggle_Sunday2: patient.week7E5Complete![0][1] = true
                case toggle_Sunday3: patient.week7E5Complete![0][2] = true
                case toggle_Monday1: patient.week7E5Complete![1][0] = true
                case toggle_Monday2: patient.week7E5Complete![1][1] = true
                case toggle_Monday3: patient.week7E5Complete![1][2] = true
                case toggle_Tuesday1: patient.week7E5Complete![2][0] = true
                case toggle_Tuesday2: patient.week7E5Complete![2][1] = true
                case toggle_Tuesday3: patient.week7E5Complete![2][2] = true
                case toggle_Wednesday1: patient.week7E5Complete![3][0] = true
                case toggle_Wednesday2: patient.week7E5Complete![3][1] = true
                case toggle_Wednesday3: patient.week7E5Complete![3][2] = true
                case toggle_Thursday1: patient.week7E5Complete![4][0] = true
                case toggle_Thursday2: patient.week7E5Complete![4][1] = true
                case toggle_Thursday3: patient.week7E5Complete![4][2] = true
                case toggle_Friday1: patient.week7E5Complete![5][0] = true
                case toggle_Friday2: patient.week7E5Complete![5][1] = true
                case toggle_Friday3: patient.week7E5Complete![5][2] = true
                case toggle_Saturday1: patient.week7E5Complete![6][0] = true
                case toggle_Saturday2: patient.week7E5Complete![6][1] = true
                case toggle_Saturday3: patient.week7E5Complete![6][2] = true
                default: break
                }
            }
        case "Week 8":
            if (exercise.exerciseNumber == "Exercise 1"){
                switch sender{
                case toggle_Sunday1: patient.week8E1Complete![0][0] = true
                case toggle_Sunday2: patient.week8E1Complete![0][1] = true
                case toggle_Sunday3: patient.week8E1Complete![0][2] = true
                case toggle_Monday1: patient.week8E1Complete![1][0] = true
                case toggle_Monday2: patient.week8E1Complete![1][1] = true
                case toggle_Monday3: patient.week8E1Complete![1][2] = true
                case toggle_Tuesday1: patient.week8E1Complete![2][0] = true
                case toggle_Tuesday2: patient.week8E1Complete![2][1] = true
                case toggle_Tuesday3: patient.week8E1Complete![2][2] = true
                case toggle_Wednesday1: patient.week8E1Complete![3][0] = true
                case toggle_Wednesday2: patient.week8E1Complete![3][1] = true
                case toggle_Wednesday3: patient.week8E1Complete![3][2] = true
                case toggle_Thursday1: patient.week8E1Complete![4][0] = true
                case toggle_Thursday2: patient.week8E1Complete![4][1] = true
                case toggle_Thursday3: patient.week8E1Complete![4][2] = true
                case toggle_Friday1: patient.week8E1Complete![5][0] = true
                case toggle_Friday2: patient.week8E1Complete![5][1] = true
                case toggle_Friday3: patient.week8E1Complete![5][2] = true
                case toggle_Saturday1: patient.week8E1Complete![6][0] = true
                case toggle_Saturday2: patient.week8E1Complete![6][1] = true
                case toggle_Saturday3: patient.week8E1Complete![6][2] = true
                default: break
                    
                }
            }
            if (exercise.exerciseNumber == "Exercise 2"){
                switch sender{
                    
                case toggle_Sunday1: patient.week8E2Complete![0][0] = true
                case toggle_Sunday2: patient.week8E2Complete![0][1] = true
                case toggle_Sunday3: patient.week8E2Complete![0][2] = true
                case toggle_Monday1: patient.week8E2Complete![1][0] = true
                case toggle_Monday2: patient.week8E2Complete![1][1] = true
                case toggle_Monday3: patient.week8E2Complete![1][2] = true
                case toggle_Tuesday1: patient.week8E2Complete![2][0] = true
                case toggle_Tuesday2: patient.week8E2Complete![2][1] = true
                case toggle_Tuesday3: patient.week8E2Complete![2][2] = true
                case toggle_Wednesday1: patient.week8E2Complete![3][0] = true
                case toggle_Wednesday2: patient.week8E2Complete![3][1] = true
                case toggle_Wednesday3: patient.week8E2Complete![3][2] = true
                case toggle_Thursday1: patient.week8E2Complete![4][0] = true
                case toggle_Thursday2: patient.week8E2Complete![4][1] = true
                case toggle_Thursday3: patient.week8E2Complete![4][2] = true
                case toggle_Friday1: patient.week8E2Complete![5][0] = true
                case toggle_Friday2: patient.week8E2Complete![5][1] = true
                case toggle_Friday3: patient.week8E2Complete![5][2] = true
                case toggle_Saturday1: patient.week8E2Complete![6][0] = true
                case toggle_Saturday2: patient.week8E2Complete![6][1] = true
                case toggle_Saturday3: patient.week8E2Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 3"){
                switch sender{
                case toggle_Sunday1: patient.week8E3Complete![0][0] = true
                case toggle_Sunday2: patient.week8E3Complete![0][1] = true
                case toggle_Sunday3: patient.week8E3Complete![0][2] = true
                case toggle_Monday1: patient.week8E3Complete![1][0] = true
                case toggle_Monday2: patient.week8E3Complete![1][1] = true
                case toggle_Monday3: patient.week8E3Complete![1][2] = true
                case toggle_Tuesday1: patient.week8E3Complete![2][0] = true
                case toggle_Tuesday2: patient.week8E3Complete![2][1] = true
                case toggle_Tuesday3: patient.week8E3Complete![2][2] = true
                case toggle_Wednesday1: patient.week8E3Complete![3][0] = true
                case toggle_Wednesday2: patient.week8E3Complete![3][1] = true
                case toggle_Wednesday3: patient.week8E3Complete![3][2] = true
                case toggle_Thursday1: patient.week8E3Complete![4][0] = true
                case toggle_Thursday2: patient.week8E3Complete![4][1] = true
                case toggle_Thursday3: patient.week8E3Complete![4][2] = true
                case toggle_Friday1: patient.week8E3Complete![5][0] = true
                case toggle_Friday2: patient.week8E3Complete![5][1] = true
                case toggle_Friday3: patient.week8E3Complete![5][2] = true
                case toggle_Saturday1: patient.week8E3Complete![6][0] = true
                case toggle_Saturday2: patient.week8E3Complete![6][1] = true
                case toggle_Saturday3: patient.week8E3Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 4"){
                switch sender{
                case toggle_Sunday1: patient.week8E4Complete![0][0] = true
                case toggle_Sunday2: patient.week8E4Complete![0][1] = true
                case toggle_Sunday3: patient.week8E4Complete![0][2] = true
                case toggle_Monday1: patient.week8E4Complete![1][0] = true
                case toggle_Monday2: patient.week8E4Complete![1][1] = true
                case toggle_Monday3: patient.week8E4Complete![1][2] = true
                case toggle_Tuesday1: patient.week8E4Complete![2][0] = true
                case toggle_Tuesday2: patient.week8E4Complete![2][1] = true
                case toggle_Tuesday3: patient.week8E4Complete![2][2] = true
                case toggle_Wednesday1: patient.week8E4Complete![3][0] = true
                case toggle_Wednesday2: patient.week8E4Complete![3][1] = true
                case toggle_Wednesday3: patient.week8E4Complete![3][2] = true
                case toggle_Thursday1: patient.week8E4Complete![4][0] = true
                case toggle_Thursday2: patient.week8E4Complete![4][1] = true
                case toggle_Thursday3: patient.week8E4Complete![4][2] = true
                case toggle_Friday1: patient.week8E4Complete![5][0] = true
                case toggle_Friday2: patient.week8E4Complete![5][1] = true
                case toggle_Friday3: patient.week8E4Complete![5][2] = true
                case toggle_Saturday1: patient.week8E4Complete![6][0] = true
                case toggle_Saturday2: patient.week8E4Complete![6][1] = true
                case toggle_Saturday3: patient.week8E4Complete![6][2] = true
                default: break
                }
            }
            
            if (exercise.exerciseNumber == "Exercise 5"){
                switch sender{
                case toggle_Sunday1: patient.week8E5Complete![0][0] = true
                case toggle_Sunday2: patient.week8E5Complete![0][1] = true
                case toggle_Sunday3: patient.week8E5Complete![0][2] = true
                case toggle_Monday1: patient.week8E5Complete![1][0] = true
                case toggle_Monday2: patient.week8E5Complete![1][1] = true
                case toggle_Monday3: patient.week8E5Complete![1][2] = true
                case toggle_Tuesday1: patient.week8E5Complete![2][0] = true
                case toggle_Tuesday2: patient.week8E5Complete![2][1] = true
                case toggle_Tuesday3: patient.week8E5Complete![2][2] = true
                case toggle_Wednesday1: patient.week8E5Complete![3][0] = true
                case toggle_Wednesday2: patient.week8E5Complete![3][1] = true
                case toggle_Wednesday3: patient.week8E5Complete![3][2] = true
                case toggle_Thursday1: patient.week8E5Complete![4][0] = true
                case toggle_Thursday2: patient.week8E5Complete![4][1] = true
                case toggle_Thursday3: patient.week8E5Complete![4][2] = true
                case toggle_Friday1: patient.week8E5Complete![5][0] = true
                case toggle_Friday2: patient.week8E5Complete![5][1] = true
                case toggle_Friday3: patient.week8E5Complete![5][2] = true
                case toggle_Saturday1: patient.week8E5Complete![6][0] = true
                case toggle_Saturday2: patient.week8E5Complete![6][1] = true
                case toggle_Saturday3: patient.week8E5Complete![6][2] = true
                default: break
                }
            }
        case "Week 9":
            if (exercise.exerciseNumber == "Exercise 1"){
                switch sender{
                case toggle_Sunday1: patient.week9E1Complete![0][0] = true
                case toggle_Sunday2: patient.week9E1Complete![0][1] = true
                case toggle_Sunday3: patient.week9E1Complete![0][2] = true
                case toggle_Monday1: patient.week9E1Complete![1][0] = true
                case toggle_Monday2: patient.week9E1Complete![1][1] = true
                case toggle_Monday3: patient.week9E1Complete![1][2] = true
                case toggle_Tuesday1: patient.week9E1Complete![2][0] = true
                case toggle_Tuesday2: patient.week9E1Complete![2][1] = true
                case toggle_Tuesday3: patient.week9E1Complete![2][2] = true
                case toggle_Wednesday1: patient.week9E1Complete![3][0] = true
                case toggle_Wednesday2: patient.week9E1Complete![3][1] = true
                case toggle_Wednesday3: patient.week9E1Complete![3][2] = true
                case toggle_Thursday1: patient.week9E1Complete![4][0] = true
                case toggle_Thursday2: patient.week9E1Complete![4][1] = true
                case toggle_Thursday3: patient.week9E1Complete![4][2] = true
                case toggle_Friday1: patient.week9E1Complete![5][0] = true
                case toggle_Friday2: patient.week9E1Complete![5][1] = true
                case toggle_Friday3: patient.week9E1Complete![5][2] = true
                case toggle_Saturday1: patient.week9E1Complete![6][0] = true
                case toggle_Saturday2: patient.week9E1Complete![6][1] = true
                case toggle_Saturday3: patient.week9E1Complete![6][2] = true
                default: break
                    
                }
            }
            if (exercise.exerciseNumber == "Exercise 2"){
                switch sender{
                    
                case toggle_Sunday1: patient.week9E2Complete![0][0] = true
                case toggle_Sunday2: patient.week9E2Complete![0][1] = true
                case toggle_Sunday3: patient.week9E2Complete![0][2] = true
                case toggle_Monday1: patient.week9E2Complete![1][0] = true
                case toggle_Monday2: patient.week9E2Complete![1][1] = true
                case toggle_Monday3: patient.week9E2Complete![1][2] = true
                case toggle_Tuesday1: patient.week9E2Complete![2][0] = true
                case toggle_Tuesday2: patient.week9E2Complete![2][1] = true
                case toggle_Tuesday3: patient.week9E2Complete![2][2] = true
                case toggle_Wednesday1: patient.week9E2Complete![3][0] = true
                case toggle_Wednesday2: patient.week9E2Complete![3][1] = true
                case toggle_Wednesday3: patient.week9E2Complete![3][2] = true
                case toggle_Thursday1: patient.week9E2Complete![4][0] = true
                case toggle_Thursday2: patient.week9E2Complete![4][1] = true
                case toggle_Thursday3: patient.week9E2Complete![4][2] = true
                case toggle_Friday1: patient.week9E2Complete![5][0] = true
                case toggle_Friday2: patient.week9E2Complete![5][1] = true
                case toggle_Friday3: patient.week9E2Complete![5][2] = true
                case toggle_Saturday1: patient.week9E2Complete![6][0] = true
                case toggle_Saturday2: patient.week9E2Complete![6][1] = true
                case toggle_Saturday3: patient.week9E2Complete![6][2] = true
                default: break
                }
            }
            if (exercise.exerciseNumber == "Exercise 3"){
                switch sender{
                case toggle_Sunday1: patient.week9E3Complete![0][0] = true
                case toggle_Sunday2: patient.week9E3Complete![0][1] = true
                case toggle_Sunday3: patient.week9E3Complete![0][2] = true
                case toggle_Monday1: patient.week9E3Complete![1][0] = true
                case toggle_Monday2: patient.week9E3Complete![1][1] = true
                case toggle_Monday3: patient.week9E3Complete![1][2] = true
                case toggle_Tuesday1: patient.week9E3Complete![2][0] = true
                case toggle_Tuesday2: patient.week9E3Complete![2][1] = true
                case toggle_Tuesday3: patient.week9E3Complete![2][2] = true
                case toggle_Wednesday1: patient.week9E3Complete![3][0] = true
                case toggle_Wednesday2: patient.week9E3Complete![3][1] = true
                case toggle_Wednesday3: patient.week9E3Complete![3][2] = true
                case toggle_Thursday1: patient.week9E3Complete![4][0] = true
                case toggle_Thursday2: patient.week9E3Complete![4][1] = true
                case toggle_Thursday3: patient.week9E3Complete![4][2] = true
                case toggle_Friday1: patient.week9E3Complete![5][0] = true
                case toggle_Friday2: patient.week9E3Complete![5][1] = true
                case toggle_Friday3: patient.week9E3Complete![5][2] = true
                case toggle_Saturday1: patient.week9E3Complete![6][0] = true
                case toggle_Saturday2: patient.week9E3Complete![6][1] = true
                case toggle_Saturday3: patient.week9E3Complete![6][2] = true
                     default: break
                }
            }
        default: break
        
        }//end switch
   
     } // end if
     else{
        
            switch week.weekNumber!{
                
            case "Week 1":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week1E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week1E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week1E1Complete![0][2] = false
                    case toggle_Monday1: patient.week1E1Complete![1][0] = false
                    case toggle_Monday2: patient.week1E1Complete![1][1] = false
                    case toggle_Monday3: patient.week1E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week1E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week1E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week1E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week1E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week1E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week1E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week1E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week1E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week1E1Complete![4][2] = false
                    case toggle_Friday1: patient.week1E1Complete![5][0] = false
                    case toggle_Friday2: patient.week1E1Complete![5][1] = false
                    case toggle_Friday3: patient.week1E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week1E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week1E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week1E1Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week1E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week1E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week1E2Complete![0][2] = false
                    case toggle_Monday1: patient.week1E2Complete![1][0] = false
                    case toggle_Monday2: patient.week1E2Complete![1][1] = false
                    case toggle_Monday3: patient.week1E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week1E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week1E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week1E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week1E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week1E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week1E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week1E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week1E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week1E2Complete![4][2] = false
                    case toggle_Friday1: patient.week1E2Complete![5][0] = false
                    case toggle_Friday2: patient.week1E2Complete![5][1] = false
                    case toggle_Friday3: patient.week1E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week1E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week1E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week1E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week1E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week1E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week1E3Complete![0][2] = false
                    case toggle_Monday1: patient.week1E3Complete![1][0] = false
                    case toggle_Monday2: patient.week1E3Complete![1][1] = false
                    case toggle_Monday3: patient.week1E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week1E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week1E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week1E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week1E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week1E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week1E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week1E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week1E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week1E3Complete![4][2] = false
                    case toggle_Friday1: patient.week1E3Complete![5][0] = false
                    case toggle_Friday2: patient.week1E3Complete![5][1] = false
                    case toggle_Friday3: patient.week1E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week1E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week1E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week1E3Complete![6][2] = false
                    default: break
                        
                    }
                    
                }
                
            case "Week 2":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week2E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week2E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week2E1Complete![0][2] = false
                    case toggle_Monday1: patient.week2E1Complete![1][0] = false
                    case toggle_Monday2: patient.week2E1Complete![1][1] = false
                    case toggle_Monday3: patient.week2E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week2E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week2E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week2E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week2E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week2E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week2E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week2E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week2E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week2E1Complete![4][2] = false
                    case toggle_Friday1: patient.week2E1Complete![5][0] = false
                    case toggle_Friday2: patient.week2E1Complete![5][1] = false
                    case toggle_Friday3: patient.week2E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week2E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week2E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week2E1Complete![6][2] = false
                    default: break
                        
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week2E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week2E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week2E2Complete![0][2] = false
                    case toggle_Monday1: patient.week2E2Complete![1][0] = false
                    case toggle_Monday2: patient.week2E2Complete![1][1] = false
                    case toggle_Monday3: patient.week2E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week2E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week2E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week2E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week2E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week2E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week2E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week2E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week2E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week2E2Complete![4][2] = false
                    case toggle_Friday1: patient.week2E2Complete![5][0] = false
                    case toggle_Friday2: patient.week2E2Complete![5][1] = false
                    case toggle_Friday3: patient.week2E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week2E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week2E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week2E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week2E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week2E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week2E3Complete![0][2] = false
                    case toggle_Monday1: patient.week2E3Complete![1][0] = false
                    case toggle_Monday2: patient.week2E3Complete![1][1] = false
                    case toggle_Monday3: patient.week2E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week2E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week2E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week2E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week2E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week2E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week2E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week2E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week2E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week2E3Complete![4][2] = false
                    case toggle_Friday1: patient.week2E3Complete![5][0] = false
                    case toggle_Friday2: patient.week2E3Complete![5][1] = false
                    case toggle_Friday3: patient.week2E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week2E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week2E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week2E3Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 4"){
                    switch sender{
                    case toggle_Sunday1: patient.week2E4Complete![0][0] = false
                    case toggle_Sunday2: patient.week2E4Complete![0][1] = false
                    case toggle_Sunday3: patient.week2E4Complete![0][2] = false
                    case toggle_Monday1: patient.week2E4Complete![1][0] = false
                    case toggle_Monday2: patient.week2E4Complete![1][1] = false
                    case toggle_Monday3: patient.week2E4Complete![1][2] = false
                    case toggle_Tuesday1: patient.week2E4Complete![2][0] = false
                    case toggle_Tuesday2: patient.week2E4Complete![2][1] = false
                    case toggle_Tuesday3: patient.week2E4Complete![2][2] = false
                    case toggle_Wednesday1: patient.week2E4Complete![3][0] = false
                    case toggle_Wednesday2: patient.week2E4Complete![3][1] = false
                    case toggle_Wednesday3: patient.week2E4Complete![3][2] = false
                    case toggle_Thursday1: patient.week2E4Complete![4][0] = false
                    case toggle_Thursday2: patient.week2E4Complete![4][1] = false
                    case toggle_Thursday3: patient.week2E4Complete![4][2] = false
                    case toggle_Friday1: patient.week2E4Complete![5][0] = false
                    case toggle_Friday2: patient.week2E4Complete![5][1] = false
                    case toggle_Friday3: patient.week2E4Complete![5][2] = false
                    case toggle_Saturday1: patient.week2E4Complete![6][0] = false
                    case toggle_Saturday2: patient.week2E4Complete![6][1] = false
                    case toggle_Saturday3: patient.week2E4Complete![6][2] = false
                    default: break
                    }
                }
                
            case "Week 3":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week3E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week3E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week3E1Complete![0][2] = false
                    case toggle_Monday1: patient.week3E1Complete![1][0] = false
                    case toggle_Monday2: patient.week3E1Complete![1][1] = false
                    case toggle_Monday3: patient.week3E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week3E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week3E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week3E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week3E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week3E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week3E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week3E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week3E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week3E1Complete![4][2] = false
                    case toggle_Friday1: patient.week3E1Complete![5][0] = false
                    case toggle_Friday2: patient.week3E1Complete![5][1] = false
                    case toggle_Friday3: patient.week3E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week3E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week3E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week3E1Complete![6][2] = false
                    default: break
                        
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week3E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week3E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week3E2Complete![0][2] = false
                    case toggle_Monday1: patient.week3E2Complete![1][0] = false
                    case toggle_Monday2: patient.week3E2Complete![1][1] = false
                    case toggle_Monday3: patient.week3E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week3E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week3E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week3E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week3E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week3E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week3E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week3E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week3E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week3E2Complete![4][2] = false
                    case toggle_Friday1: patient.week3E2Complete![5][0] = false
                    case toggle_Friday2: patient.week3E2Complete![5][1] = false
                    case toggle_Friday3: patient.week3E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week3E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week3E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week3E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week3E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week3E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week3E3Complete![0][2] = false
                    case toggle_Monday1: patient.week3E3Complete![1][0] = false
                    case toggle_Monday2: patient.week3E3Complete![1][1] = false
                    case toggle_Monday3: patient.week3E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week3E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week3E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week3E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week3E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week3E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week3E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week3E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week3E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week3E3Complete![4][2] = false
                    case toggle_Friday1: patient.week3E3Complete![5][0] = false
                    case toggle_Friday2: patient.week3E3Complete![5][1] = false
                    case toggle_Friday3: patient.week3E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week3E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week3E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week3E3Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 4"){
                    switch sender{
                    case toggle_Sunday1: patient.week3E4Complete![0][0] = false
                    case toggle_Sunday2: patient.week3E4Complete![0][1] = false
                    case toggle_Sunday3: patient.week3E4Complete![0][2] = false
                    case toggle_Monday1: patient.week3E4Complete![1][0] = false
                    case toggle_Monday2: patient.week3E4Complete![1][1] = false
                    case toggle_Monday3: patient.week3E4Complete![1][2] = false
                    case toggle_Tuesday1: patient.week3E4Complete![2][0] = false
                    case toggle_Tuesday2: patient.week3E4Complete![2][1] = false
                    case toggle_Tuesday3: patient.week3E4Complete![2][2] = false
                    case toggle_Wednesday1: patient.week3E4Complete![3][0] = false
                    case toggle_Wednesday2: patient.week3E4Complete![3][1] = false
                    case toggle_Wednesday3: patient.week3E4Complete![3][2] = false
                    case toggle_Thursday1: patient.week3E4Complete![4][0] = false
                    case toggle_Thursday2: patient.week3E4Complete![4][1] = false
                    case toggle_Thursday3: patient.week3E4Complete![4][2] = false
                    case toggle_Friday1: patient.week3E4Complete![5][0] = false
                    case toggle_Friday2: patient.week3E4Complete![5][1] = false
                    case toggle_Friday3: patient.week3E4Complete![5][2] = false
                    case toggle_Saturday1: patient.week3E4Complete![6][0] = false
                    case toggle_Saturday2: patient.week3E4Complete![6][1] = false
                    case toggle_Saturday3: patient.week3E4Complete![6][2] = false
                    default: break
                    }
                }
            case "Week 4":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week4E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week4E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week4E1Complete![0][2] = false
                    case toggle_Monday1: patient.week4E1Complete![1][0] = false
                    case toggle_Monday2: patient.week4E1Complete![1][1] = false
                    case toggle_Monday3: patient.week4E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week4E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week4E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week4E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week4E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week4E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week4E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week4E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week4E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week4E1Complete![4][2] = false
                    case toggle_Friday1: patient.week4E1Complete![5][0] = false
                    case toggle_Friday2: patient.week4E1Complete![5][1] = false
                    case toggle_Friday3: patient.week4E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week4E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week4E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week4E1Complete![6][2] = false
                    default: break
                        
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week4E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week4E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week4E2Complete![0][2] = false
                    case toggle_Monday1: patient.week4E2Complete![1][0] = false
                    case toggle_Monday2: patient.week4E2Complete![1][1] = false
                    case toggle_Monday3: patient.week4E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week4E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week4E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week4E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week4E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week4E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week4E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week4E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week4E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week4E2Complete![4][2] = false
                    case toggle_Friday1: patient.week4E2Complete![5][0] = false
                    case toggle_Friday2: patient.week4E2Complete![5][1] = false
                    case toggle_Friday3: patient.week4E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week4E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week4E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week4E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week4E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week4E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week4E3Complete![0][2] = false
                    case toggle_Monday1: patient.week4E3Complete![1][0] = false
                    case toggle_Monday2: patient.week4E3Complete![1][1] = false
                    case toggle_Monday3: patient.week4E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week4E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week4E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week4E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week4E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week4E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week4E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week4E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week4E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week4E3Complete![4][2] = false
                    case toggle_Friday1: patient.week4E3Complete![5][0] = false
                    case toggle_Friday2: patient.week4E3Complete![5][1] = false
                    case toggle_Friday3: patient.week4E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week4E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week4E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week4E3Complete![6][2] = false
                    default: break
                    }
                }
                
            case "Week 5":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week5E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week5E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week5E1Complete![0][2] = false
                    case toggle_Monday1: patient.week5E1Complete![1][0] = false
                    case toggle_Monday2: patient.week5E1Complete![1][1] = false
                    case toggle_Monday3: patient.week5E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week5E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week5E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week5E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week5E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week5E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week5E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week5E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week5E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week5E1Complete![4][2] = false
                    case toggle_Friday1: patient.week5E1Complete![5][0] = false
                    case toggle_Friday2: patient.week5E1Complete![5][1] = false
                    case toggle_Friday3: patient.week5E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week5E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week5E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week5E1Complete![6][2] = false
                    default: break
                        
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week5E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week5E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week5E2Complete![0][2] = false
                    case toggle_Monday1: patient.week5E2Complete![1][0] = false
                    case toggle_Monday2: patient.week5E2Complete![1][1] = false
                    case toggle_Monday3: patient.week5E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week5E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week5E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week5E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week5E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week5E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week5E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week5E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week5E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week5E2Complete![4][2] = false
                    case toggle_Friday1: patient.week5E2Complete![5][0] = false
                    case toggle_Friday2: patient.week5E2Complete![5][1] = false
                    case toggle_Friday3: patient.week5E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week5E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week5E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week5E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week5E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week5E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week5E3Complete![0][2] = false
                    case toggle_Monday1: patient.week5E3Complete![1][0] = false
                    case toggle_Monday2: patient.week5E3Complete![1][1] = false
                    case toggle_Monday3: patient.week5E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week5E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week5E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week5E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week5E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week5E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week5E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week5E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week5E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week5E3Complete![4][2] = false
                    case toggle_Friday1: patient.week5E3Complete![5][0] = false
                    case toggle_Friday2: patient.week5E3Complete![5][1] = false
                    case toggle_Friday3: patient.week5E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week5E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week5E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week5E3Complete![6][2] = false
                    default: break
                    }
                }
            case "Week 6":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week6E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week6E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week6E1Complete![0][2] = false
                    case toggle_Monday1: patient.week6E1Complete![1][0] = false
                    case toggle_Monday2: patient.week6E1Complete![1][1] = false
                    case toggle_Monday3: patient.week6E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week6E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week6E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week6E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week6E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week6E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week6E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week6E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week6E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week6E1Complete![4][2] = false
                    case toggle_Friday1: patient.week6E1Complete![5][0] = false
                    case toggle_Friday2: patient.week6E1Complete![5][1] = false
                    case toggle_Friday3: patient.week6E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week6E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week6E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week6E1Complete![6][2] = false
                    default: break
                        
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week6E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week6E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week6E2Complete![0][2] = false
                    case toggle_Monday1: patient.week6E2Complete![1][0] = false
                    case toggle_Monday2: patient.week6E2Complete![1][1] = false
                    case toggle_Monday3: patient.week6E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week6E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week6E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week6E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week6E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week6E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week6E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week6E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week6E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week6E2Complete![4][2] = false
                    case toggle_Friday1: patient.week6E2Complete![5][0] = false
                    case toggle_Friday2: patient.week6E2Complete![5][1] = false
                    case toggle_Friday3: patient.week6E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week6E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week6E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week6E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week6E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week6E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week6E3Complete![0][2] = false
                    case toggle_Monday1: patient.week6E3Complete![1][0] = false
                    case toggle_Monday2: patient.week6E3Complete![1][1] = false
                    case toggle_Monday3: patient.week6E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week6E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week6E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week6E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week6E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week6E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week6E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week6E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week6E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week6E3Complete![4][2] = false
                    case toggle_Friday1: patient.week6E3Complete![5][0] = false
                    case toggle_Friday2: patient.week6E3Complete![5][1] = false
                    case toggle_Friday3: patient.week6E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week6E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week6E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week6E3Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 4"){
                    switch sender{
                    case toggle_Sunday1: patient.week6E4Complete![0][0] = false
                    case toggle_Sunday2: patient.week6E4Complete![0][1] = false
                    case toggle_Sunday3: patient.week6E4Complete![0][2] = false
                    case toggle_Monday1: patient.week6E4Complete![1][0] = false
                    case toggle_Monday2: patient.week6E4Complete![1][1] = false
                    case toggle_Monday3: patient.week6E4Complete![1][2] = false
                    case toggle_Tuesday1: patient.week6E4Complete![2][0] = false
                    case toggle_Tuesday2: patient.week6E4Complete![2][1] = false
                    case toggle_Tuesday3: patient.week6E4Complete![2][2] = false
                    case toggle_Wednesday1: patient.week6E4Complete![3][0] = false
                    case toggle_Wednesday2: patient.week6E4Complete![3][1] = false
                    case toggle_Wednesday3: patient.week6E4Complete![3][2] = false
                    case toggle_Thursday1: patient.week6E4Complete![4][0] = false
                    case toggle_Thursday2: patient.week6E4Complete![4][1] = false
                    case toggle_Thursday3: patient.week6E4Complete![4][2] = false
                    case toggle_Friday1: patient.week6E4Complete![5][0] = false
                    case toggle_Friday2: patient.week6E4Complete![5][1] = false
                    case toggle_Friday3: patient.week6E4Complete![5][2] = false
                    case toggle_Saturday1: patient.week6E4Complete![6][0] = false
                    case toggle_Saturday2: patient.week6E4Complete![6][1] = false
                    case toggle_Saturday3: patient.week6E4Complete![6][2] = false
                    default: break
                    }
                }
            case "Week 7":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week7E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week7E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week7E1Complete![0][2] = false
                    case toggle_Monday1: patient.week7E1Complete![1][0] = false
                    case toggle_Monday2: patient.week7E1Complete![1][1] = false
                    case toggle_Monday3: patient.week7E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week7E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week7E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week7E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week7E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week7E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week7E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week7E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week7E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week7E1Complete![4][2] = false
                    case toggle_Friday1: patient.week7E1Complete![5][0] = false
                    case toggle_Friday2: patient.week7E1Complete![5][1] = false
                    case toggle_Friday3: patient.week7E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week7E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week7E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week7E1Complete![6][2] = false
                    default: break
                        
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week7E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week7E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week7E2Complete![0][2] = false
                    case toggle_Monday1: patient.week7E2Complete![1][0] = false
                    case toggle_Monday2: patient.week7E2Complete![1][1] = false
                    case toggle_Monday3: patient.week7E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week7E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week7E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week7E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week7E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week7E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week7E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week7E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week7E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week7E2Complete![4][2] = false
                    case toggle_Friday1: patient.week7E2Complete![5][0] = false
                    case toggle_Friday2: patient.week7E2Complete![5][1] = false
                    case toggle_Friday3: patient.week7E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week7E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week7E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week7E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week7E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week7E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week7E3Complete![0][2] = false
                    case toggle_Monday1: patient.week7E3Complete![1][0] = false
                    case toggle_Monday2: patient.week7E3Complete![1][1] = false
                    case toggle_Monday3: patient.week7E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week7E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week7E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week7E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week7E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week7E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week7E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week7E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week7E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week7E3Complete![4][2] = false
                    case toggle_Friday1: patient.week7E3Complete![5][0] = false
                    case toggle_Friday2: patient.week7E3Complete![5][1] = false
                    case toggle_Friday3: patient.week7E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week7E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week7E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week7E3Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 4"){
                    switch sender{
                    case toggle_Sunday1: patient.week7E4Complete![0][0] = false
                    case toggle_Sunday2: patient.week7E4Complete![0][1] = false
                    case toggle_Sunday3: patient.week7E4Complete![0][2] = false
                    case toggle_Monday1: patient.week7E4Complete![1][0] = false
                    case toggle_Monday2: patient.week7E4Complete![1][1] = false
                    case toggle_Monday3: patient.week7E4Complete![1][2] = false
                    case toggle_Tuesday1: patient.week7E4Complete![2][0] = false
                    case toggle_Tuesday2: patient.week7E4Complete![2][1] = false
                    case toggle_Tuesday3: patient.week7E4Complete![2][2] = false
                    case toggle_Wednesday1: patient.week7E4Complete![3][0] = false
                    case toggle_Wednesday2: patient.week7E4Complete![3][1] = false
                    case toggle_Wednesday3: patient.week7E4Complete![3][2] = false
                    case toggle_Thursday1: patient.week7E4Complete![4][0] = false
                    case toggle_Thursday2: patient.week7E4Complete![4][1] = false
                    case toggle_Thursday3: patient.week7E4Complete![4][2] = false
                    case toggle_Friday1: patient.week7E4Complete![5][0] = false
                    case toggle_Friday2: patient.week7E4Complete![5][1] = false
                    case toggle_Friday3: patient.week7E4Complete![5][2] = false
                    case toggle_Saturday1: patient.week7E4Complete![6][0] = false
                    case toggle_Saturday2: patient.week7E4Complete![6][1] = false
                    case toggle_Saturday3: patient.week7E4Complete![6][2] = false
                    default: break
                    }
                }
                
                if (exercise.exerciseNumber == "Exercise 5"){
                    switch sender{
                    case toggle_Sunday1: patient.week7E5Complete![0][0] = false
                    case toggle_Sunday2: patient.week7E5Complete![0][1] = false
                    case toggle_Sunday3: patient.week7E5Complete![0][2] = false
                    case toggle_Monday1: patient.week7E5Complete![1][0] = false
                    case toggle_Monday2: patient.week7E5Complete![1][1] = false
                    case toggle_Monday3: patient.week7E5Complete![1][2] = false
                    case toggle_Tuesday1: patient.week7E5Complete![2][0] = false
                    case toggle_Tuesday2: patient.week7E5Complete![2][1] = false
                    case toggle_Tuesday3: patient.week7E5Complete![2][2] = false
                    case toggle_Wednesday1: patient.week7E5Complete![3][0] = false
                    case toggle_Wednesday2: patient.week7E5Complete![3][1] = false
                    case toggle_Wednesday3: patient.week7E5Complete![3][2] = false
                    case toggle_Thursday1: patient.week7E5Complete![4][0] = false
                    case toggle_Thursday2: patient.week7E5Complete![4][1] = false
                    case toggle_Thursday3: patient.week7E5Complete![4][2] = false
                    case toggle_Friday1: patient.week7E5Complete![5][0] = false
                    case toggle_Friday2: patient.week7E5Complete![5][1] = false
                    case toggle_Friday3: patient.week7E5Complete![5][2] = false
                    case toggle_Saturday1: patient.week7E5Complete![6][0] = false
                    case toggle_Saturday2: patient.week7E5Complete![6][1] = false
                    case toggle_Saturday3: patient.week7E5Complete![6][2] = false
                    default: break
                    }
                }
            case "Week 8":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week8E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week8E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week8E1Complete![0][2] = false
                    case toggle_Monday1: patient.week8E1Complete![1][0] = false
                    case toggle_Monday2: patient.week8E1Complete![1][1] = false
                    case toggle_Monday3: patient.week8E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week8E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week8E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week8E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week8E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week8E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week8E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week8E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week8E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week8E1Complete![4][2] = false
                    case toggle_Friday1: patient.week8E1Complete![5][0] = false
                    case toggle_Friday2: patient.week8E1Complete![5][1] = false
                    case toggle_Friday3: patient.week8E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week8E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week8E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week8E1Complete![6][2] = false
                    default: break
                        
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week8E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week8E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week8E2Complete![0][2] = false
                    case toggle_Monday1: patient.week8E2Complete![1][0] = false
                    case toggle_Monday2: patient.week8E2Complete![1][1] = false
                    case toggle_Monday3: patient.week8E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week8E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week8E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week8E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week8E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week8E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week8E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week8E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week8E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week8E2Complete![4][2] = false
                    case toggle_Friday1: patient.week8E2Complete![5][0] = false
                    case toggle_Friday2: patient.week8E2Complete![5][1] = false
                    case toggle_Friday3: patient.week8E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week8E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week8E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week8E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week8E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week8E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week8E3Complete![0][2] = false
                    case toggle_Monday1: patient.week8E3Complete![1][0] = false
                    case toggle_Monday2: patient.week8E3Complete![1][1] = false
                    case toggle_Monday3: patient.week8E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week8E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week8E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week8E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week8E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week8E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week8E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week8E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week8E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week8E3Complete![4][2] = false
                    case toggle_Friday1: patient.week8E3Complete![5][0] = false
                    case toggle_Friday2: patient.week8E3Complete![5][1] = false
                    case toggle_Friday3: patient.week8E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week8E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week8E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week8E3Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 4"){
                    switch sender{
                    case toggle_Sunday1: patient.week8E4Complete![0][0] = false
                    case toggle_Sunday2: patient.week8E4Complete![0][1] = false
                    case toggle_Sunday3: patient.week8E4Complete![0][2] = false
                    case toggle_Monday1: patient.week8E4Complete![1][0] = false
                    case toggle_Monday2: patient.week8E4Complete![1][1] = false
                    case toggle_Monday3: patient.week8E4Complete![1][2] = false
                    case toggle_Tuesday1: patient.week8E4Complete![2][0] = false
                    case toggle_Tuesday2: patient.week8E4Complete![2][1] = false
                    case toggle_Tuesday3: patient.week8E4Complete![2][2] = false
                    case toggle_Wednesday1: patient.week8E4Complete![3][0] = false
                    case toggle_Wednesday2: patient.week8E4Complete![3][1] = false
                    case toggle_Wednesday3: patient.week8E4Complete![3][2] = false
                    case toggle_Thursday1: patient.week8E4Complete![4][0] = false
                    case toggle_Thursday2: patient.week8E4Complete![4][1] = false
                    case toggle_Thursday3: patient.week8E4Complete![4][2] = false
                    case toggle_Friday1: patient.week8E4Complete![5][0] = false
                    case toggle_Friday2: patient.week8E4Complete![5][1] = false
                    case toggle_Friday3: patient.week8E4Complete![5][2] = false
                    case toggle_Saturday1: patient.week8E4Complete![6][0] = false
                    case toggle_Saturday2: patient.week8E4Complete![6][1] = false
                    case toggle_Saturday3: patient.week8E4Complete![6][2] = false
                    default: break
                    }
                }
                
                if (exercise.exerciseNumber == "Exercise 5"){
                    switch sender{
                    case toggle_Sunday1: patient.week8E5Complete![0][0] = false
                    case toggle_Sunday2: patient.week8E5Complete![0][1] = false
                    case toggle_Sunday3: patient.week8E5Complete![0][2] = false
                    case toggle_Monday1: patient.week8E5Complete![1][0] = false
                    case toggle_Monday2: patient.week8E5Complete![1][1] = false
                    case toggle_Monday3: patient.week8E5Complete![1][2] = false
                    case toggle_Tuesday1: patient.week8E5Complete![2][0] = false
                    case toggle_Tuesday2: patient.week8E5Complete![2][1] = false
                    case toggle_Tuesday3: patient.week8E5Complete![2][2] = false
                    case toggle_Wednesday1: patient.week8E5Complete![3][0] = false
                    case toggle_Wednesday2: patient.week8E5Complete![3][1] = false
                    case toggle_Wednesday3: patient.week8E5Complete![3][2] = false
                    case toggle_Thursday1: patient.week8E5Complete![4][0] = false
                    case toggle_Thursday2: patient.week8E5Complete![4][1] = false
                    case toggle_Thursday3: patient.week8E5Complete![4][2] = false
                    case toggle_Friday1: patient.week8E5Complete![5][0] = false
                    case toggle_Friday2: patient.week8E5Complete![5][1] = false
                    case toggle_Friday3: patient.week8E5Complete![5][2] = false
                    case toggle_Saturday1: patient.week8E5Complete![6][0] = false
                    case toggle_Saturday2: patient.week8E5Complete![6][1] = false
                    case toggle_Saturday3: patient.week8E5Complete![6][2] = false
                    default: break
                    }
                }
            case "Week 9":
                if (exercise.exerciseNumber == "Exercise 1"){
                    switch sender{
                    case toggle_Sunday1: patient.week9E1Complete![0][0] = false
                    case toggle_Sunday2: patient.week9E1Complete![0][1] = false
                    case toggle_Sunday3: patient.week9E1Complete![0][2] = false
                    case toggle_Monday1: patient.week9E1Complete![1][0] = false
                    case toggle_Monday2: patient.week9E1Complete![1][1] = false
                    case toggle_Monday3: patient.week9E1Complete![1][2] = false
                    case toggle_Tuesday1: patient.week9E1Complete![2][0] = false
                    case toggle_Tuesday2: patient.week9E1Complete![2][1] = false
                    case toggle_Tuesday3: patient.week9E1Complete![2][2] = false
                    case toggle_Wednesday1: patient.week9E1Complete![3][0] = false
                    case toggle_Wednesday2: patient.week9E1Complete![3][1] = false
                    case toggle_Wednesday3: patient.week9E1Complete![3][2] = false
                    case toggle_Thursday1: patient.week9E1Complete![4][0] = false
                    case toggle_Thursday2: patient.week9E1Complete![4][1] = false
                    case toggle_Thursday3: patient.week9E1Complete![4][2] = false
                    case toggle_Friday1: patient.week9E1Complete![5][0] = false
                    case toggle_Friday2: patient.week9E1Complete![5][1] = false
                    case toggle_Friday3: patient.week9E1Complete![5][2] = false
                    case toggle_Saturday1: patient.week9E1Complete![6][0] = false
                    case toggle_Saturday2: patient.week9E1Complete![6][1] = false
                    case toggle_Saturday3: patient.week9E1Complete![6][2] = false
                    default: break
                        
                    }
                }
                if (exercise.exerciseNumber == "Exercise 2"){
                    switch sender{
                        
                    case toggle_Sunday1: patient.week9E2Complete![0][0] = false
                    case toggle_Sunday2: patient.week9E2Complete![0][1] = false
                    case toggle_Sunday3: patient.week9E2Complete![0][2] = false
                    case toggle_Monday1: patient.week9E2Complete![1][0] = false
                    case toggle_Monday2: patient.week9E2Complete![1][1] = false
                    case toggle_Monday3: patient.week9E2Complete![1][2] = false
                    case toggle_Tuesday1: patient.week9E2Complete![2][0] = false
                    case toggle_Tuesday2: patient.week9E2Complete![2][1] = false
                    case toggle_Tuesday3: patient.week9E2Complete![2][2] = false
                    case toggle_Wednesday1: patient.week9E2Complete![3][0] = false
                    case toggle_Wednesday2: patient.week9E2Complete![3][1] = false
                    case toggle_Wednesday3: patient.week9E2Complete![3][2] = false
                    case toggle_Thursday1: patient.week9E2Complete![4][0] = false
                    case toggle_Thursday2: patient.week9E2Complete![4][1] = false
                    case toggle_Thursday3: patient.week9E2Complete![4][2] = false
                    case toggle_Friday1: patient.week9E2Complete![5][0] = false
                    case toggle_Friday2: patient.week9E2Complete![5][1] = false
                    case toggle_Friday3: patient.week9E2Complete![5][2] = false
                    case toggle_Saturday1: patient.week9E2Complete![6][0] = false
                    case toggle_Saturday2: patient.week9E2Complete![6][1] = false
                    case toggle_Saturday3: patient.week9E2Complete![6][2] = false
                    default: break
                    }
                }
                if (exercise.exerciseNumber == "Exercise 3"){
                    switch sender{
                    case toggle_Sunday1: patient.week9E3Complete![0][0] = false
                    case toggle_Sunday2: patient.week9E3Complete![0][1] = false
                    case toggle_Sunday3: patient.week9E3Complete![0][2] = false
                    case toggle_Monday1: patient.week9E3Complete![1][0] = false
                    case toggle_Monday2: patient.week9E3Complete![1][1] = false
                    case toggle_Monday3: patient.week9E3Complete![1][2] = false
                    case toggle_Tuesday1: patient.week9E3Complete![2][0] = false
                    case toggle_Tuesday2: patient.week9E3Complete![2][1] = false
                    case toggle_Tuesday3: patient.week9E3Complete![2][2] = false
                    case toggle_Wednesday1: patient.week9E3Complete![3][0] = false
                    case toggle_Wednesday2: patient.week9E3Complete![3][1] = false
                    case toggle_Wednesday3: patient.week9E3Complete![3][2] = false
                    case toggle_Thursday1: patient.week9E3Complete![4][0] = false
                    case toggle_Thursday2: patient.week9E3Complete![4][1] = false
                    case toggle_Thursday3: patient.week9E3Complete![4][2] = false
                    case toggle_Friday1: patient.week9E3Complete![5][0] = false
                    case toggle_Friday2: patient.week9E3Complete![5][1] = false
                    case toggle_Friday3: patient.week9E3Complete![5][2] = false
                    case toggle_Saturday1: patient.week9E3Complete![6][0] = false
                    case toggle_Saturday2: patient.week9E3Complete![6][1] = false
                    case toggle_Saturday3: patient.week9E3Complete![6][2] = false
                    default: break
                    }
                }
            default: break
                
            }//end switch
            
        } // end if

        }
    }//end function

