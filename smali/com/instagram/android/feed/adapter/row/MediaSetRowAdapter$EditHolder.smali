.class public Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;
.super Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;
.source "MediaSetRowAdapter.java"


# instance fields
.field checkMarks:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$Holder;-><init>(I)V

    .line 202
    new-array v0, p1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/instagram/android/feed/adapter/row/MediaSetRowAdapter$EditHolder;->checkMarks:[Landroid/widget/ImageView;

    .line 203
    return-void
.end method
