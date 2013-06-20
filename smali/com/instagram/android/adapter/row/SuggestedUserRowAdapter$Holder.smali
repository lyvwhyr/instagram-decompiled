.class public Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;
.super Ljava/lang/Object;
.source "SuggestedUserRowAdapter.java"


# instance fields
.field description:Landroid/widget/TextView;

.field followButton:Lcom/instagram/android/widget/FollowButton;

.field fullname:Landroid/widget/TextView;

.field imageViews:[Lcom/instagram/android/mediacache/IgImageView;

.field userImageview:Lcom/instagram/android/mediacache/IgImageView;

.field userRow:Landroid/view/ViewGroup;

.field username:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/instagram/android/mediacache/IgImageView;

    iput-object v0, p0, Lcom/instagram/android/adapter/row/SuggestedUserRowAdapter$Holder;->imageViews:[Lcom/instagram/android/mediacache/IgImageView;

    return-void
.end method
