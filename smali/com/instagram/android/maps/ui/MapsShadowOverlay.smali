.class public Lcom/instagram/android/maps/ui/MapsShadowOverlay;
.super Lcom/google/android/maps/Overlay;
.source "MapsShadowOverlay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 1
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 14
    if-eqz p3, :cond_0

    .line 15
    const/high16 v0, 0x7700

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 18
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 20
    return-void
.end method
