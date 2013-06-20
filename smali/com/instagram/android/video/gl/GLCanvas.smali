.class public interface abstract Lcom/instagram/android/video/gl/GLCanvas;
.super Ljava/lang/Object;
.source "GLCanvas.java"


# static fields
.field public static final SAVE_FLAG_ALL:I = -0x1

.field public static final SAVE_FLAG_ALPHA:I = 0x1

.field public static final SAVE_FLAG_MATRIX:I = 0x2


# virtual methods
.method public abstract beginRenderTarget(Lcom/instagram/android/video/gl/RawTexture;)V
.end method

.method public abstract clearBuffer()V
.end method

.method public abstract clearBuffer([F)V
.end method

.method public abstract deleteBuffer(I)V
.end method

.method public abstract deleteRecycledResources()V
.end method

.method public abstract drawLine(FFFFLcom/instagram/android/video/gl/GLPaint;)V
.end method

.method public abstract drawMesh(Lcom/instagram/android/video/gl/BasicTexture;IIIIII)V
.end method

.method public abstract drawMixed(Lcom/instagram/android/video/gl/BasicTexture;IFIIII)V
.end method

.method public abstract drawMixed(Lcom/instagram/android/video/gl/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawRect(FFFFLcom/instagram/android/video/gl/GLPaint;)V
.end method

.method public abstract drawTexture(Lcom/instagram/android/video/gl/BasicTexture;IIII)V
.end method

.method public abstract drawTexture(Lcom/instagram/android/video/gl/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.end method

.method public abstract drawTexture(Lcom/instagram/android/video/gl/BasicTexture;[FIIII)V
.end method

.method public abstract dumpStatisticsAndClear()V
.end method

.method public abstract endRenderTarget()V
.end method

.method public abstract fillRect(FFFFI)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
.end method

.method public abstract multiplyAlpha(F)V
.end method

.method public abstract multiplyMatrix([FI)V
.end method

.method public abstract restore()V
.end method

.method public abstract rotate(FFFF)V
.end method

.method public abstract save()V
.end method

.method public abstract save(I)V
.end method

.method public abstract scale(FFF)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setSize(II)V
.end method

.method public abstract translate(FF)V
.end method

.method public abstract translate(FFF)V
.end method

.method public abstract unloadTexture(Lcom/instagram/android/video/gl/BasicTexture;)Z
.end method
