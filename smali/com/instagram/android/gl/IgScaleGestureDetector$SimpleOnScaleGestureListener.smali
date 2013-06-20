.class public Lcom/instagram/android/gl/IgScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "IgScaleGestureDetector.java"

# interfaces
.implements Lcom/instagram/android/gl/IgScaleGestureDetector$OnScaleGestureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Lcom/instagram/android/gl/IgScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/instagram/android/gl/IgScaleGestureDetector;)V
    .locals 0
    .parameter "detector"

    .prologue
    .line 129
    return-void
.end method
