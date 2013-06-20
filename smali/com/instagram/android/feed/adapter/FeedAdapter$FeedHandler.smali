.class Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;
.super Landroid/os/Handler;
.source "FeedAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    .line 181
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/feed/adapter/FeedAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    sget-object v0, Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;->FEED:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mViewMode:Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$200(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/FeedAdapter$ViewMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 189
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "MESSAGE_DATA_MEDIA_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->findRowForMediaId(Ljava/lang/String;)Landroid/view/View;
    invoke-static {v1, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$300(Lcom/instagram/android/feed/adapter/FeedAdapter;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    sget v1, Lcom/facebook/g;->row_feed_photo_tags_indicator:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 194
    sget v2, Lcom/facebook/g;->row_feed_photo_people_tagging:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/widget/PeopleTagsLayout;

    .line 197
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->screenRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$400(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->fadeOutView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$500(Lcom/instagram/android/feed/adapter/FeedAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 206
    :pswitch_1
    const-string v0, "FeedAdapter"

    const-string v1, "Playing video"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_0
    invoke-static {}, Lcom/instagram/android/mediacache/IgVideoCache;->getInstance()Lcom/instagram/android/mediacache/IgVideoCache;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Lcom/instagram/android/mediacache/IgVideoCache;->getVideo(Landroid/net/Uri;)Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/instagram/android/video/player/VideoPlayer;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 212
    invoke-virtual {v0}, Lcom/instagram/android/mediacache/IgVideoCache$VideoEntry;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string v0, "FeedAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set video for uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :pswitch_2
    const-string v0, "FeedAdapter"

    const-string v1, "Playing local video"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/instagram/android/video/player/VideoPlayer;->setFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 224
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 225
    :catch_1
    move-exception v0

    .line 226
    const-string v1, "FeedAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play local video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 227
    :catch_2
    move-exception v0

    .line 228
    const-string v1, "FeedAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to play local video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 233
    :pswitch_3
    const-string v0, "FeedAdapter"

    const-string v1, "Stopping video"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->getVideoPlayer()Lcom/instagram/android/video/player/VideoPlayer;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$600(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/video/player/VideoPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/android/video/player/VideoPlayer;->reset()V

    goto/16 :goto_0

    .line 238
    :pswitch_4
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #calls: Lcom/instagram/android/feed/adapter/FeedAdapter;->tryAutoplay()V
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$700(Lcom/instagram/android/feed/adapter/FeedAdapter;)V

    goto/16 :goto_0

    .line 242
    :pswitch_5
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    const/4 v1, 0x1

    #setter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mEnableVideoTouches:Z
    invoke-static {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$802(Lcom/instagram/android/feed/adapter/FeedAdapter;Z)Z

    goto/16 :goto_0

    .line 246
    :pswitch_6
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mCoverPhotoFadeInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$900(Lcom/instagram/android/feed/adapter/FeedAdapter;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/FeedAdapter;->mVideoHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/FeedAdapter;->access$1000(Lcom/instagram/android/feed/adapter/FeedAdapter;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;

    move-result-object v0

    sget-object v1, Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;->PLAY:Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;

    invoke-virtual {v0, v1}, Lcom/instagram/android/video/ui/MediaActionsView;->animateToState(Lcom/instagram/android/video/ui/MediaActionsView$VideoIconState;)V

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public sendPlayMessage(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/feed/adapter/FeedAdapter$FeedHandler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    return-void
.end method
