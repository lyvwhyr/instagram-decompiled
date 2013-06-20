.class Lcom/instagram/android/fragment/UserListFragment$8;
.super Lcom/instagram/api/loaderrequest/UserListRequest;
.source "UserListFragment.java"


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/UserListFragment;

.field final synthetic val$fetchUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserListFragment;Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter
    .parameter

    .prologue
    .line 550
    .local p5, x3:Lcom/instagram/api/AbstractStreamingApiCallbacks;,"Lcom/instagram/api/AbstractStreamingApiCallbacks<Ljava/util/ArrayList<Lcom/instagram/android/model/User;>;>;"
    iput-object p1, p0, Lcom/instagram/android/fragment/UserListFragment$8;->this$0:Lcom/instagram/android/fragment/UserListFragment;

    iput-object p6, p0, Lcom/instagram/android/fragment/UserListFragment$8;->val$fetchUrl:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/instagram/api/loaderrequest/UserListRequest;-><init>(Landroid/content/Context;Landroid/support/v4/app/af;ILcom/instagram/api/AbstractStreamingApiCallbacks;)V

    return-void
.end method


# virtual methods
.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/instagram/android/fragment/UserListFragment$8;->val$fetchUrl:Ljava/lang/String;

    return-object v0
.end method
