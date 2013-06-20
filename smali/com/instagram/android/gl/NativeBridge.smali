.class public Lcom/instagram/android/gl/NativeBridge;
.super Ljava/lang/Object;
.source "NativeBridge.java"


# static fields
.field public static final MAX_RENDER_SIZE_LOW_END:I = 0x400

.field public static final SIZE_UNSPECIFIED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "NativeBridge"

.field private static sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static createTexture(Ljava/lang/String;)I
    .locals 5
    .parameter "filePath"

    .prologue
    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    sget-object v1, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v1}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 145
    const-string v2, "NativeBridge"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to decode/load texture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_0
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_0
    const-string v1, ".pkm"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->makeETC1Texture(Ljava/io/InputStream;)I

    move-result v1

    .line 169
    :goto_1
    if-eqz v0, :cond_0

    .line 170
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :cond_0
    :goto_2
    return v1

    .line 154
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filters/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    const-string v2, "NativeBridge"

    const-string v3, "Failed to open input stream"

    invoke-static {v2, v3, v1}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 164
    invoke-static {v2}, Lcom/instagram/android/gl/GLHelper;->makeBitmapTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 165
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 172
    :catch_1
    move-exception v0

    .line 173
    const-string v2, "NativeBridge"

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v0}, Lcom/facebook/c/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static disableAdvancedResize()V
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/Preferences;->getInstance(Landroid/content/Context;)Lcom/instagram/android/Preferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/Preferences;->setHasAdvancedResizeEnabled(Z)Z

    .line 122
    return-void
.end method

.method public static getBordersEnabled()Z
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getBordersEnabled()Z

    move-result v0

    return v0
.end method

.method public static getCameraOrientation()I
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getCameraOrientation()I

    move-result v0

    return v0
.end method

.method public static getCropBottom()I
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getCroppingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 301
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCropLeft()I
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getCroppingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 274
    if-eqz v0, :cond_0

    .line 275
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCropRight()I
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getCroppingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCropTop()I
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getCroppingRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 287
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentFilter()I
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getCurrentFilter()I

    move-result v0

    return v0
.end method

.method public static getCurrentRotation()I
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getCurrentRotation()I

    move-result v0

    return v0
.end method

.method public static getDisplayBasedMaxTextureSize()I
    .locals 3

    .prologue
    .line 227
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 228
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 230
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v1, 0x140

    if-ne v0, v1, :cond_0

    .line 231
    const/16 v0, 0x400

    .line 233
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public static native getFilters()[Lcom/instagram/android/gl/NativeFilter;
.end method

.method public static native getInstagramString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getIsLowEndDevice()Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 325
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5360"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5830M"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5830i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5830C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5570I"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5363"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5367"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S6102"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S6102B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5839i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S6802B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Vodafone Smart II"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ZTE V768"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5369"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-B5330"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-B5512B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S5302B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-S6802"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Multilaser Orion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsLuxBlacklisted()Z
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/instagram/camera/CameraUtil;->isS4Model()Z

    move-result v0

    return v0
.end method

.method public static getLuxEnabled()Z
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getLuxEnabled()Z

    move-result v0

    return v0
.end method

.method public static getLuxSupported()Z
    .locals 1

    .prologue
    .line 309
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getIsLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getIsLuxBlacklisted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMasterTextureEnforcedSize()I
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getIsLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/16 v0, 0x400

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getMasterTexturePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getMasterTexturePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMirrorMasterTexture()Z
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getMirrorMasterTexture()Z

    move-result v0

    return v0
.end method

.method public static native getProgramCode(I)I
.end method

.method public static getTiltShiftEnabled()Z
    .locals 1

    .prologue
    .line 204
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getTiltShiftEnabled()Z

    move-result v0

    return v0
.end method

.method public static getTiltShiftMode()I
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getTiltShiftMode()I

    move-result v0

    return v0
.end method

.method public static getTiltShiftOriginX()F
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getTiltShiftOriginX()F

    move-result v0

    return v0
.end method

.method public static getTiltShiftOriginY()F
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getTiltShiftOriginY()F

    move-result v0

    return v0
.end method

.method public static getTiltShiftRadius()F
    .locals 1

    .prologue
    .line 245
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getTiltShiftRadius()F

    move-result v0

    return v0
.end method

.method public static getTiltShiftSupported()Z
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/instagram/android/gl/NativeBridge;->getIsLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTiltShiftTheta()F
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getTiltShiftTheta()F

    move-result v0

    return v0
.end method

.method public static isCameraOrientedCrop()Z
    .locals 1

    .prologue
    .line 261
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->isCameraOrientedCrop()Z

    move-result v0

    return v0
.end method

.method public static isCropped()Z
    .locals 1

    .prologue
    .line 269
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->getCroppingRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static native mirrorMasterTexture()V
.end method

.method public static mirrorTiltShift()V
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->mirrorTiltShift()V

    .line 281
    return-void
.end method

.method public static onFinishLoadMasterTexture()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->onFinishLoadMasterTexture()V

    .line 189
    :cond_0
    return-void
.end method

.method public static onStartLoadMasterTexture()V
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    invoke-interface {v0}, Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;->onStartLoadMasterTexture()V

    .line 183
    :cond_0
    return-void
.end method

.method public static native redrawBlur()V
.end method

.method public static removeMasterTextureDelegate(Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;)V
    .locals 1
    .parameter "delegate"

    .prologue
    .line 130
    sget-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    if-ne p0, v0, :cond_0

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    .line 134
    :cond_0
    return-void
.end method

.method public static native renderBuffer(IZ)I
.end method

.method public static native renderFullSizeBuffer()I
.end method

.method public static native rotateMasterTexture()V
.end method

.method public static native saveImageInBuffer(Ljava/lang/String;II)J
.end method

.method public static setMasterTextureDelegate(Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 126
    sput-object p0, Lcom/instagram/android/gl/NativeBridge;->sImageProcessorDelegate:Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;

    .line 127
    return-void
.end method

.method public static native setTiltShiftEnabled(Z)V
.end method

.method public static native setTiltShiftMode(I)V
.end method

.method public static native setTiltShiftOrigin(FF)V
.end method

.method public static native setTiltShiftRadius(F)V
.end method

.method public static native setTiltShiftTheta(F)V
.end method

.method public static softReport(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "category"
    .parameter "msg"

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/instagram/crash/IgErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static native tiltShiftFadeInMaskHighlight()V
.end method

.method public static native tiltShiftFadeOutMaskHighlight()V
.end method

.method public static native tiltShiftRemoveMaskHighlight()V
.end method

.method public static native useFilter(I)V
.end method
