Pod::Spec.new do |s|

  s.name         = "SwipeSelectingCollectionView"
  s.version      = "0.1.3"
  s.summary      = "A collection view subclass that enables swipe to select multiple cells just like in Photos app."

  s.description  = <<-DESC
This collection view subclass is capable of selecting multiple cells with swipe.
Inspired by Photos app in iOS 9+.
                   DESC

  s.homepage     = "https://github.com/dragonetail/SwipeSelectingCollectionView"
  s.license      = "Apache License 2.0"

  s.author             = { "dragonetail" => "dragonetail@gmail.com" }
  s.social_media_url   = "http://dragonetail.github.io/"

  s.platform     = :ios, "10.3"
  s.source       = { :git => "https://github.com/dragonetail/SwipeSelectingCollectionView.git", :tag => "#{s.version}" }

  s.source_files  = "Sources"

end
