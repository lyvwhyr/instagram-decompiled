.class Lcom/instagram/android/fragment/UserOptionsFragment$2$1;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/UserOptionsFragment$2;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/instagram/android/fragment/UserOptionsFragment$2$1;->this$1:Lcom/instagram/android/fragment/UserOptionsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 141
    return-void
.end method
