.class Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;
.super Ljava/lang/Object;
.source "MapImageViewHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;


# direct methods
.method constructor <init>(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;->this$0:Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 68
    packed-switch p2, :pswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 70
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "geo:0,0?z=%s&q=%s,%s (%s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;->this$0:Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;

    #getter for: Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mZoom:Ljava/lang/String;
    invoke-static {v5}, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->access$000(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;->this$0:Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;

    #getter for: Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mLatitude:Ljava/lang/Double;
    invoke-static {v5}, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->access$100(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;->this$0:Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;

    #getter for: Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mLongitude:Ljava/lang/Double;
    invoke-static {v5}, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->access$200(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;->this$0:Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;

    #getter for: Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mName:Ljava/lang/CharSequence;
    invoke-static {v5}, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->access$300(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    iget-object v1, p0, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener$1;->this$0:Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;

    #getter for: Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;->access$400(Lcom/instagram/android/widget/MapImageViewHelper$MapClickListener;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 68
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
