.class Lcom/instagram/android/video/fragment/CamcorderFragment$4$1;
.super Ljava/lang/Object;
.source "CamcorderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$4;


# direct methods
.method constructor <init>(Lcom/instagram/android/video/fragment/CamcorderFragment$4;)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/instagram/android/video/fragment/CamcorderFragment$4$1;->this$1:Lcom/instagram/android/video/fragment/CamcorderFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 441
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 442
    return-void
.end method
