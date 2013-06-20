.class Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;
.super Ljava/lang/Object;
.source "FeedMediaRowAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

.field final synthetic val$media:Lcom/instagram/android/model/Media;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;Lcom/instagram/android/model/Media;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    iput-object p2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;->val$media:Lcom/instagram/android/model/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;->val$media:Lcom/instagram/android/model/Media;

    invoke-virtual {v0, p2}, Lcom/instagram/android/model/Media;->updatedHasLiked(Z)V

    .line 212
    if-eqz p2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #calls: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->showDoubleTapHintIfNecessary()V
    invoke-static {v0}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$600(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)V

    .line 215
    :cond_0
    new-instance v0, Lcom/instagram/api/loaderrequest/LikeRequest;

    iget-object v1, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mApplicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$700(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mLoaderManager:Landroid/support/v4/app/af;
    invoke-static {v2}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$200(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Landroid/support/v4/app/af;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;->val$media:Lcom/instagram/android/model/Media;

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter$1;->this$0:Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;

    #getter for: Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->mConversionTrackableSource:Lcom/instagram/android/fragment/ConversionTrackable;
    invoke-static {v4}, Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;->access$400(Lcom/instagram/android/feed/adapter/row/FeedMediaRowAdapter;)Lcom/instagram/android/fragment/ConversionTrackable;

    move-result-object v4

    invoke-interface {v4}, Lcom/instagram/android/fragment/ConversionTrackable;->getConversionTrackingData()Ljava/util/Map;

    move-result-object v6

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/instagram/api/loaderrequest/LikeRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;Lcom/instagram/android/model/Media;ZZLjava/util/Map;)V

    invoke-virtual {v0}, Lcom/instagram/api/loaderrequest/LikeRequest;->perform()V

    .line 217
    return-void
.end method
