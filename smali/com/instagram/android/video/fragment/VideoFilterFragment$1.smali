.class Lcom/instagram/android/video/fragment/VideoFilterFragment$1;
.super Ljava/lang/Object;
.source "VideoFilterFragment.java"

# interfaces
.implements Lcom/instagram/android/creation/widget/FilterPicker$OnFilterChangedListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/video/fragment/VideoFilterFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/VideoFilterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment$1;->this$0:Lcom/instagram/android/video/fragment/VideoFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterChanged(Lcom/instagram/android/gl/IgFilter;I)V
    .locals 2
    .parameter "filter"
    .parameter "filterIndex"

    .prologue
    .line 69
    const-string v0, "VideoFilterFragment"

    const-string v1, "Filter change received"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment$1;->this$0:Lcom/instagram/android/video/fragment/VideoFilterFragment;

    #getter for: Lcom/instagram/android/video/fragment/VideoFilterFragment;->mPreviewTextureView:Lcom/instagram/android/video/ui/LivePreviewTextureView;
    invoke-static {v0}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->access$000(Lcom/instagram/android/video/fragment/VideoFilterFragment;)Lcom/instagram/android/video/ui/LivePreviewTextureView;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/instagram/android/video/filters/VideoFilter;

    invoke-virtual {v1, v0}, Lcom/instagram/android/video/ui/LivePreviewTextureView;->setFilter(Lcom/instagram/android/video/filters/VideoFilter;)V

    .line 72
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment$1;->this$0:Lcom/instagram/android/video/fragment/VideoFilterFragment;

    invoke-virtual {p1}, Lcom/instagram/android/gl/IgFilter;->getId()I

    move-result v1

    #setter for: Lcom/instagram/android/video/fragment/VideoFilterFragment;->mFilterId:I
    invoke-static {v0, v1}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->access$102(Lcom/instagram/android/video/fragment/VideoFilterFragment;I)I

    .line 73
    iget-object v0, p0, Lcom/instagram/android/video/fragment/VideoFilterFragment$1;->this$0:Lcom/instagram/android/video/fragment/VideoFilterFragment;

    #setter for: Lcom/instagram/android/video/fragment/VideoFilterFragment;->mSelectedFilterIndex:I
    invoke-static {v0, p2}, Lcom/instagram/android/video/fragment/VideoFilterFragment;->access$202(Lcom/instagram/android/video/fragment/VideoFilterFragment;I)I

    .line 75
    :cond_0
    return-void
.end method
