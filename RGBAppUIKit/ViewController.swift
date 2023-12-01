import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           
        colorView.layer.cornerRadius = 20

        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        
        redSlider.setValue(16, animated: false)
        greenSlider.setValue(61, animated: false)
        blueSlider.setValue(105, animated: false)
        
        setColor()
    }

    @IBAction func rgbSlider(_ sender: Any) {
        setColor()
        convertToString()
    }
   
    @IBAction func whiteColor(_ sender: Any) {
        redSlider.setValue(255, animated: true)
        greenSlider.setValue(255, animated: true)
        blueSlider.setValue(255, animated: true)
        
        setColor()
        convertToString()
    }
    
    @IBAction func blackColor(_ sender: Any) {
        redSlider.setValue(0, animated: true)
        greenSlider.setValue(0, animated: true)
        blueSlider.setValue(0, animated: true)
        
        setColor()
        convertToString()
    }
    
    @IBAction func randomColor(_ sender: Any) {
        let redColorRandom = Float.random(in: 0...255)
        let greenColorRandom = Float.random(in: 0...255)
        let blueColorRandom = Float.random(in: 0...255)
        
        redSlider.setValue(redColorRandom, animated: true)
        greenSlider.setValue(greenColorRandom, animated: true)
        blueSlider.setValue(blueColorRandom, animated: true)
        
        setColor()
        convertToString()
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value/255),
            green: CGFloat(greenSlider.value/255),
            blue: CGFloat(blueSlider.value/255),
            alpha: 1
        )
    }
    
    private func convertToString() {
        redLabel.text = String(Int(redSlider.value))
        greenLabel.text = String(Int(greenSlider.value))
        blueLabel.text = String(Int(blueSlider.value))
    }
}
