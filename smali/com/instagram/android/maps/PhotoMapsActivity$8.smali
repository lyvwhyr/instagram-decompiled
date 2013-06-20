.class Lcom/instagram/android/maps/PhotoMapsActivity$8;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$8;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 205
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getNumToBeRemoved()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    new-instance v0, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;

    iget-object v1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$8;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    sget-object v2, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;->EDIT:Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;-><init>(Landroid/app/Activity;Lcom/instagram/android/maps/manager/PhotoMapsEditManager$PhotoMapsEditType;)V

    invoke-virtual {v0, p1}, Lcom/instagram/android/maps/edit/PhotoMapEditDoneListener;->onClick(Landroid/view/View;)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setEditMode(Z)V

    goto :goto_0
.end method
