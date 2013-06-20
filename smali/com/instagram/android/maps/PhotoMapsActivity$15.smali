.class Lcom/instagram/android/maps/PhotoMapsActivity$15;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/maps/PhotoMapsActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/instagram/android/maps/PhotoMapsActivity$15;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialogInterface"

    .prologue
    .line 534
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 535
    iget-object v0, p0, Lcom/instagram/android/maps/PhotoMapsActivity$15;->this$0:Lcom/instagram/android/maps/PhotoMapsActivity;

    invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->onBackPressed()V

    .line 536
    return-void
.end method
