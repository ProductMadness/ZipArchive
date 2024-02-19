Pod::Spec.new do |s|
  s.name         = 'PM-SSZipArchive'
  s.version      = '2.4.3'
  s.summary      = 'Utility class for zipping and unzipping files on iOS, tvOS, watchOS, and macOS. PM fork.'
  s.description  = 'SSZipArchive PM fork is a simple utility class for zipping and unzipping files on iOS, tvOS, watchOS, and macOS. It supports AES and PKWARE encryption.'
  s.homepage     = 'https://github.com/ProductMadness/ZipArchive'
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.authors      = { "Hoang Bui" => "hoang.bui@productmadness.com", "Emily Kwong" => "Emily.Kwong@productmadness.com", "Zafer Sevik "=> "zafer.sevik@productmadness.com", "Antonio Gonzalez" => "Antonio.Gonzalez@productmadness.com" }
  s.source       = { :git => 'https://github.com/ProductMadness/ZipArchive.git', :tag => "#{s.version}" }
  s.ios.deployment_target = '9.0'
  s.source_files = 'SSZipArchive/*.{m,h}', 'SSZipArchive/include/*.{m,h}', 'SSZipArchive/minizip/*.{c,h}'
  s.resource_bundles = {'SSZipArchive' => ['SSZipArchive/Supporting Files/Privacyinfo.xcprivacy']}
  s.public_header_files = 'SSZipArchive/*.h'
  s.libraries = 'z', 'iconv'
  s.framework = 'Security'
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES',
    'GCC_PREPROCESSOR_DEFINITIONS' => 'HAVE_INTTYPES_H HAVE_PKCRYPT HAVE_STDINT_H HAVE_WZAES HAVE_ZLIB' }
end
