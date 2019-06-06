Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D574037F23
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 22:56:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QJ0GFfYlTMmCsVsTc5/WJ7Zb9488iHfpIkvdj0Bm+XA=; b=k3FsEzEN5j09/3
	PtoxuCMgPmoY657nuBr1aAQspMY7ciVyPfIrkLzejBMWAuYO0qMhbS64uy/karAr0LvBWU/tsdGqM
	TnEt+sgLu99jnBw4xlECaA1py9U5aHT0xpoyC3d/mj1U7dd4GxKheq7+kY2Z3K22j0i+F6Ja+o2aZ
	LYo3p923aCZ9eaulq4rEfHa4bqh3b7+cHl+UL0WACUZmrolK0g9iqLlJbqliAX1qWSgisMJ/Q+63l
	rhS8p1EV+X7gesxI5+voe+r34zjyAlvPjOEpvo0mEUoxFB1d4eOAduyR2QVbfFgRu39GD8KBGPtrj
	4GlHVP08NMz12Mv/zCDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYzQy-0005eg-Lj; Thu, 06 Jun 2019 20:56:28 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYzQt-0005dh-Ly
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 20:56:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id x4so18230wrt.6
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 13:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jnYKRDA0GN1hsJSdxQwe+nJnGyvVC3CTMOFZMUZUeUc=;
 b=NMGCEUkpwpTv3ejOy7dDIW6Hk38swnw87+kuTsBwzdEzCUo+2b8dscsJLZkG3ky2qf
 6K2ZNVaxRqZNWXaikQ5gIgxGjOuagpRieWDmiDWxccl9+VlPI1Wle2YN88Eh8KBbLkhA
 8Qcgp1SQ7HPt25MYd9Lqsj3IErAysNFFx6xKqyNTfXCprq1fxFUABx+0SdLRX/YKd85t
 8wGglwgZtc6Mkdu8aVf+Wk9gfUJoNrwS7jJIN868oJWsn4+V10QwA9M1HuSiftNHwzVf
 xqKgCrOOOaDBkDQ1tVfydQDEx3k7uO83wy+ohaF8w2ceFhQBDT2jAGNoNum3cZ3tQ7Ru
 uVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jnYKRDA0GN1hsJSdxQwe+nJnGyvVC3CTMOFZMUZUeUc=;
 b=WyzeMfzuX0p45hpb5A7aGzGKnagDZHDvGCi/UulMCyC9JrJ7TJ2cebnSgI0TiPaXoi
 arvarRpxCDFYihWQ3gTLyTy8FDjBH/FWho/7HtcyVVq8r0cthECN6w1MfCoTYoINXN2h
 SsUW1Dd2rVAigm3yTt52bcNT683WCne+95dFEih80C/n6fRZ7K4Gqh6x8fcBY7u/FGOX
 qETjjpNduzbS8IPwaaVsYmyvzG9x8Sxa3kOJHV2guREln7LEfyOx018bfLBZ6ud7p/m3
 Db8ULYeQFnWDIJ/dAB6mzlcaf+1w8DEzVR2KdUjMJPJcmPuc6w3dQZkiEIv9aWggQMfz
 KFCg==
X-Gm-Message-State: APjAAAWfqJP2CAXJ+peIOPTuCApTsp0h4XBZJxORTtTyPZMlxaZmIOJy
 kRNx9ga30rwbGYg7Y7DX0NJGka3BYHMMDBCgMec=
X-Google-Smtp-Source: APXvYqwcex8IfG5iNDWnf9Ca994HE0LUjlOe+xCtgozPzkrsi+WxGljgwGVsk98PoUsk+laPyvLGQFgDwgliHM880co=
X-Received: by 2002:a05:6000:110:: with SMTP id
 o16mr29711787wrx.200.1559854581388; 
 Thu, 06 Jun 2019 13:56:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190606184620.GA1676@minwooim-desktop>
 <20190606192420.GA17774@minwooim-desktop>
In-Reply-To: <20190606192420.GA17774@minwooim-desktop>
From: Keith Busch <keith.busch@gmail.com>
Date: Thu, 6 Jun 2019 14:56:10 -0600
Message-ID: <CAOSXXT78U_CmaK_YqQR2D3OKJ5GSy+KtrN6ab4iMQHwn0aROQQ@mail.gmail.com>
Subject: Re: nvme: build failure report for nvme_sync_queues()
To: Minwoo Im <minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_135623_723132_97EDC483 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme <linux-nvme@lists.infradead.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gNiwgMjAxOSBhdCAxOjI0IFBNIE1pbndvbyBJbSA8bWlud29vLmltLmRldkBn
bWFpbC5jb20+IHdyb3RlOgo+IE9uIDE5LTA2LTA3IDAzOjQ2OjIwLCBNaW53b28gSW0gd3JvdGU6
Cj4gPiBIaSBhbGwsCj4gPgo+ID4gSSdkIGhhdmUgdG8gcmVwb3J0IGEgYnVpbGQgZmFpbHVyZSBk
dWUgdG8gdGhlIGZvbGxvd2luZyBjb21taXQ6Cj4gPiBDb21taXQgZTdhZTZkMWU3YzVmICgibnZt
ZS1wY2k6IFVzZSBob3N0IG1hbmFnZWQgcG93ZXIgc3RhdGUgZm9yIHN1c3BlbmQiKQo+ID4KPiA+
IE1lc3NhZ2U6Cj4gPiBkcml2ZXJzL252bWUvaG9zdC9wY2kuYzoyODc2OjI6IGVycm9yOiBpbXBs
aWNpdCBkZWNsYXJhdGlvbiBvZiBmdW5jdGlvbiDigJhudm1lX3N5bmNfcXVldWVz4oCZOyBkaWQg
eW91IG1lYW4g4oCYbnZtZV9zdG9wX3F1ZXVlc+KAmT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rp
b24tZGVjbGFyYXRpb25dCj4gPiAgIG52bWVfc3luY19xdWV1ZXMoY3RybCk7Cj4gPiAgICAgXn5+
fn5+fn5+fn5+fn5+fgo+ID4KPiA+IElzIHRoZSBmb2xsb3dpbmcgcGF0Y2ggYXBwbGllZCB0byB0
aGlzIGJyYW5jaCA/Cj4gPiAgIFtQQVRDSHY0IDEvNF0gbnZtZTogU3luYyByZXF1ZXN0IHF1ZXVl
cyBvbiByZXNldDoKPiA+ICAgaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvcGlwZXJtYWlsL2xp
bnV4LW52bWUvMjAxOC1KdWx5LzAxOTE2Ni5odG1sCj4gPgo+ID4gSWYgSSBtaXNzIHNvbWV0aGlu
ZyBoZXJlLCBwbGVhc2UgbGV0IG13IGtub3cuCj4gPgo+ID4gVGhhbmtzLAo+Cj4gU29ycnkgSSBm
b3Jnb3QgdG8gbWVudGlvbiB0aGUgYnJhbmNoIG5hbWU6IG52bWUtNS4zCgpMb29rcyBsaWtlIHRo
ZSA1LjMgYnJhbmNoIGZvcmtlZCBlYXJseSBlbm91Z2ggdG8gbWlzcyB0aGlzIG9uZSBmcm9tCnRo
ZSA1LjItcmMyIGJyYWNoOgoKICBodHRwOi8vZ2l0LmluZnJhZGVhZC5vcmcvbnZtZS5naXQvY29t
bWl0ZGlmZi9kNjEzNWMzYTFlYzBjZGRkYTdiOGI4ZTFiNWI0YWJlZWFmZDk4Mjg5CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxp
bmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
