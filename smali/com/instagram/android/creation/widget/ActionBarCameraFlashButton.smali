.class public Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;
.super Lcom/instagram/android/creation/widget/ActionBarHighlightButton;
.source "ActionBarCameraFlashButton.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionBarCameraFlashButton"


# instance fields
.field private mCurrentMode:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

.field private mFlashAutoDrawable:Landroid/graphics/drawable/Drawable;

.field private mFlashOffDrawable:Landroid/graphics/drawable/Drawable;

.field private mFlashOnDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnClickListener:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mOnClickListener:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;

    .line 38
    sget-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->OFF:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    iput-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mCurrentMode:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    .line 42
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mOnClickListener:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;

    .line 38
    sget-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->OFF:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    iput-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mCurrentMode:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    .line 47
    invoke-direct {p0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mCurrentMode:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    return-object v0
.end method

.method static synthetic access$100(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mOnClickListener:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;

    return-object v0
.end method

.method private getDrawable(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "mode"

    .prologue
    .line 104
    sget-object v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$3;->$SwitchMap$com$instagram$android$creation$widget$ActionBarCameraFlashButton$FlashMode:[I

    invoke-virtual {p1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mFlashOffDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mFlashOnDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mFlashAutoDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mFlashOffDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    sget v1, Lcom/facebook/f;->action_bar_glyph_flash_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mFlashOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    sget v1, Lcom/facebook/f;->action_bar_glyph_flash_auto:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mFlashAutoDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    new-instance v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$1;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$1;-><init>(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)V

    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    new-instance v0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;

    invoke-direct {v0, p0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$2;-><init>(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;)V

    invoke-super {p0, v0}, Lcom/instagram/android/creation/widget/ActionBarHighlightButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use FlashButtonOnClickListener"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnClickListener(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mOnClickListener:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashButtonOnClickListener;

    .line 101
    return-void
.end method

.method public showMode(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mCurrentMode:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    if-ne p1, v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->getDrawable(Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iput-object p1, p0, Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton;->mCurrentMode:Lcom/instagram/android/creation/widget/ActionBarCameraFlashButton$FlashMode;

    goto :goto_0
.end method
