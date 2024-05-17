import os
import cv2
import argparse

def resample_videos(input_dir, output_dir, target_fps):
    os.makedirs(output_dir, exist_ok=True)

    files = os.listdir(input_dir)
    
    for file in files:
        if file.endswith(".mp4"):
            video_path = os.path.join(input_dir, file)
            print("Processing file : ", video_path)
            cap = cv2.VideoCapture(video_path)

            fps = cap.get(cv2.CAP_PROP_FPS)
            width = int(cap.get(cv2.CAP_PROP_FRAME_WIDTH))
            height = int(cap.get(cv2.CAP_PROP_FRAME_HEIGHT))

            out_path = os.path.join(output_dir, file)
            out = cv2.VideoWriter(out_path, cv2.VideoWriter_fourcc(*'mp4v'), target_fps, (width, height))

            while True:
                ret, frame = cap.read()
                if not ret:
                    break
                out.write(frame)

            cap.release()
            out.release()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Resample videos in a directory to a target fps.")
    parser.add_argument("input_dir", type=str, help="Input directory path containing videos.")
    parser.add_argument("output_dir", type=str, help="Output directory path to save resampled videos.")
    parser.add_argument("target_fps", type=int, help="Target frames per second (fps) for resampling.")
    args = parser.parse_args()

    # Resample videos
    resample_videos(args.input_dir, args.output_dir, args.target_fps)
