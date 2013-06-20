.class Lcom/instagram/android/maps/manager/PhotoMapsEditManager$1;
.super Ljava/lang/Object;
.source "PhotoMapsEditManager.java"

# interfaces
.implements Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/manager/PhotoMapsEditManager;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$1;->this$0:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public mapsChanged()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$1;->this$0:Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    #getter for: Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->mListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->access$000(Lcom/instagram/android/maps/manager/PhotoMapsEditManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;

    .line 54
    invoke-interface {v0}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager$MapsEditManagerChangeListener;->mapsChanged()V

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method
