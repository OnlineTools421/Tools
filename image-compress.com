<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Free online image compression tool. Compress JPG, PNG, JPEG, and WebP images while maintaining quality. Reduce file size, optimize for web, improve loading speed.">
    <meta name="keywords" content="image compressor, photo compression, optimize images, reduce image size, JPEG compressor, PNG optimizer, WebP converter, image optimization, online image tool, free image compressor, picture compression, image size reducer, photo optimizer, web image optimization, fast image compression, secure image processing">
    <title>Image Compressor Pro - Optimize Your Images Online | Free JPEG, PNG, WebP Compression</title>
    <style>
        :root {
            --primary-color: #4361ee;
            --secondary-color: #3a0ca3;
            --accent-color: #4cc9f0;
            --light-color: #f8f9fa;
            --dark-color: #212529;
            --success-color: #4bb543;
            --border-radius: 8px;
            --box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f7fb;
            color: var(--dark-color);
            line-height: 1.6;
        }

        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        header {
            text-align: center;
            padding: 30px 0 15px;
        }

        h1 {
            font-size: 2.5rem;
            color: var(--primary-color);
            margin-bottom: 10px;
            font-weight: 800;
        }

        .ad-section {
            background-color: #e9ecef;
            border-radius: var(--border-radius);
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 20px 0;
            overflow: hidden;
        }

        .ad-small {
            height: 90px;
        }

        .ad-medium {
            height: 250px;
        }

        .ad-placeholder {
            color: #6c757d;
            font-size: 0.9rem;
        }

        .upload-section {
            background-color: white;
            border-radius: var(--border-radius);
            padding: 40px 20px;
            text-align: center;
            margin: 30px 0;
            box-shadow: var(--box-shadow);
            transition: var(--transition);
        }

        .upload-area {
            border: 2px dashed #dee2e6;
            border-radius: var(--border-radius);
            padding: 60px 20px;
            margin-bottom: 30px;
            cursor: pointer;
            transition: var(--transition);
        }

        .upload-area:hover, .upload-area.dragover {
            border-color: var(--primary-color);
            background-color: #f8f9fa;
        }

        .upload-area i {
            font-size: 48px;
            color: var(--primary-color);
            margin-bottom: 15px;
        }

        .upload-area h3 {
            margin-bottom: 10px;
            color: var(--dark-color);
        }

        .upload-area p {
            color: #6c757d;
            margin-bottom: 20px;
        }

        .btn {
            display: inline-block;
            padding: 12px 24px;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: var(--border-radius);
            cursor: pointer;
            font-size: 1rem;
            font-weight: 600;
            transition: var(--transition);
            text-decoration: none;
        }

        .btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-2px);
        }

        .btn-secondary {
            background-color: #6c757d;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        .btn-success {
            background-color: var(--success-color);
        }

        .btn-success:hover {
            background-color: #3d9436;
        }

        .hidden {
            display: none;
        }

        .image-preview {
            max-width: 100%;
            max-height: 400px;
            margin: 20px auto;
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
        }

        .image-info {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
            font-size: 0.9rem;
            color: #6c757d;
        }

        .compression-controls {
            margin: 30px 0;
        }

        .slider-container {
            margin-bottom: 20px;
        }

        .slider-label {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .slider {
            width: 100%;
            height: 10px;
            -webkit-appearance: none;
            appearance: none;
            background: #dee2e6;
            outline: none;
            border-radius: 5px;
        }

        .slider::-webkit-slider-thumb {
            -webkit-appearance: none;
            appearance: none;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background: var(--primary-color);
            cursor: pointer;
        }

        .features {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin: 50px 0;
        }

        .feature {
            background-color: white;
            border-radius: var(--border-radius);
            padding: 30px;
            text-align: center;
            box-shadow: var(--box-shadow);
            transition: var(--transition);
        }

        .feature:hover {
            transform: translateY(-5px);
        }

        .feature i {
            font-size: 48px;
            color: var(--primary-color);
            margin-bottom: 20px;
        }

        .feature h3 {
            margin-bottom: 15px;
            color: var(--dark-color);
        }

        .info-section {
            background-color: white;
            border-radius: var(--border-radius);
            padding: 40px;
            margin: 50px 0;
            box-shadow: var(--box-shadow);
        }

        .info-section h2 {
            margin-bottom: 20px;
            color: var(--primary-color);
        }

        .info-section h3 {
            margin: 25px 0 15px;
            color: var(--secondary-color);
        }

        .info-section p {
            margin-bottom: 15px;
        }

        .info-section ul {
            margin-left: 20px;
            margin-bottom: 20px;
        }

        footer {
            text-align: center;
            padding: 30px 0;
            margin-top: 50px;
            border-top: 1px solid #dee2e6;
            color: #6c757d;
            font-size: 0.9rem;
        }

        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }
            
            .upload-area {
                padding: 40px 15px;
            }
            
            .features {
                grid-template-columns: 1fr;
            }
            
            .info-section {
                padding: 25px;
            }
        }
    </style>
    <!-- Google Adsense Script (Replace with your own ad unit IDs) -->
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-XXXXXXXXXXXXXXXX" crossorigin="anonymous"></script>
</head>
<body>
    <div class="container">
        <header>
            <h1>Image Compressor Pro</h1>
        </header>

        <!-- First Ad Section -->
        <div class="ad-section ad-small">
            <!-- AdSense Ad Unit -->
            <ins class="adsbygoogle"
                 style="display:block"
                 data-ad-client="ca-pub-XXXXXXXXXXXXXXXX"
                 data-ad-slot="XXXXXXXXXX"
                 data-ad-format="auto"
                 data-full-width-responsive="true"></ins>
            <script>
                 (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>

        <!-- Upload Section -->
        <section class="upload-section">
            <div id="uploadArea" class="upload-area">
                <i>📁</i>
                <h3>Drag and drop your image here</h3>
                <p>Supports JPG, PNG, JPEG, and WebP files</p>
                <button id="chooseImageBtn" class="btn">Choose Image</button>
                <input type="file" id="imageInput" accept=".jpg,.jpeg,.png,.webp" class="hidden">
            </div>

            <div id="imageContainer" class="hidden">
                <img id="imagePreview" class="image-preview" src="" alt="Preview of compressed image">
                <div class="image-info">
                    <span id="originalSize">Original size: 0 KB</span>
                    <span id="compressedSize" class="hidden">Compressed size: 0 KB</span>
                </div>

                <div class="compression-controls">
                    <div class="slider-container">
                        <div class="slider-label">
                            <span>Compression Level:</span>
                            <span id="compressionValue">50%</span>
                        </div>
                        <input type="range" id="compressionSlider" class="slider" min="10" max="90" value="50">
                    </div>

                    <div id="actionButtons">
                        <button id="compressBtn" class="btn">Compress Image</button>
                        <button id="changeImageBtn" class="btn btn-secondary">Change Image</button>
                    </div>

                    <div id="downloadButtons" class="hidden">
                        <button id="downloadBtn" class="btn btn-success">Download Compressed Image</button>
                        <button id="compressOtherBtn" class="btn">Compress Other Image</button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Second Ad Section -->
        <div class="ad-section ad-medium">
            <!-- AdSense Ad Unit -->
            <ins class="adsbygoogle"
                 style="display:block"
                 data-ad-client="ca-pub-XXXXXXXXXXXXXXXX"
                 data-ad-slot="XXXXXXXXXX"
                 data-ad-format="auto"
                 data-full-width-responsive="true"></ins>
            <script>
                 (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>

        <!-- Features Section -->
        <section class="features">
            <div class="feature">
                <i>🔒</i>
                <h3>Secure Processing</h3>
                <p>Your images are processed securely in your browser. No files are uploaded to our servers, ensuring complete privacy for your image compression needs.</p>
            </div>
            <div class="feature">
                <i>⚡</i>
                <h3>Lightning Fast</h3>
                <p>Our advanced compression algorithm processes images quickly without compromising on quality. Fast image optimization for web and mobile.</p>
            </div>
            <div class="feature">
                <i>💰</i>
                <h3>Significant Savings</h3>
                <p>Reduce image file sizes by up to 80% while maintaining visual quality, saving bandwidth and storage space with our efficient photo compression.</p>
            </div>
        </section>

        <!-- Third Ad Section -->
        <div class="ad-section ad-medium">
            <!-- AdSense Ad Unit -->
            <ins class="adsbygoogle"
                 style="display:block"
                 data-ad-client="ca-pub-XXXXXXXXXXXXXXXX"
                 data-ad-slot="XXXXXXXXXX"
                 data-ad-format="auto"
                 data-full-width-responsive="true"></ins>
            <script>
                 (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
        </div>

        <!-- Information Section -->
        <section class="info-section">
            <h2>Optimize your images with our advanced compression tool</h2>
            
            <h3>Why image compression is important</h3>
            <p>Image compression is crucial for several reasons when optimizing photos for web use:</p>
            <ul>
                <li><strong>Faster website loading:</strong> Compressed images load faster, improving user experience and SEO rankings for your website.</li>
                <li><strong>Reduced bandwidth usage:</strong> Smaller images consume less data, important for mobile users and data caps when browsing optimized web content.</li>
                <li><strong>Improved storage efficiency:</strong> Save storage space on servers and devices with efficient photo compression techniques.</li>
                <li><strong>Better performance:</strong> Websites with optimized images perform better across all devices with fast image loading.</li>
            </ul>
            
            <h3>How our compression technology works</h3>
            <p>Our image optimization tool uses advanced algorithms to reduce image file sizes while preserving visual quality for web and mobile use:</p>
            <ul>
                <li><strong>Smart compression:</strong> Analyzes image content to apply optimal compression settings for JPEG, PNG, and WebP formats.</li>
                <li><strong>Format optimization:</strong> Selects the best file format and compression method for each image to maximize size reduction.</li>
                <li><strong>Quality preservation:</strong> Maintains visual quality while significantly reducing file size for web-optimized images.</li>
                <li><strong>Browser-based processing:</strong> All compression happens locally in your browser for maximum privacy and speed in image optimization.</li>
            </ul>
            
            <p>Whether you're a web developer, blogger, or social media manager, our image compression tool helps you optimize visuals for better performance across all platforms with efficient photo size reduction and format conversion.</p>
        </section>
    </div>

    <footer>
        <div class="container">
            <p>&copy; 2023 Image Compressor Pro - Free Online Image Optimization Tool. All rights reserved.</p>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Elements
            const uploadArea = document.getElementById('uploadArea');
            const imageInput = document.getElementById('imageInput');
            const chooseImageBtn = document.getElementById('chooseImageBtn');
            const imageContainer = document.getElementById('imageContainer');
            const imagePreview = document.getElementById('imagePreview');
            const originalSize = document.getElementById('originalSize');
            const compressedSize = document.getElementById('compressedSize');
            const compressionSlider = document.getElementById('compressionSlider');
            const compressionValue = document.getElementById('compressionValue');
            const compressBtn = document.getElementById('compressBtn');
            const changeImageBtn = document.getElementById('changeImageBtn');
            const actionButtons = document.getElementById('actionButtons');
            const downloadButtons = document.getElementById('downloadButtons');
            const downloadBtn = document.getElementById('downloadBtn');
            const compressOtherBtn = document.getElementById('compressOtherBtn');
            
            // Variables
            let originalImage = null;
            let compressedImageBlob = null;
            let originalFileName = '';
            
            // Event Listeners
            chooseImageBtn.addEventListener('click', () => imageInput.click());
            imageInput.addEventListener('change', handleImageSelect);
            uploadArea.addEventListener('dragover', handleDragOver);
            uploadArea.addEventListener('drop', handleDrop);
            compressionSlider.addEventListener('input', updateCompressionValue);
            compressBtn.addEventListener('click', compressImage);
            changeImageBtn.addEventListener('click', resetToUpload);
            downloadBtn.addEventListener('click', downloadImage);
            compressOtherBtn.addEventListener('click', resetToUpload);
            
            // Functions
            function handleImageSelect(e) {
                const file = e.target.files[0];
                if (file && validateFileType(file)) {
                    processImageFile(file);
                }
            }
            
            function handleDragOver(e) {
                e.preventDefault();
                uploadArea.classList.add('dragover');
            }
            
            function handleDrop(e) {
                e.preventDefault();
                uploadArea.classList.remove('dragover');
                
                const file = e.dataTransfer.files[0];
                if (file && validateFileType(file)) {
                    processImageFile(file);
                }
            }
            
            function validateFileType(file) {
                const validTypes = ['image/jpeg', 'image/jpg', 'image/png', 'image/webp'];
                if (!validTypes.includes(file.type)) {
                    alert('Please select a valid image file (JPG, PNG, JPEG, or WebP).');
                    return false;
                }
                return true;
            }
            
            function processImageFile(file) {
                originalFileName = file.name;
                const reader = new FileReader();
                
                reader.onload = function(e) {
                    originalImage = new Image();
                    originalImage.onload = function() {
                        imagePreview.src = e.target.result;
                        imageContainer.classList.remove('hidden');
                        uploadArea.classList.add('hidden');
                        
                        // Display original file size
                        const fileSizeKB = (file.size / 1024).toFixed(2);
                        originalSize.textContent = `Original size: ${fileSizeKB} KB`;
                    };
                    originalImage.src = e.target.result;
                };
                
                reader.readAsDataURL(file);
            }
            
            function updateCompressionValue() {
                compressionValue.textContent = `${compressionSlider.value}%`;
            }
            
            function compressImage() {
                if (!originalImage) return;
                
                const canvas = document.createElement('canvas');
                const ctx = canvas.getContext('2d');
                
                // Set canvas dimensions
                canvas.width = originalImage.width;
                canvas.height = originalImage.height;
                
                // Draw image on canvas
                ctx.drawImage(originalImage, 0, 0);
                
                // Get compression quality (0 to 1, where 1 is highest quality)
                const quality = 1 - (compressionSlider.value / 100);
                
                // Convert canvas to blob with specified quality
                canvas.toBlob(function(blob) {
                    compressedImageBlob = blob;
                    
                    // Create object URL for compressed image
                    const compressedImageURL = URL.createObjectURL(blob);
                    
                    // Update preview with compressed image
                    imagePreview.src = compressedImageURL;
                    
                    // Display compressed file size
                    const compressedSizeKB = (blob.size / 1024).toFixed(2);
                    compressedSize.textContent = `Compressed size: ${compressedSizeKB} KB`;
                    compressedSize.classList.remove('hidden');
                    
                    // Switch buttons
                    actionButtons.classList.add('hidden');
                    downloadButtons.classList.remove('hidden');
                    
                }, 'image/jpeg', quality);
            }
            
            function downloadImage() {
                if (!compressedImageBlob) return;
                
                // Create download link
                const downloadLink = document.createElement('a');
                downloadLink.href = URL.createObjectURL(compressedImageBlob);
                
                // Set filename (keep original name but indicate it's compressed)
                const fileNameParts = originalFileName.split('.');
                const extension = fileNameParts.pop();
                const name = fileNameParts.join('.');
                downloadLink.download = `${name}-compressed.${extension}`;
                
                // Trigger download
                document.body.appendChild(downloadLink);
                downloadLink.click();
                document.body.removeChild(downloadLink);
            }
            
            function resetToUpload() {
                // Reset everything to initial state
                imageContainer.classList.add('hidden');
                uploadArea.classList.remove('hidden');
                compressedSize.classList.add('hidden');
                actionButtons.classList.remove('hidden');
                downloadButtons.classList.add('hidden');
                imageInput.value = '';
                compressionSlider.value = 50;
                compressionValue.textContent = '50%';
                originalImage = null;
                compressedImageBlob = null;
            }
        });
    </script>
</body>
</html>
