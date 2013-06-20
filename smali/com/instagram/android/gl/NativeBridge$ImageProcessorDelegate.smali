.class public interface abstract Lcom/instagram/android/gl/NativeBridge$ImageProcessorDelegate;
.super Ljava/lang/Object;
.source "NativeBridge.java"


# virtual methods
.method public abstract getBordersEnabled()Z
.end method

.method public abstract getCameraOrientation()I
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getCroppingRect()Landroid/graphics/Rect;
.end method

.method public abstract getCurrentFilter()I
.end method

.method public abstract getCurrentRotation()I
.end method

.method public abstract getLuxEnabled()Z
.end method

.method public abstract getMasterTexturePath()Ljava/lang/String;
.end method

.method public abstract getMirrorMasterTexture()Z
.end method

.method public abstract getTiltShiftEnabled()Z
.end method

.method public abstract getTiltShiftMode()I
.end method

.method public abstract getTiltShiftOriginX()F
.end method

.method public abstract getTiltShiftOriginY()F
.end method

.method public abstract getTiltShiftRadius()F
.end method

.method public abstract getTiltShiftTheta()F
.end method

.method public abstract isCameraOrientedCrop()Z
.end method

.method public abstract mirrorTiltShift()V
.end method

.method public abstract onFinishLoadMasterTexture()V
.end method

.method public abstract onStartLoadMasterTexture()V
.end method
