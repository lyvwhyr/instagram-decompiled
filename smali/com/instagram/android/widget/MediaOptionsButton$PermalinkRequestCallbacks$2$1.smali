.class Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2$1;
.super Ljava/lang/Object;
.source "MediaOptionsButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2$1;->this$2:Lcom/instagram/android/widget/MediaOptionsButton$PermalinkRequestCallbacks$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 243
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 244
    return-void
.end method
