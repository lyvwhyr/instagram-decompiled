.class public Lcom/instagram/android/video/render/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "log"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    const-string v0, "vpx"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    const-string v0, "ogg"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    const-string v0, "vorbis"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    const-string v0, "glencode"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native configureAudioCodec(Ljava/lang/String;IID)I
.end method

.method public static native configureCodec(Ljava/lang/String;II)I
.end method

.method public static native encodeAudioBuffer(Ljava/nio/ByteBuffer;I)I
.end method

.method public static native encodeFrame(JJ)I
.end method

.method public static native finishEncoding()I
.end method

.method public static native finishEncodingAudio()I
.end method

.method public static native writeAudioPacket(Ljava/nio/ByteBuffer;IJ)I
.end method
