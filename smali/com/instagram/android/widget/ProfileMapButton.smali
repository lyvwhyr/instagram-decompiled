.class public Lcom/instagram/android/widget/ProfileMapButton;
.super Landroid/widget/Button;
.source "ProfileMapButton.java"


# static fields
.field public static final DISABLED_PAINT:Landroid/graphics/Paint;


# instance fields
.field private mShowAsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/instagram/android/widget/ProfileMapButton;->DISABLED_PAINT:Landroid/graphics/Paint;

    .line 23
    sget-object v0, Lcom/instagram/android/widget/ProfileMapButton;->DISABLED_PAINT:Landroid/graphics/Paint;

    const v1, -0x66111112

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/widget/ProfileMapButton;->mShowAsDisabled:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/widget/ProfileMapButton;->mShowAsDisabled:Z

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/widget/ProfileMapButton;->mShowAsDisabled:Z

    .line 38
    return-void
.end method

.method private setClickListener(Lcom/instagram/android/model/User;)V
    .locals 1
    .parameter "user"

    .prologue
    .line 65
    new-instance v0, Lcom/instagram/android/widget/ProfileMapButton$1;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/widget/ProfileMapButton$1;-><init>(Lcom/instagram/android/widget/ProfileMapButton;Lcom/instagram/android/model/User;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/ProfileMapButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 76
    iget-boolean v0, p0, Lcom/instagram/android/widget/ProfileMapButton;->mShowAsDisabled:Z

    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/facebook/e;->profile_button_top_offset:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/e;->profile_map_button_right_offset:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/facebook/e;->profile_button_bottom_offset:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lcom/instagram/android/widget/ProfileMapButton;->DISABLED_PAINT:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 87
    :cond_0
    return-void
.end method

.method public setUser(Lcom/instagram/android/model/User;)V
    .locals 3
    .parameter "user"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-static {}, Lcom/instagram/android/maps/util/MapsUtils;->hasGoogleMaps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iput-boolean v2, p0, Lcom/instagram/android/widget/ProfileMapButton;->mShowAsDisabled:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/ProfileMapButton;->setClickListener(Lcom/instagram/android/model/User;)V

    .line 61
    :goto_0
    invoke-virtual {p0}, Lcom/instagram/android/widget/ProfileMapButton;->invalidate()V

    .line 62
    return-void

    .line 49
    :cond_0
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instagram/android/model/User;->isSelf(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->canView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getGeoPhotoCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/instagram/android/model/User;->getGeoPhotoCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 51
    :cond_1
    iput-boolean v1, p0, Lcom/instagram/android/widget/ProfileMapButton;->mShowAsDisabled:Z

    .line 52
    invoke-direct {p0, p1}, Lcom/instagram/android/widget/ProfileMapButton;->setClickListener(Lcom/instagram/android/model/User;)V

    goto :goto_0

    .line 55
    :cond_2
    iput-boolean v2, p0, Lcom/instagram/android/widget/ProfileMapButton;->mShowAsDisabled:Z

    .line 56
    invoke-virtual {p0, v1}, Lcom/instagram/android/widget/ProfileMapButton;->setClickable(Z)V

    goto :goto_0
.end method
