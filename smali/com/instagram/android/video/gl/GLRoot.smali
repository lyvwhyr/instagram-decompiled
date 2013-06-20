.class public interface abstract Lcom/instagram/android/video/gl/GLRoot;
.super Ljava/lang/Object;
.source "GLRoot.java"


# virtual methods
.method public abstract addOnGLIdleListener(Lcom/instagram/android/video/gl/GLRoot$OnGLIdleListener;)V
.end method

.method public abstract freeze()V
.end method

.method public abstract getCompensation()I
.end method

.method public abstract getCompensationMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDisplayRotation()I
.end method

.method public abstract lockRenderThread()V
.end method

.method public abstract requestLayoutContentPane()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract requestRenderForced()V
.end method

.method public abstract setContentPane(Lcom/instagram/android/video/gl/GLView;)V
.end method

.method public abstract setLightsOutMode(Z)V
.end method

.method public abstract setOrientationSource(Lcom/instagram/android/video/ui/OrientationSource;)V
.end method

.method public abstract unfreeze()V
.end method

.method public abstract unlockRenderThread()V
.end method
