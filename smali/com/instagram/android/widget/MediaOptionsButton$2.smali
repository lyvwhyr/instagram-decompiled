.class Lcom/instagram/android/widget/MediaOptionsButton$2;
.super Ljava/lang/Object;
.source "MediaOptionsButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/MediaOptionsButton;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$2;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/instagram/android/widget/MediaOptionsButton$2;->this$0:Lcom/instagram/android/widget/MediaOptionsButton;

    const/4 v1, 0x0

    #setter for: Lcom/instagram/android/widget/MediaOptionsButton;->mDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/instagram/android/widget/MediaOptionsButton;->access$202(Lcom/instagram/android/widget/MediaOptionsButton;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 118
    return-void
.end method
