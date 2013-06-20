.class Lcom/instagram/android/fragment/LocationFeedFragment$2;
.super Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;
.source "LocationFeedFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/LocationFeedFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/LocationFeedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/instagram/android/fragment/LocationFeedFragment$2;->this$0:Lcom/instagram/android/fragment/LocationFeedFragment;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/AbstractFeedFragment$StandardFeedActionBar;-><init>(Lcom/instagram/android/fragment/AbstractFeedFragment;)V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/instagram/android/fragment/LocationFeedFragment$2;->this$0:Lcom/instagram/android/fragment/LocationFeedFragment;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/LocationFeedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/facebook/k;->location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
