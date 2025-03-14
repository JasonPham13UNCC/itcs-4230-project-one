if (video != -1) {
    var _videoData = video_draw();
    var _videoStatus = video_get_status(); // Get the video status

    if (_videoStatus == video_status_playing) {
        // Video is playing
        draw_surface(_videoData[1], 0, 0);
    } else if (_videoStatus == video_status_closed) {
        // Video finished or closed
        room_goto(rm_game);
    }
}
