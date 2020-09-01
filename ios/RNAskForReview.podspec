
Pod::Spec.new do |s|
  s.name         = "RNAskForReview"
  s.version      = "1.0.2"
  s.summary      = "Ask for review with following Apple's Human Interface Guidelines"
  s.description  = <<-DESC
                  RNAskForReview
                   DESC
  s.homepage     = "https://github.com/stevenselcuk"
  s.license      = "MIT"
 # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "steven@tabbythecat.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/stevenselcuk/react-native-ask-for-review.git", :tag => "master" }
  s.source_files  = "RNAskForReview/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  