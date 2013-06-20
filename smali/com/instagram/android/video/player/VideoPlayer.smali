.class public interface abstract Lcom/instagram/android/video/player/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# virtual methods
.method public abstract bindView(Landroid/widget/FrameLayout;I)V
.end method

.method public abstract canPlay()Z
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isPlaybackCompleted()Z
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract removeView()V
.end method

.method public abstract reset()V
.end method

.method public abstract setFileDescriptor(Ljava/io/FileDescriptor;)V
.end method

.method public abstract setOnCompletionListener(Lcom/instagram/android/video/player/VideoPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/instagram/android/video/player/VideoPlayer$OnErrorListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/instagram/android/video/player/VideoPlayer$OnPreparedListener;)V
.end method

.method public abstract setUrl(Ljava/lang/String;)V
.end method
