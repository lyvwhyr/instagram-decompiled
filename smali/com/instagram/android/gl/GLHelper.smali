.class public Lcom/instagram/android/gl/GLHelper;
.super Ljava/lang/Object;
.source "GLHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GLHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 5
    .parameter "op"

    .prologue
    .line 96
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v1, "GLHelper"

    const-string v2, "GL error 0x%x after %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p0, v3, v0

    invoke-static {v2, v3}, Lcom/facebook/common/i/b;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public static createProgram(II)I
    .locals 2
    .parameter "vertexResource"
    .parameter "fragmentResource"

    .prologue
    .line 195
    invoke-static {}, Lcom/instagram/android/service/AppContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 196
    invoke-static {v0, p0}, Lcom/instagram/android/gl/GLHelper;->readRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, p1}, Lcom/instagram/android/gl/GLHelper;->readRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {v1, v0}, Lcom/instagram/android/gl/GLHelper;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "vertexCode"
    .parameter "fragmentCode"

    .prologue
    .line 202
    const v0, 0x8b31

    invoke-static {v0, p0}, Lcom/instagram/android/gl/GLHelper;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 203
    const v1, 0x8b30

    invoke-static {v1, p1}, Lcom/instagram/android/gl/GLHelper;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 205
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 206
    const-string v3, "GLHelper.createProgram:glCreateProgram"

    invoke-static {v3}, Lcom/instagram/android/gl/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 208
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 209
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 210
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 211
    const-string v0, "GLHelper.createProgram:glLinkProgram"

    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 213
    return v2
.end method

.method public static createTexture(I)I
    .locals 5
    .parameter "target"

    .prologue
    const v4, 0x812f

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 167
    new-array v0, v1, [I

    .line 169
    invoke-static {v1, v0, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 170
    aget v1, v0, v3

    invoke-static {p0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 171
    const/16 v1, 0x2801

    const/16 v2, 0x2601

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 172
    const/16 v1, 0x2800

    const v2, 0x46180400

    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 173
    const/16 v1, 0x2802

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 174
    const/16 v1, 0x2803

    invoke-static {p0, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 176
    aget v0, v0, v3

    return v0
.end method

.method public static createTexture(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "filePath"

    .prologue
    .line 102
    .line 103
    const/4 v0, 0x0

    .line 105
    const-string v1, "GLHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to decode/load texture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :try_start_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    const-string v1, ".pkm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->makeETC1Texture(Ljava/io/InputStream;)I

    move-result v1

    .line 127
    :goto_1
    if-eqz v0, :cond_0

    .line 128
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 134
    :cond_0
    :goto_2
    return v1

    .line 112
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "filters/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    const-string v2, "GLHelper"

    const-string v3, "Failed to open input stream"

    invoke-static {v2, v3, v1}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 122
    invoke-static {v2}, Lcom/instagram/android/gl/GLHelper;->makeBitmapTexture(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 123
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    const-string v2, "GLHelper"

    const-string v3, "Failed to close input stream"

    invoke-static {v2, v3, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static loadShader(ILjava/lang/String;)I
    .locals 1
    .parameter "type"
    .parameter "shaderCode"

    .prologue
    .line 217
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 219
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 220
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 222
    return v0
.end method

.method public static loadTexture(Landroid/content/res/Resources;I)I
    .locals 7
    .parameter "resources"
    .parameter "resource"

    .prologue
    const/16 v0, 0xde1

    const/4 v1, 0x0

    .line 155
    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->createTexture(I)I

    move-result v6

    .line 156
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 158
    const/16 v2, 0x1908

    const/16 v4, 0x1401

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 159
    const-string v0, "loadTexture(Resources, int):texImage2D"

    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 163
    return v6
.end method

.method public static loadTexture(Ljava/io/File;)I
    .locals 8
    .parameter "f"

    .prologue
    const/16 v1, 0xde1

    const/4 v6, 0x0

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 151
    :goto_0
    return v0

    .line 141
    :cond_0
    invoke-static {v1}, Lcom/instagram/android/gl/GLHelper;->createTexture(I)I

    move-result v7

    .line 143
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 144
    const/16 v0, 0xde1

    const/4 v1, 0x0

    const/16 v2, 0x1908

    const/16 v4, 0x1401

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 145
    const-string v0, "loadTexture(File):texImage2D"

    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->checkGlError(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    .line 147
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string v1, "GLHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading texture failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/instagram/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 151
    goto :goto_0
.end method

.method public static makeBitmapTexture(Landroid/graphics/Bitmap;)I
    .locals 8
    .parameter "bitmap"

    .prologue
    const v7, 0x812f

    const/4 v2, 0x1

    const v6, 0x46180400

    const/16 v5, 0xde1

    const/4 v0, 0x0

    .line 65
    if-nez p0, :cond_0

    .line 91
    :goto_0
    return v0

    .line 69
    :cond_0
    new-array v1, v2, [I

    .line 71
    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 73
    aget v1, v1, v0

    .line 75
    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 78
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v3, p0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/16 v0, 0x2801

    invoke-static {v5, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 85
    const/16 v0, 0x2800

    invoke-static {v5, v0, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 86
    const/16 v0, 0x2802

    invoke-static {v5, v0, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 87
    const/16 v0, 0x2803

    invoke-static {v5, v0, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 89
    const-string v0, "makeBitmapTexture"

    invoke-static {v0}, Lcom/instagram/android/gl/GLHelper;->checkGlError(Ljava/lang/String;)V

    move v0, v1

    .line 91
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string v2, "GLHelper"

    const-string v3, "Failed to load GL texture"

    invoke-static {v2, v3, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static makeETC1Texture(Ljava/io/InputStream;)I
    .locals 9
    .parameter "inputStream"

    .prologue
    const v8, 0x812f

    const/4 v3, 0x1

    const v7, 0x46180400

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 35
    new-array v2, v3, [I

    .line 37
    invoke-static {v3, v2, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 39
    aget v6, v2, v1

    .line 41
    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 45
    :try_start_0
    invoke-static {p0}, Landroid/opengl/ETC1Util;->createTexture(Ljava/io/InputStream;)Landroid/opengl/ETC1Util$ETC1Texture;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 50
    const/16 v3, 0x1907

    const v4, 0x8363

    move v2, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/ETC1Util;->loadTexture(IIIIILandroid/opengl/ETC1Util$ETC1Texture;)V

    .line 53
    const/16 v1, 0x2801

    invoke-static {v0, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 54
    const/16 v1, 0x2800

    invoke-static {v0, v1, v7}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 55
    const/16 v1, 0x2802

    invoke-static {v0, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 56
    const/16 v1, 0x2803

    invoke-static {v0, v1, v8}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 58
    return v6

    .line 46
    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!!!>>>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static readRawResource(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
