.class Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1$1;
.super Ljava/lang/Object;
.source "PhotoMapsOptionsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1$1;->this$1:Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 59
    const-string v0, "IgPopUpMenu"

    const-string v1, "dismissing"

    invoke-static {v0, v1}, Lcom/instagram/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1$1;->this$1:Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;

    iget-object v0, v0, Lcom/instagram/android/widget/PhotoMapsOptionsWindow$1;->this$0:Lcom/instagram/android/widget/PhotoMapsOptionsWindow;

    invoke-virtual {v0}, Lcom/instagram/android/widget/PhotoMapsOptionsWindow;->dismiss()V

    .line 61
    return-void
.end method
