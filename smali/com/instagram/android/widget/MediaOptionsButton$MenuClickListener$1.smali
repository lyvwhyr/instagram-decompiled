.class Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$1;
.super Ljava/lang/Object;
.source "MediaOptionsButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener$1;->this$1:Lcom/instagram/android/widget/MediaOptionsButton$MenuClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    return-void
.end method
