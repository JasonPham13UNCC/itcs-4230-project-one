if (video != -1) {
    var videoData = video_draw();
    var videoStatus = video_get_status();
    if (videoStatus == video_status_playing) {
        // Video is playing
        draw_surface(videoData[1], 0, 0);
    } else if (videoStatus == video_status_closed) {
        // Video finished or closed
        room_goto(rm_game);
    }
}
