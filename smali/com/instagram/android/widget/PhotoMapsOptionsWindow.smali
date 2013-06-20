.class public Lcom/instagram/android/widget/PhotoMapsOptionsWindow;
.super Landroid/widget/PopupWindow;
.source "PhotoMapsOptionsWindow.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 7
    .parameter "context"
    .parameter "anchorView"
    .parameter "photoMapsActivity"

    .prologue
    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v3, -0x2

    .line 29
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->mHandler:Landroid/os/Handler;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/h;->menu_maps:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 34
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x5

    invoke-direct {v2, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/facebook/e;->menu_maps_top_offset:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->menu_maps_right_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v1, v3, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 41
    invoke-virtual {p0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    sget v1, Lcom/facebook/g;->menu_maps_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/facebook/k;->cancel:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 46
    sget v1, Lcom/facebook/g;->menu_maps_edit:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;

    invoke-direct {v1, p0, p3}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;-><init>(Lcom/instagram/android/widget/PhotoMapsOptionsWindow;Lcom/instagram/android/maps/PhotoMapsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;-><init>(Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void

    .line 43
    :cond_0
    sget v2, Lcom/facebook/k;->edit_photos_on_map:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
