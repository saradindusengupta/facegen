# Local
python3 inference.py --mouth_region_size=256 --source_video_path=/home/saradindu/dev/facegen/src/DINet_optimized/asserts/examples/25fps/test1.mp4 --source_openface_landmark_path=/home/saradindu/dev/facegen/src/DINet_optimized/asserts/examples/test1.csv --driving_audio_path=/home/saradindu/dev/facegen/src/DINet_optimized/asserts/examples/driving_audio_1.wav --pretrained_clip_DINet_path=/home/saradindu/dev/facegen/src/DINet_optimized/asserts/clip_training_DINet_256mouth.pth --Wav2vecDS_model_path="/home/saradindu/dev/facegen/src/DINet_optimized/asserts/wav2vecDS.pt"

# Paperspace run with output dir mentioned

python3 inference.py --mouth_region_size=256 --source_video_path=/datasets/dinet_optimized_asserts/asserts/test_videos/25fps/w3-25fps.mp4 --source_openface_landmark_path=/datasets/dinet_optimized_asserts/asserts/test_videos/25fps/input_video.csv --driving_audio_path=/datasets/dinet_optimized_asserts/asserts/examples/driving_audio_1.wav --pretrained_clip_DINet_path=/datasets/dinet_optimized_asserts/asserts/clip_training_DINet_256mouth.pth --Wav2vecDS_model_path="/datasets/dinet_optimized_asserts/asserts/wav2vecDS.pt" --res_video_dir="/notebooks/artifacts/inferenced_data/"

# Paperspace run without output directory mentioned
python3 inference.py --mouth_region_size=256 --source_video_path=/datasets/dinet_optimized_asserts/asserts/examples/25fps/test5.mp4 --source_openface_landmark_path=/datasets/dinet_optimized_asserts/asserts/examples/test5.csv --driving_audio_path=/datasets/dinet_optimized_asserts/asserts/examples/driving_audio_5.wav --pretrained_clip_DINet_path=/datasets/dinet_optimized_asserts/asserts/clip_training_DINet_256mouth.pth --Wav2vecDS_model_path="/datasets/dinet_optimized_asserts/asserts/wav2vecDS.pt"
