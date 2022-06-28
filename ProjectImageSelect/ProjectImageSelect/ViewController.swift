//
//  ViewController.swift
//  ProjectImageSelect
//
//  Created by Rodrigo Garcia on 25/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageSelected: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickToOpen(_ sender: Any) {
        
        let pickPictureController = UIImagePickerController()
        pickPictureController.delegate = self
        pickPictureController.sourceType = .camera
        pickPictureController.cameraCaptureMode = .photo
        pickPictureController.allowsEditing = true
        present(pickPictureController, animated: true, completion: nil)
        
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let pickImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            imageSelected.image = pickImage
        }
        
        picker.dismiss(animated: true)
        
    }
}
