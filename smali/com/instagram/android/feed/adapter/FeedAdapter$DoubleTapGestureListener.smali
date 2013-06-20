.class Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;
.super Ljava/lang/Object;
.source "FeedAdapter.java"

# interfaces
.implements Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$FeedMediaOnTouchListener;


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

.field private mListener:Lcom/instagram/android/listener/DoubleTapMediaListener;

.field private mTouchedMedia:Lcom/instagram/android/model/Media;

.field private mTouchedMediaIndex:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;


# direct methods
.method public constructor <init>(Lcom/instagram/android/feed/adapter/FeedAdapter;Lcom/instagram/android/listener/DoubleTapMediaListener;)V
    .locals 2
    .parameter
    .parameter "listener"

    .prologue
    .line 813
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 814
    iput-object p2, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mListener:Lcom/instagram/android/listener/DoubleTapMediaListener;

    .line 815
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;

    invoke-direct {v1, p0}, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener$DoubleTapGestureDetector;-><init>(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 816
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 817
    return-void
.end method

.method static synthetic access$1300(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/model/Media;
    .locals 1
    .parameter "x0"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMediaIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;)Lcom/instagram/android/listener/DoubleTapMediaListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mListener:Lcom/instagram/android/listener/DoubleTapMediaListener;

    return-object v0
.end method


# virtual methods
.method public onTouch(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "holder"
    .parameter "event"

    .prologue
    .line 821
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    .line 822
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mHolder:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;

    invoke-virtual {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;

    move-result-object v0

    sget v1, Lcom/facebook/g;->key_list_position:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/mediacache/IgProgressImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMediaIndex:Ljava/lang/Integer;

    .line 823
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->this$0:Lcom/instagram/android/feed/adapter/FeedAdapter;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMediaIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/adapter/FeedAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/Media;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mTouchedMedia:Lcom/instagram/android/model/Media;

    .line 825
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/FeedAdapter$DoubleTapGestureListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
