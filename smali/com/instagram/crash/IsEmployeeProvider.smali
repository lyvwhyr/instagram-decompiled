.class public Lcom/instagram/crash/IsEmployeeProvider;
.super Ljava/lang/Object;
.source "IsEmployeeProvider.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/facebook/common/i/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/common/i/d;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/facebook/common/i/d;->c:Lcom/facebook/common/i/d;

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/instagram/crash/IsEmployeeProvider;->get()Lcom/facebook/common/i/d;

    move-result-object v0

    return-object v0
.end method
