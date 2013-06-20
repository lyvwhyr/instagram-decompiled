.class public Lcom/instagram/android/support/camera/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/instagram/android/support/camera/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/support/camera/BitmapManager;->sManager:Lcom/instagram/android/support/camera/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/support/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 74
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;
    .locals 2
    .parameter "t"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;

    .line 81
    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;-><init>(Lcom/instagram/android/support/camera/BitmapManager$1;)V

    .line 83
    iget-object v1, p0, Lcom/instagram/android/support/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized instance()Lcom/instagram/android/support/camera/BitmapManager;
    .locals 2

    .prologue
    .line 176
    const-class v1, Lcom/instagram/android/support/camera/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/instagram/android/support/camera/BitmapManager;->sManager:Lcom/instagram/android/support/camera/BitmapManager;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lcom/instagram/android/support/camera/BitmapManager;

    invoke-direct {v0}, Lcom/instagram/android/support/camera/BitmapManager;-><init>()V

    sput-object v0, Lcom/instagram/android/support/camera/BitmapManager;->sManager:Lcom/instagram/android/support/camera/BitmapManager;

    .line 179
    :cond_0
    sget-object v0, Lcom/instagram/android/support/camera/BitmapManager;->sManager:Lcom/instagram/android/support/camera/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "t"
    .parameter "options"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/support/camera/BitmapManager$State;->ALLOW:Lcom/instagram/android/support/camera/BitmapManager$State;

    iput-object v1, v0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mState:Lcom/instagram/android/support/camera/BitmapManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 3
    .parameter "t"

    .prologue
    const/4 v1, 0x1

    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-nez v0, :cond_0

    .line 114
    :goto_0
    monitor-exit p0

    return v1

    .line 113
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mState:Lcom/instagram/android/support/camera/BitmapManager$State;

    sget-object v2, Lcom/instagram/android/support/camera/BitmapManager$State;->CANCEL:Lcom/instagram/android/support/camera/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    .line 114
    goto :goto_0

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;Landroid/content/ContentResolver;)V
    .locals 4
    .parameter "t"
    .parameter "cr"

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/instagram/android/support/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;

    move-result-object v1

    .line 123
    sget-object v0, Lcom/instagram/android/support/camera/BitmapManager$State;->CANCEL:Lcom/instagram/android/support/camera/BitmapManager$State;

    iput-object v0, v1, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mState:Lcom/instagram/android/support/camera/BitmapManager$State;

    .line 124
    iget-object v0, v1, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, v1, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 129
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    :goto_0
    :try_start_2
    iget-boolean v0, v1, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V

    .line 137
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V

    .line 138
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 141
    :catch_0
    move-exception v0

    .line 144
    :goto_1
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 122
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "fd"
    .parameter "options"

    .prologue
    const/4 v0, 0x0

    .line 187
    iget-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v1, :cond_0

    .line 201
    :goto_0
    return-object v0

    .line 191
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 192
    invoke-virtual {p0, v1}, Lcom/instagram/android/support/camera/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 193
    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not allowed to decode."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/instagram/android/support/camera/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 198
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    invoke-virtual {p0, v1}, Lcom/instagram/android/support/camera/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method public getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "cr"
    .parameter "origId"
    .parameter "kind"
    .parameter "options"
    .parameter "isVideo"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 149
    invoke-direct {p0, v1}, Lcom/instagram/android/support/camera/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;

    move-result-object v2

    .line 151
    invoke-virtual {p0, v1}, Lcom/instagram/android/support/camera/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    const-string v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is not allowed to decode."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_0
    return-object v0

    .line 157
    :cond_0
    :try_start_0
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 158
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, v2, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 159
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    if-eqz p6, :cond_1

    .line 161
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, p4, v3}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 168
    monitor-enter v2

    .line 169
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, v2, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 171
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 159
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 168
    :catchall_2
    move-exception v0

    monitor-enter v2

    .line 169
    const/4 v1, 0x0

    :try_start_6
    iput-boolean v1, v2, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 171
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    .line 164
    :cond_1
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, p4, v3}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    .line 168
    monitor-enter v2

    .line 169
    const/4 v1, 0x0

    :try_start_8
    iput-boolean v1, v2, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mThumbRequesting:Z

    .line 170
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 171
    monitor-exit v2

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/support/camera/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;

    .line 99
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/instagram/android/support/camera/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
