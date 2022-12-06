# Usage: extract_frames.sh video_file

if [ $# -ne 1 ]; then
    echo "Usage: $0 video_file"
    exit 1
fi

video_file=$1
if [ ! -f $video_file ]; then
    echo "File not found: $video_file"
    exit 1
fi

# extract frames from video
ffmpeg -i $video_file frame_%04d.png
