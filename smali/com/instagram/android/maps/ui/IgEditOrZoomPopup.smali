.class public Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;
.super Landroid/widget/PopupWindow;
.source "IgEditOrZoomPopup.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;Lcom/google/android/maps/Projection;)V
    .locals 7
    .parameter "photoMapsActivity"
    .parameter "cluster"
    .parameter "projection"

    .prologue
    const/4 v1, -0x1

    const/4 v4, -0x2

    const/4 v6, 0x0

    .line 30
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->menu_edit_or_zoom:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 36
    sget v1, Lcom/facebook/g;->menu_edit_or_zoom_button_zoom:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v2

    invoke-virtual {p2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMinGeoPoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->canZoom(Lcom/instagram/android/maps/clustering/QuadtreePoint;Lcom/instagram/android/maps/clustering/QuadtreePoint;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 37
    sget v1, Lcom/facebook/g;->menu_edit_or_zoom_button_zoom:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$1;-><init>(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    sget v1, Lcom/facebook/g;->menu_edit_or_zoom_button_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$2;

    invoke-direct {v2, p0, p2}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$2;-><init>(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;Lcom/instagram/android/maps/clustering/QuadtreeCluster;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p2}, Lcom/instagram/android/maps/clustering/QuadtreeCluster;->getMaxValuePoint()Lcom/instagram/android/maps/clustering/QuadtreePoint;

    move-result-object v1

    .line 54
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 55
    invoke-virtual {v1}, Lcom/instagram/android/maps/clustering/QuadtreePoint;->toGeoPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    invoke-interface {p3, v1, v2}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 57
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {v3, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 60
    const-string v1, "window"

    invoke-virtual {p1, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 61
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 62
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v5, v5, 0x2

    if-le v1, v5, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/facebook/f;->menu_background:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    iget v1, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->getVerticalOffset()I

    move-result v5

    add-int/2addr v1, v5

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, v4, v2

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->getHorizontalOffset()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v3, v6, v1, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 70
    const/16 v1, 0x35

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->getContentView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;

    invoke-direct {v2, p0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup$3;-><init>(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    return-void

    .line 72
    :cond_0
    iget v1, v2, Landroid/graphics/Point;->x:I

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->getHorizontalOffset()I

    move-result v4

    sub-int/2addr v1, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->getVerticalOffset()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3, v1, v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 76
    const/16 v1, 0x33

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {p1}, Lcom/instagram/android/maps/PhotoMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/f;->menu_background_mirror:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/instagram/android/maps/ui/IgEditOrZoomPopup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getHorizontalOffset()I
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->maps_edit_or_zoom_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getVerticalOffset()I
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/e;->maps_edit_or_zoom_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
