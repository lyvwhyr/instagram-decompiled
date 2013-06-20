.class Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;->this$1:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;->this$1:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3;->this$0:Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;

    iget-object v0, v0, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1$1;

    invoke-direct {v1, p0}, Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1$1;-><init>(Lcom/instagram/android/maps/edit/PhotoMapsEditHelper$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void
.end method
