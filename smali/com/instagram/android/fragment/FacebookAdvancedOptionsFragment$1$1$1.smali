.class Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1$1;
.super Ljava/lang/Object;
.source "FacebookAdvancedOptionsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1$1;->this$2:Lcom/instagram/android/fragment/FacebookAdvancedOptionsFragment$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    return-void
.end method
