.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1$1;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1$1;->this$2:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->getInstance()Lcom/instagram/android/maps/manager/PhotoMapsEditManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/manager/PhotoMapsEditManager;->setEditMode(Z)V

    .line 114
    invoke-static {}, Lcom/instagram/android/service/ClickManager;->getInstance()Lcom/instagram/android/service/ClickManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/service/ClickManager;->getCurrentFragmentManager()Landroid/support/v4/app/p;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/p;->d()V

    .line 115
    return-void
.end method
