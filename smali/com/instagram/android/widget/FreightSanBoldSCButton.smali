.class public Lcom/instagram/android/widget/FreightSanBoldSCButton;
.super Landroid/widget/Button;
.source "FreightSanBoldSCButton.java"


# static fields
.field private static mMethod:Lcom/instagram/android/text/method/AllCapsTransformationMethod;

.field private static mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-direct {p0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->init()V

    .line 31
    return-void
.end method

.method private getAllCapsTransformation()Lcom/instagram/android/text/method/AllCapsTransformationMethod;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/instagram/android/widget/FreightSanBoldSCButton;->mMethod:Lcom/instagram/android/text/method/AllCapsTransformationMethod;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/instagram/android/text/method/AllCapsTransformationMethod;

    invoke-virtual {p0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/android/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/android/widget/FreightSanBoldSCButton;->mMethod:Lcom/instagram/android/text/method/AllCapsTransformationMethod;

    .line 46
    :cond_0
    sget-object v0, Lcom/instagram/android/widget/FreightSanBoldSCButton;->mMethod:Lcom/instagram/android/text/method/AllCapsTransformationMethod;

    return-object v0
.end method

.method private getCustomTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/instagram/android/widget/FreightSanBoldSCButton;->mTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "FreigSanBolSC.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/instagram/android/widget/FreightSanBoldSCButton;->mTypeface:Landroid/graphics/Typeface;

    .line 53
    :cond_0
    sget-object v0, Lcom/instagram/android/widget/FreightSanBoldSCButton;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/util/ViewUtil;->hasUnsupportedCharForFreightSanBoldSC(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->getCustomTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->getAllCapsTransformation()Lcom/instagram/android/text/method/AllCapsTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 40
    return-void

    .line 37
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/instagram/android/widget/FreightSanBoldSCButton;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method
