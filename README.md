# TinyLayout

📐 A tiny syntactic sugar for NSLayoutConstraint. Only 50 lines of codes.

```swift
class SettingCell: UITableViewCell {
    let iconView = UIImageView()
    let titleLabel = UILabel()
    let valueLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubviews([iconView, titleLabel, valueLabel], constraints: [
            iconView.leftAnchor.equal(leftAnchor, 15),
            iconView.centerYAnchor.equal(centerYAnchor),
            iconView.widthAnchor.equal(32),
            iconView.heightAnchor.equal(32),
            
            titleLabel.leftAnchor.equal(iconView.rightAnchor, 15),
            titleLabel.topAnchor.equal(topAnchor),
            titleLabel.bottomAnchor.equal(bottomAnchor),
            
            valueLabel.leftAnchor.equal(titleLabel.rightAnchor),
            valueLabel.topAnchor.equal(topAnchor),
            valueLabel.bottomAnchor.equal(bottomAnchor),
            valueLabel.rightAnchor.equal(rightAnchor, -15)
        ])
    }
}

```

### Swift Package Manager

```
https://github.com/mezhevikin/TinyLayout.git
```
