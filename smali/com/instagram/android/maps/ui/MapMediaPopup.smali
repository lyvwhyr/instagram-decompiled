.class public Lcom/instagram/android/maps/ui/MapMediaPopup;
.super Landroid/widget/PopupWindow;
.source "MapMediaPopup.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MapMediaPopup"


# instance fields
.field private generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

.field private mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field private mContentView:Landroid/widget/FrameLayout;

.field private final mContext:Landroid/app/Activity;

.field private mDismissRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mMedias:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalView:Landroid/view/View;

.field private mOtherPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

.field private mParentView:Landroid/view/View;

.field private mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "parentView"
    .parameter "originalView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, medias:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v1, -0x1

    .line 48
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 49
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContext:Landroid/app/Activity;

    .line 50
    iput-object p3, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mParentView:Landroid/view/View;

    .line 51
    iput-object p4, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mMedias:Ljava/util/List;

    .line 54
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 55
    invoke-virtual {p0, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->configure(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View;Lcom/instagram/android/maps/ui/PhotoOverlay;)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "parentView"
    .parameter "photoOverlay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;",
            "Landroid/view/View;",
            "Lcom/instagram/android/maps/ui/PhotoOverlay;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, medias:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v1, -0x1

    .line 60
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 61
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContext:Landroid/app/Activity;

    .line 62
    iput-object p3, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mParentView:Landroid/view/View;

    .line 63
    iput-object p4, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p2, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mMedias:Ljava/util/List;

    .line 66
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->configure(Ljava/util/List;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/PhotoOverlay;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->fadeOut()V

    return-void
.end method

.method static synthetic access$1100(Lcom/instagram/android/maps/ui/MapMediaPopup;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->translatePhotosBackToPosition(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->handleClick(Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->translateAndFadeIn()V

    return-void
.end method

.method static synthetic access$700(Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    return-object v0
.end method

.method static synthetic access$702(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/maps/ui/MapMediaPopup;)Lcom/instagram/android/maps/ui/MapMediaPopup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    return-object p1
.end method

.method static synthetic access$800(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/instagram/android/maps/ui/MapMediaPopup;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method private addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "media"
    .parameter "viewGroup"

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChildInternal(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    move-result-object v0

    .line 381
    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$9;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/maps/ui/MapMediaPopup$9;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    return-void
.end method

.method private addChildInternal(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;
    .locals 5
    .parameter "media"
    .parameter "viewGroup"

    .prologue
    const/4 v4, 0x0

    .line 390
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->constrained_image_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    .line 391
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 392
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/e;->map_media_inner_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 394
    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 396
    :cond_0
    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    sget v1, Lcom/facebook/g;->constrained_image_view:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/widget/ConstrainedImageView;

    .line 399
    new-instance v2, Lcom/instagram/android/maps/ui/MapMediaPopup$10;

    invoke-direct {v2, p0, v1, p1}, Lcom/instagram/android/maps/ui/MapMediaPopup$10;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/widget/ConstrainedImageView;Lcom/instagram/android/model/GeoMedia;)V

    invoke-virtual {v1, v2}, Lcom/instagram/android/widget/ConstrainedImageView;->setOnMeasureListener(Lcom/instagram/android/widget/OnMeasureListener;)V

    .line 405
    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->invalidate()V

    .line 406
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 408
    return-object v0
.end method

.method private addInfoButtonChild(Lcom/instagram/android/model/GeoMedia;Landroid/widget/LinearLayout;)V
    .locals 5
    .parameter "media"
    .parameter "linearLayout"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->animated_info_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    .line 227
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 228
    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    sget v1, Lcom/facebook/g;->animated_info_button:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 230
    new-instance v2, Lcom/instagram/android/maps/ui/MapMediaPopup$3;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/maps/ui/MapMediaPopup$3;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method private addMoreButtonChild(Ljava/util/List;Landroid/widget/LinearLayout;)V
    .locals 7
    .parameter
    .parameter "linearLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;",
            "Landroid/widget/LinearLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, media:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v6, 0x0

    .line 210
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->animated_map_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    .line 211
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v6, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 212
    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    sget v1, Lcom/facebook/g;->animated_map_button:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 214
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/facebook/k;->show_all_x_photos:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 215
    new-instance v2, Lcom/instagram/android/maps/ui/MapMediaPopup$2;

    invoke-direct {v2, p0, p1}, Lcom/instagram/android/maps/ui/MapMediaPopup$2;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 223
    return-void
.end method

.method private addSingleChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "media"
    .parameter "viewGroup"

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChildInternal(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    move-result-object v0

    .line 371
    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup$8;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    return-void
.end method

.method private addView(Landroid/view/View;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getGeneratePhotoLayout()Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 513
    return-void
.end method

.method private applyAnimationToParentFrame(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    return-void
.end method

.method private constructBaseLinearLayout()Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 272
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 273
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/e;->map_media_centering_offset:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 274
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    return-object v0
.end method

.method private constructLinearLayout(Z)Landroid/widget/LinearLayout;
    .locals 5
    .parameter "includeMargin"

    .prologue
    const/4 v4, 0x0

    .line 280
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 281
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 282
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 283
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/e;->map_media_inner_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 284
    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 288
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    return-object v0
.end method

.method private dismissWithAnimation()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->translateAndFadeIn()V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getTopLeftPixelPoint()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getTopLeftPixelPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->translatePhotosBackToPosition(II)V

    goto :goto_0
.end method

.method private fadeOut()V
    .locals 2

    .prologue
    .line 464
    const/4 v0, 0x4

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->setVisibility(II)V

    .line 465
    return-void
.end method

.method private getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private getGeneratePhotoLayout()Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;
    .locals 4

    .prologue
    const/16 v3, 0x11

    .line 293
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    .line 295
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setOrientation(I)V

    .line 296
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-virtual {v0, v3}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setGravity(I)V

    .line 297
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 298
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getPadding()I

    move-result v1

    .line 299
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 300
    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getSquareSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setOriginalSize(I)V

    .line 304
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getTopLeftPixelPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setStartX(I)V

    .line 305
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-virtual {v1}, Lcom/instagram/android/maps/ui/PhotoOverlay;->getTopLeftPixelPoint()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setStartY(F)V

    .line 306
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$4;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$4;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setAnimationStartListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;)V

    .line 312
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$5;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$5;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;)V

    .line 350
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->replaceWithFrameLayout()V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    return-object v0

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 326
    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 327
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setOriginalSize(I)V

    .line 328
    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setStartX(I)V

    .line 329
    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setStartY(F)V

    .line 330
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$6;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$6;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setAnimationStartListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationStartListener;)V

    .line 336
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->generatePhotoLayout:Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$7;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$7;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;)V

    goto :goto_0
.end method

.method private getPadding()I
    .locals 2

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->map_media_outer_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getStatusBarHeight()I
    .locals 3

    .prologue
    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 363
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 364
    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 366
    sub-int v0, v1, v0

    return v0
.end method

.method private handleClick(Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V
    .locals 2
    .parameter "geoMedia"
    .parameter "childView"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOtherPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$11;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$11;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 458
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mMedias:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 423
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/maps/ui/MapMediaPopup$12;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;Lcom/instagram/android/model/GeoMedia;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$13;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$13;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private prefetchImages(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, media:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 191
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 192
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 193
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/e;->maps_full_frame_total_width_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int v3, v0, v1

    move v1, v2

    .line 194
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/16 v0, 0x9

    if-ge v1, v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/mediacache/IgBitmapCache;->getInstance(Landroid/content/Context;)Lcom/instagram/android/mediacache/IgBitmapCache;

    move-result-object v4

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-virtual {v0, v3}, Lcom/instagram/android/model/GeoMedia;->getUrlForSize(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v4, v5}, Lcom/instagram/android/mediacache/IgBitmapCache;->preLoadBitmaps([Ljava/lang/String;)V

    .line 194
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private setVisibility(II)V
    .locals 4
    .parameter "visibility"
    .parameter "i"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$14;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/maps/ui/MapMediaPopup$14;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;I)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    return-void
.end method

.method private translateAndFadeIn()V
    .locals 3

    .prologue
    .line 477
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->translatePhotosToOriginalPosition()V

    .line 479
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOtherPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/ui/MapMediaPopup;->setVisibility(II)V

    .line 492
    return-void
.end method

.method private translatePhotosBackToPosition(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 242
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->translateBack(II)V

    .line 242
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method private translatePhotosToOriginalPosition()V
    .locals 2

    .prologue
    .line 249
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/IgAnimatingMapItem;->translateBack()V

    .line 249
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 253
    :cond_0
    return-void
.end method


# virtual methods
.method protected configure(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/model/GeoMedia;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, media:Ljava/util/List;,"Ljava/util/List<Lcom/instagram/android/model/GeoMedia;>;"
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 72
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    if-eqz v0, :cond_0

    .line 73
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/facebook/d;->dialog_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getGeneratePhotoLayout()Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/maps/ui/MapMediaPopup$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/MapMediaPopup$1;-><init>(Lcom/instagram/android/maps/ui/MapMediaPopup;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructBaseLinearLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 90
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addSingleChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 91
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0, v4}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 93
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addInfoButtonChild(Lcom/instagram/android/model/GeoMedia;Landroid/widget/LinearLayout;)V

    .line 94
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 183
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 184
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->prefetchImages(Ljava/util/List;)V

    .line 187
    :cond_2
    return-void

    .line 95
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 96
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 97
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 98
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 99
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 100
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 101
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 102
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 103
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 104
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 105
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 106
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_6

    .line 107
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 108
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 109
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 110
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 111
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 112
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 113
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 114
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 115
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 116
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 117
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 119
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 120
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 121
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 122
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 123
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_8

    .line 124
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 125
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 126
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 127
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 128
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 129
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 130
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 131
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 132
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 133
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_9

    .line 134
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 135
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 136
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 137
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 138
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 139
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 140
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 141
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 142
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 143
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 144
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 145
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 146
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_a

    .line 147
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 148
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 149
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 150
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 151
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 152
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 153
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 154
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 155
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 156
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 157
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 158
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 159
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 160
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    .line 161
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 162
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 163
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 164
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 165
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 166
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 167
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 168
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 169
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 170
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 171
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 172
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 173
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/model/GeoMedia;

    invoke-direct {p0, v0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addChild(Lcom/instagram/android/model/GeoMedia;Landroid/view/ViewGroup;)V

    .line 174
    invoke-direct {p0, v1}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    .line 175
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_1

    .line 176
    invoke-direct {p0, v3}, Lcom/instagram/android/maps/ui/MapMediaPopup;->constructLinearLayout(Z)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 177
    invoke-direct {p0, p1, v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addMoreButtonChild(Ljava/util/List;Landroid/widget/LinearLayout;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 528
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 529
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mPhotoOverlay:Lcom/instagram/android/maps/ui/PhotoOverlay;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/PhotoOverlay;->show()V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOriginalView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mDismissRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 538
    :cond_2
    return-void
.end method

.method public dismissAll()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismiss()V

    .line 523
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismiss()V

    .line 524
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 261
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContentView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 262
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContentView:Landroid/widget/FrameLayout;

    .line 263
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContentView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    invoke-super {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mContentView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mChildPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    invoke-virtual {v0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->onBackPressed()V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->dismissWithAnimation()V

    goto :goto_0
.end method

.method public setAnimationPreFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getGeneratePhotoLayout()Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationPreFinishListener;)V

    .line 551
    return-void
.end method

.method public setDismissRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "dismissRunnable"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mDismissRunnable:Ljava/lang/Runnable;

    .line 542
    return-void
.end method

.method public setFinishedAnimationListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 545
    invoke-direct {p0}, Lcom/instagram/android/maps/ui/MapMediaPopup;->getGeneratePhotoLayout()Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout;->setReverAnimationFinishListener(Lcom/instagram/android/maps/ui/IgGeneratePhotoLayout$AnimationFinishListener;)V

    .line 546
    return-void
.end method

.method public setOtherPopup(Lcom/instagram/android/maps/ui/MapMediaPopup;)V
    .locals 0
    .parameter "otherPopup"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/instagram/android/maps/ui/MapMediaPopup;->mOtherPopup:Lcom/instagram/android/maps/ui/MapMediaPopup;

    .line 517
    return-void
.end method
