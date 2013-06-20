.class public Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"


# instance fields
.field imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

.field mediaActionsView:Lcom/instagram/android/video/ui/MediaActionsView;

.field mediaGroup:Landroid/view/ViewGroup;

.field peopleTagsLayout:Lcom/instagram/android/people/widget/PeopleTagsLayout;

.field tagIndicator:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageView()Lcom/instagram/android/mediacache/IgProgressImageView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->imageView:Lcom/instagram/android/mediacache/IgProgressImageView;

    return-object v0
.end method

.method public getMediaActionsView()Lcom/instagram/android/video/ui/MediaActionsView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->mediaActionsView:Lcom/instagram/android/video/ui/MediaActionsView;

    return-object v0
.end method

.method public getPeopleTagsLayout()Lcom/instagram/android/people/widget/PeopleTagsLayout;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->peopleTagsLayout:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    return-object v0
.end method

.method public getTagsIndicator()Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$MediaHolder;->tagIndicator:Landroid/widget/Button;

    return-object v0
.end method
