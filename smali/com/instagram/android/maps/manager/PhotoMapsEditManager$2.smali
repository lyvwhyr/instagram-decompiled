.class Lcom/instagram/android/maps/manager/PhotoMapsEditManager$2;
.super Ljava/lang/Object;
.source "PhotoMapsEditManager.java"

# interfaces
.implements Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/manager/PhotoMapsEditManager;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$2;->this$0:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public modeChange(Z)V
    .locals 2
    .parameter "isEditing"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$2;->this$0:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    #getter for: Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mModeChangeListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->access$100(Lcom/instagram/android/maps/manager/PhotoMapsEditManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;

    .line 63
    invoke-interface {v0, p1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerModeChangeListener;->modeChange(Z)V

    goto :goto_0

    .line 65
    :cond_0
    return-void
.end method
