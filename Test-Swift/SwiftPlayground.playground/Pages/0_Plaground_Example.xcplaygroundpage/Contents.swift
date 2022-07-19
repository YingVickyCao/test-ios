import UIKit;
import Foundation
import PlaygroundSupport;

var a = 10;
var b = 20;
print(a+b);
print(a);

let view = UIView();
view.frame = CGRect(x: 0, y: 0, width: 100, height: 100);
view.backgroundColor = UIColor.red

PlaygroundPage.current.liveView = view;

let imageView = UIImageView(image: UIImage(named: "ic_launcher_round"));
PlaygroundPage.current.liveView = imageView;


let controller = UITableViewController();
// ERROR:'=' must have consistent whitespace on both sides
//controller.view.backgroundColor =UIColor.blue
controller.view.backgroundColor = UIColor.lightGray
PlaygroundPage.current.liveView = controller;
