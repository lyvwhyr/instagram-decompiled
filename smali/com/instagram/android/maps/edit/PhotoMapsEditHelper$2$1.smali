.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2$1;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2$1;->this$1:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2$1;->this$1:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2$1;->this$1:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$2;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    #calls: Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->removeDialog(Z)V
    invoke-static {v0, v1}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->access$200(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;Z)V

    .line 74
    return-void
.end method
