.class Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2$1;
.super Ljava/lang/Object;
.source "PhotoMapsOptionsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2$1;->this$1:Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2$1;->this$1:Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;

    iget-object v0, v0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$2;->this$0:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    invoke-virtual {v0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->dismiss()V

    .line 73
    return-void
.end method
