//
//  ViewController.swift
//  HomeWork10
//
//  Created by Дарья Дубровская on 16.01.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var labelAlarm: UILabel!
    @IBOutlet var view1: UIView!
    @IBOutlet var labelVolume: UILabel!
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var slider: UISlider!
    @IBOutlet var textField: UITextField!
    @IBOutlet var view2: UIView!
    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var buttonSetTime: UIButton!
    @IBOutlet var view3: UIView!
    @IBOutlet var labelTime: UILabel!
    @IBOutlet var colorChangeSwitch: UISwitch!
    @IBOutlet var buttonClear: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    @IBAction func sliderAction() {
        let backgroundColor = view.backgroundColor
        view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(slider.value))
        textField.text = String(slider.value)
        progressView.setProgress(slider.value, animated: true)
    }
    
    @IBAction func editingChanged(_ sender: Any) {
        guard
            let inputText = textField.text,
            let doubleValue = Float(inputText)
            else {
            return
        }
        slider.value = doubleValue
        progressView.setProgress(doubleValue, animated: true)
    }
    
    @IBAction func buttonSetTimeTapped(_ sender: Any) {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        labelTime.text = formatter.string(from: datePicker.date)
    }

    @IBAction func colorChangeSwithTapped() {
        labelTime.backgroundColor = colorChangeSwitch.isOn ? .link : .lightGray
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        labelTime.text = nil
        colorChangeSwitch.setOn(false, animated: true)
        colorChangeSwithTapped()
    }

    func setupUI() {
        slider.value = 0.5
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .link
        slider.thumbTintColor = .purple

        progressView.setProgress(slider.value, animated: true)
        textField.text = String(slider.value)
        colorChangeSwitch.onTintColor = .purple
        labelTime.layer.masksToBounds = true
        labelTime.layer.cornerRadius = 8.0
        buttonClear.layer.masksToBounds = true
        buttonClear.layer.cornerRadius = 8.0
    }
}
