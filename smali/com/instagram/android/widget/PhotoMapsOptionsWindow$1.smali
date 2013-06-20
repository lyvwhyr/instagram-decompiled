.class Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;
.super Ljava/lang/Object;
.source "PhotoMapsOptionsWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

.field final synthetic val$photoMapsActivity:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/PhotoMapsOptionsWindow;Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;->this$0:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    iput-object p2, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;->val$photoMapsActivity:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 51
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;->val$photoMapsActivity:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->load(Ljava/util/List;)V

    .line 55
    :cond_0
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v1

    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->isEditing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setEditMode(Z)V

    .line 56
    iget-object v0, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;->this$0:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    #getter for: Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->access$000(Lcom/instagram/android/widget/PhotoMapsOptionsWindow;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1$1;-><init>(Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void

    .line 55
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
