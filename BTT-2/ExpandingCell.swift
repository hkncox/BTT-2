import UIKit

class ExpandingCell : UITableViewCell{
    @IBOutlet weak var label_WhatIsTongueThrust: UILabel!
    @IBOutlet weak var label_WhatIsTT: UILabel!
    class var expandedHeight: CGFloat { get {return 200}}
    class var defaultHeight :CGFloat {get { return 44}}
    func checkHeight(){
        label_WhatIsTT.hidden = (frame.size.height < ExpandingCell.expandedHeight)
    }
    func watchFrameChanges(){
        addObserver(self, forKeyPath: "frame", options: .New, context:nil)
        checkHeight()
    }
    func ignoreFrameChanges(){
        removeObserver(self, forKeyPath: "frame")
    }
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        if keyPath == "frame"{checkHeight()}
    }
}