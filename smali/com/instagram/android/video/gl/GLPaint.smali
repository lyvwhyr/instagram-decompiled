.class public Lcom/instagram/android/video/gl/GLPaint;
.super Ljava/lang/Object;
.source "GLPaint.java"


# instance fields
.field private mColor:I

.field private mLineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/android/video/gl/GLPaint;->mLineWidth:F

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/instagram/android/video/gl/GLPaint;->mColor:I

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/instagram/android/video/gl/GLPaint;->mColor:I

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/instagram/android/video/gl/GLPaint;->mLineWidth:F

    return v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 28
    iput p1, p0, Lcom/instagram/android/video/gl/GLPaint;->mColor:I

    .line 29
    return-void
.end method

.method public setLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 36
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 38
    :goto_0
    return-void

    .line 37
    :cond_0
    iput p1, p0, Lcom/instagram/android/video/gl/GLPaint;->mLineWidth:F

    goto :goto_0
.end method
