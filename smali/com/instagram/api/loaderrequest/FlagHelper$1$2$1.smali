.class Lcom/instagram/api/loaderrequest/FlagHelper$1$2$1;
.super Ljava/lang/Object;
.source "FlagHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/instagram/api/loaderrequest/FlagHelper$1$2;


# direct methods
.method constructor <init>(Lcom/instagram/api/loaderrequest/FlagHelper$1$2;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/instagram/api/loaderrequest/FlagHelper$1$2$1;->this$2:Lcom/instagram/api/loaderrequest/FlagHelper$1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 54
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 55
    return-void
.end method
