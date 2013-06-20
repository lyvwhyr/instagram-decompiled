.class Lcom/instagram/android/news/widget/CustomToastPopupWindow$1;
.super Ljava/lang/Object;
.source "CustomToastPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/news/widget/CustomToastPopupWindow;


# direct methods
.method constructor <init>(Lcom/instagram/android/news/widget/CustomToastPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow$1;->this$0:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow$1;->this$0:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    invoke-virtual {v0}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->dismiss()V

    .line 51
    return-void
.end method
