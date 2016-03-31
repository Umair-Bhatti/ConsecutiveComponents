# ConsecutiveComponents
UILabel extension for displaying consecutive text components in same line.

Usage:
 Add file to your project. For Objective-C import header.
 
 In code
 
 ```
 
  label.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
  label.addConsectiveComponents(["sit er elit", "consectetaur", "cillium", "ad minim", "ullamco laboris nisi"])
  
 ```
 
Result:
  At width = 300
  ![alt tag](https://cloud.githubusercontent.com/assets/18189631/14181841/312594c2-f782-11e5-983f-76d008f53632.png)
  At width = 200
  ![alt tag](https://cloud.githubusercontent.com/assets/18189631/14181842/32cd9acc-f782-11e5-8cfd-90e9e89dae86.png)
 
