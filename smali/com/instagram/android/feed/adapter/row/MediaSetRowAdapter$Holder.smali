.class public Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;
.super Ljava/lang/Object;
.source "MediaSetRowAdapter.java"


# instance fields
.field imageBorderViews:[Landroid/view/ViewGroup;

.field imageViews:[Lcom/instagram/android/mediacache/IgImageView;

.field size:I

.field videoOverlayViews:[Landroid/view/View;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-array v0, p1, [Lcom/instagram/android/mediacache/IgImageView;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    .line 184
    new-array v0, p1, [Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->imageBorderViews:[Landroid/view/ViewGroup;

    .line 185
    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->videoOverlayViews:[Landroid/view/View;

    .line 186
    iput p1, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;->size:I

    .line 187
    return-void
.end method
