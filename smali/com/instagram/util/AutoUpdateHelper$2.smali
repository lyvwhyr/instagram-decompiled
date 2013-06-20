.class Lcom/instagram/util/AutoUpdateHelper$2;
.super Ljava/lang/Object;
.source "AutoUpdateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/util/AutoUpdateHelper;

.field final synthetic val$activity:Landroid/support/v4/app/FragmentActivity;

.field final synthetic val$browserIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/instagram/util/AutoUpdateHelper;Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/instagram/util/AutoUpdateHelper$2;->this$0:Lcom/instagram/util/AutoUpdateHelper;

    iput-object p2, p0, Lcom/instagram/util/AutoUpdateHelper$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/instagram/util/AutoUpdateHelper$2;->val$browserIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/instagram/util/AutoUpdateHelper$2;->val$activity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/instagram/util/AutoUpdateHelper$2;->val$browserIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    return-void
.end method
