.class Lcom/instagram/android/news/widget/CustomToastPopupWindow$2;
.super Ljava/lang/Object;
.source "CustomToastPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/news/widget/CustomToastPopupWindow;


# direct methods
.method constructor <init>(Lcom/instagram/android/news/widget/CustomToastPopupWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow$2;->this$0:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow$2;->this$0:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    #getter for: Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->access$000(Lcom/instagram/android/news/widget/CustomToastPopupWindow;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/instagram/android/news/widget/CustomToastPopupWindow$2;->this$0:Lcom/instagram/android/news/widget/CustomToastPopupWindow;

    #getter for: Lcom/instagram/android/news/widget/CustomToastPopupWindow;->mOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {v0}, Lcom/instagram/android/news/widget/CustomToastPopupWindow;->access$000(Lcom/instagram/android/news/widget/CustomToastPopupWindow;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 99
    :cond_0
    return-void
.end method
