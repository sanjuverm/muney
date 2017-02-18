//
//  ViewController.swift
//  muney
//
//  Created by Sanjna Verma on 1/24/17.
//  Copyright © 2017 Sanjna Verma. All rights reserved.
//

import UIKit

//class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
class ViewController: UIViewController,
    UIImagePickerControllerDelegate,
    UINavigationControllerDelegate
{
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var imagePicked: UIImageView!

    
    @IBAction func openCameraButton(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            //var
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    
    
    
//    var imagePicker: UIImagePickerController!
//    
//    @IBOutlet var imageView: UIImageView!
//    
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
//        imagePicker.dismiss(animated: true, completion: nil)
//        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
//    }
//    
//    @IBAction func takePhoto(_ sender: UIButton) {
//        imagePicker =  UIImagePickerController()
//        imagePicker.delegate = self
//        imagePicker.sourceType = .camera
//        
//        present(imagePicker, animated: true, completion: nil)
//    }
    
    
    
    
    
//    @IBAction func MakeCall(_ sender: Any) {
//        
//        let url:URL = URL(string: "tel://123456789")!
//        UIApplication.shared.open(url)
//    }
}

