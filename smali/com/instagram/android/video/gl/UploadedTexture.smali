.class abstract Lcom/instagram/android/video/gl/UploadedTexture;
.super Lcom/instagram/android/video/gl/BasicTexture;
.source "UploadedTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Texture"

.field private static final UPLOAD_LIMIT:I = 0x64

.field private static sBorderKey:Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;

.field private static sBorderLines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field static sCropRect:[F

.field static sTextureId:[I

.field private static sUploadedCount:I


# instance fields
.field protected mBitmap:Landroid/graphics/Bitmap;

.field private mBorder:I

.field private mContentValid:Z

.field private mIsUploading:Z

.field private mOpaque:Z

.field private mThrottled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/instagram/android/video/gl/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    .line 52
    new-instance v0, Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;-><init>(Lcom/instagram/android/video/gl/UploadedTexture$1;)V

    sput-object v0, Lcom/instagram/android/video/gl/UploadedTexture;->sBorderKey:Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;

    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/instagram/android/video/gl/UploadedTexture;->sTextureId:[I

    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/instagram/android/video/gl/UploadedTexture;->sCropRect:[F

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/instagram/android/video/gl/UploadedTexture;-><init>(Z)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .parameter "hasBorder"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/instagram/android/video/gl/BasicTexture;-><init>(Lcom/instagram/android/video/gl/GLCanvas;II)V

    .line 56
    iput-boolean v2, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mContentValid:Z

    .line 59
    iput-boolean v1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mIsUploading:Z

    .line 60
    iput-boolean v2, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mOpaque:Z

    .line 61
    iput-boolean v1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mThrottled:Z

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0, v2}, Lcom/instagram/android/video/gl/UploadedTexture;->setBorder(Z)V

    .line 76
    iput v2, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    .line 78
    :cond_0
    return-void
.end method

.method private freeBitmap()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/instagram/android/video/util/VideoUtil;->assertTrue(Z)V

    .line 152
    iget-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/instagram/android/video/gl/UploadedTexture;->onFreeBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 154
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 141
    iget-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 142
    iget-object v1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 143
    iget v2, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mWidth:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/instagram/android/video/gl/UploadedTexture;->setSize(II)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "vertical"
    .parameter "config"
    .parameter "length"

    .prologue
    const/4 v2, 0x1

    .line 124
    sget-object v1, Lcom/instagram/android/video/gl/UploadedTexture;->sBorderKey:Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;

    .line 125
    iput-boolean p0, v1, Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;->vertical:Z

    .line 126
    iput-object p1, v1, Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;->config:Landroid/graphics/Bitmap$Config;

    .line 127
    iput p2, v1, Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;->length:I

    .line 128
    sget-object v0, Lcom/instagram/android/video/gl/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 129
    if-nez v0, :cond_0

    .line 130
    if-eqz p0, :cond_1

    invoke-static {v2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    :goto_0
    sget-object v2, Lcom/instagram/android/video/gl/UploadedTexture;->sBorderLines:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;->clone()Lcom/instagram/android/video/gl/UploadedTexture$BorderKey;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-object v0

    .line 130
    :cond_1
    invoke-static {p2, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static resetUploadLimit()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    sput v0, Lcom/instagram/android/video/gl/UploadedTexture;->sUploadedCount:I

    .line 211
    return-void
.end method

.method public static uploadLimitReached()Z
    .locals 2

    .prologue
    .line 214
    sget v0, Lcom/instagram/android/video/gl/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uploadToCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 221
    invoke-interface/range {p1 .. p1}, Lcom/instagram/android/video/gl/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/instagram/android/video/gl/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    .line 224
    if-eqz v14, :cond_5

    .line 226
    :try_start_0
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 227
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 228
    move-object/from16 v0, p0

    iget v2, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int v2, v2, v17

    .line 229
    move-object/from16 v0, p0

    iget v2, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    mul-int/lit8 v2, v2, 0x2

    add-int v2, v2, v18

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/video/gl/UploadedTexture;->getTextureWidth()I

    move-result v5

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/instagram/android/video/gl/UploadedTexture;->getTextureHeight()I

    move-result v6

    .line 233
    move/from16 v0, v17

    if-gt v0, v5, :cond_1

    move/from16 v0, v18

    if-gt v0, v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/instagram/android/video/util/VideoUtil;->assertTrue(Z)V

    .line 239
    sget-object v2, Lcom/instagram/android/video/gl/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    int-to-float v4, v4

    aput v4, v2, v3

    .line 240
    sget-object v2, Lcom/instagram/android/video/gl/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    add-int v4, v4, v18

    int-to-float v4, v4

    aput v4, v2, v3

    .line 241
    sget-object v2, Lcom/instagram/android/video/gl/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x2

    move/from16 v0, v17

    int-to-float v4, v0

    aput v4, v2, v3

    .line 242
    sget-object v2, Lcom/instagram/android/video/gl/UploadedTexture;->sCropRect:[F

    const/4 v3, 0x3

    move/from16 v0, v18

    neg-int v4, v0

    int-to-float v4, v4

    aput v4, v2, v3

    .line 245
    const/4 v2, 0x1

    sget-object v3, Lcom/instagram/android/video/gl/UploadedTexture;->sTextureId:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/instagram/android/video/gl/GLId;->glGenTextures(I[II)V

    .line 246
    const/16 v2, 0xde1

    sget-object v3, Lcom/instagram/android/video/gl/UploadedTexture;->sTextureId:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 247
    const/16 v2, 0xde1

    const v3, 0x8b9d

    sget-object v4, Lcom/instagram/android/video/gl/UploadedTexture;->sCropRect:[F

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 249
    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x812f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 251
    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x812f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 253
    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const v4, 0x46180400

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 255
    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 258
    move/from16 v0, v17

    if-ne v0, v5, :cond_2

    move/from16 v0, v18

    if-ne v0, v6, :cond_2

    .line 259
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v14, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_0
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/instagram/android/video/gl/UploadedTexture;->freeBitmap()V

    .line 300
    invoke-virtual/range {p0 .. p1}, Lcom/instagram/android/video/gl/UploadedTexture;->setAssociatedCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 301
    sget-object v1, Lcom/instagram/android/video/gl/UploadedTexture;->sTextureId:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mId:I

    .line 302
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mState:I

    .line 303
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mContentValid:Z

    .line 308
    return-void

    .line 233
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 261
    :cond_2
    :try_start_1
    invoke-static {v14}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 262
    invoke-static {v14}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v9

    .line 263
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v19

    .line 265
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move v8, v4

    invoke-interface/range {v1 .. v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 267
    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 270
    move-object/from16 v0, p0

    iget v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    if-lez v1, :cond_3

    .line 272
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-static {v1, v0, v6}, Lcom/instagram/android/video/gl/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 273
    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 277
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v0, v5}, Lcom/instagram/android/video/gl/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 278
    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 283
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    add-int v1, v1, v17

    if-ge v1, v5, :cond_4

    .line 284
    const/4 v1, 0x1

    move-object/from16 v0, v19

    invoke-static {v1, v0, v6}, Lcom/instagram/android/video/gl/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 285
    const/16 v10, 0xde1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    add-int v12, v1, v17

    const/4 v13, 0x0

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 290
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    add-int v1, v1, v18

    if-ge v1, v6, :cond_0

    .line 291
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-static {v1, v0, v5}, Lcom/instagram/android/video/gl/UploadedTexture;->getBorderLine(ZLandroid/graphics/Bitmap$Config;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 292
    const/16 v10, 0xde1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    add-int v13, v1, v18

    move v15, v4

    move/from16 v16, v9

    invoke-static/range {v10 .. v16}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 297
    :catchall_0
    move-exception v1

    invoke-direct/range {p0 .. p0}, Lcom/instagram/android/video/gl/UploadedTexture;->freeBitmap()V

    throw v1

    .line 305
    :cond_5
    const/4 v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/instagram/android/video/gl/UploadedTexture;->mState:I

    .line 306
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Texture load fail, no bitmap"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 165
    :cond_0
    iget v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mHeight:I

    return v0
.end method

.method protected getTarget()I
    .locals 1

    .prologue
    .line 318
    const/16 v0, 0xde1

    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    .line 159
    :cond_0
    iget v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mWidth:I

    return v0
.end method

.method protected invalidateContent()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 173
    iget-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->freeBitmap()V

    .line 174
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mContentValid:Z

    .line 175
    iput v1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mWidth:I

    .line 176
    iput v1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mHeight:I

    .line 177
    return-void
.end method

.method public isContentValid()Z
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mContentValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mOpaque:Z

    return v0
.end method

.method public isUploading()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mIsUploading:Z

    return v0
.end method

.method protected onBind(Lcom/instagram/android/video/gl/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Lcom/instagram/android/video/gl/UploadedTexture;->updateContent(Lcom/instagram/android/video/gl/GLCanvas;)V

    .line 313
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method protected abstract onFreeBitmap(Landroid/graphics/Bitmap;)V
.end method

.method protected abstract onGetBitmap()Landroid/graphics/Bitmap;
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 332
    invoke-super {p0}, Lcom/instagram/android/video/gl/BasicTexture;->recycle()V

    .line 333
    iget-object v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->freeBitmap()V

    .line 334
    :cond_0
    return-void
.end method

.method protected setIsUploading(Z)V
    .locals 0
    .parameter "uploading"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mIsUploading:Z

    .line 82
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0
    .parameter "isOpaque"

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mOpaque:Z

    .line 323
    return-void
.end method

.method protected setThrottled(Z)V
    .locals 0
    .parameter "throttled"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mThrottled:Z

    .line 120
    return-void
.end method

.method public updateContent(Lcom/instagram/android/video/gl/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/16 v0, 0xde1

    .line 192
    invoke-virtual {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    iget-boolean v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mThrottled:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/instagram/android/video/gl/UploadedTexture;->sUploadedCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/instagram/android/video/gl/UploadedTexture;->sUploadedCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-direct {p0, p1}, Lcom/instagram/android/video/gl/UploadedTexture;->uploadToCanvas(Lcom/instagram/android/video/gl/GLCanvas;)V

    goto :goto_0

    .line 197
    :cond_2
    iget-boolean v1, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mContentValid:Z

    if-nez v1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 199
    invoke-static {v4}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 200
    invoke-static {v4}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 201
    invoke-interface {p1}, Lcom/instagram/android/video/gl/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v1

    iget v2, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mId:I

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 202
    const/4 v1, 0x0

    iget v2, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    iget v3, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mBorder:I

    invoke-static/range {v0 .. v6}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    .line 204
    invoke-direct {p0}, Lcom/instagram/android/video/gl/UploadedTexture;->freeBitmap()V

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/video/gl/UploadedTexture;->mContentValid:Z

    goto :goto_0
.end method
