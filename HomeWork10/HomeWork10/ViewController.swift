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
    @IBOutlet var switch1: UISwitch!
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
   
    @IBAction func changeTextField() {
        guard let inputText = textField.text else {
            return
        }
// ????? как убрать курсор
        slider.value = Float(textField.text!)!
        progressView.setProgress(Float(textField.text!)!, animated: true)
    }
    
    
    @IBAction func ckickOnButtonSet() {
        let dateFormatter = DateFormatter()
        dateFormatter.lo
    }
    
    
    @IBAction func changeSwitch1() {
        let onState = switch1.isOn
        if onState {
            labelTime.backgroundColor = .yellow
        } else {
            labelTime.backgroundColor = .gray
        }
        
    }
    
    @IBAction func clickOnButtonClear() {
        labelTime.text = nil
        let onState = switch1.isOn
        if onState {
            switch1.setOn(false, animated: true)
        }
    }

    
    func setupUI() {
        slider.value = 0.5
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = .purple
        
        progressView.setProgress(slider.value, animated: true)
        
        textField.text = String(slider.value)
        
        /*
        datePicker.date = DateFormatter(hours, minutes)
        */
        switch1.onTintColor = .purple
        /*
        labelTime.text =  String(datePicker.timeZone)
         */
    }

}

