Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2171B959
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 17:00:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLrVIUc5YuXFS1ERKBJXWMKfFxtysbshkTgJWzx9BBs=; b=igLLmlwTG0tL0r
	/Hz7Va4hCUb06j8Zgws+y3bk3iYQho1P3pqOMzbOl7P4/8h8z3bY8Nh97NHi8Thu2SvO+9jOntS90
	IIqRGvS3YJSbWZpnrsWB7myiXlLlJhPZPeMcMkzldgQyyHENugDtADpu+D2kTAnSk+Hd0SkF94p33
	i4U2Y4f9yanxs6v1wXXFpgZHvIQ5L2M7J0ZTZCQFxRc2vWCCDRGRA3MwRZa8dnM/0TrogjwUYNFcW
	W5F7ZD0uS7qVnIVIWIcSuSHIWrGcg/kGKbQW/pJtaJeF4t+YBkmcnsTOYyhWAxHxMkma7R3oMBK6+
	BzR6j8wMmrQKm8SX5jUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCR8-0007yQ-0G; Mon, 13 May 2019 15:00:18 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCQv-0006wf-Cq
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 15:00:08 +0000
Received: by mail-pf1-x443.google.com with SMTP id v80so7365241pfa.3
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 08:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=YI4apKyiwzoFZU9dVSAV6s8pxksTddQsWQQ+ARnfARM=;
 b=JBtb+af429BMLQX05LwJk8JyOCUcuisqVMvds2IepDPWQ4T7iQPRmjoxCt+OzbTyZA
 0OzkFc8aVQDvX8kZDPvpWf4bCLcg3KesiorRr38oxdLqSD+B00cwewrGLz62bHlIpKUc
 TMCN7hCmIYAe3sIpuihGBXXQgciC2o59CibnfIgrDHmFQn4vD/G9H5OiXqA5XRCj2QDS
 9X7aU7C35jI+R16YqXYqvNvuF0VcbkLTK5kAgod/EdCsJVluWmQsu8HeDr6smtazlAND
 /pM51IjnI4tDc26JdRz6qjBm71/PeQ5CEFBbgIkiRNe/tNw2h73hJ9XX4WtrJ3xpRXxs
 WkgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=YI4apKyiwzoFZU9dVSAV6s8pxksTddQsWQQ+ARnfARM=;
 b=iEOnnDiJlqpMoVSdLs6xFq8hZIgSLLIYII+f6FHHYtISSoZcGjg5yxv0oWSXTFLZfS
 AF0V5iDmkup8hYyWAxa6iS0JY4TV8x/dgqXWJp5NAcGjNlyn2Du8Mf/BXSKqbFb4jsuS
 l97TNAfSZ/blC2vVz/xseHlS+lW856cFeAz55Fx1rIaHzRCblBERiQDm+6gKOlc9tp/b
 doLiE4DykFgeNyJb8U/m4JNpzGWQ8QW/v58F0iXVryjZLbS2/m0D/tJaVz0+07QqNXrg
 vLu33DVBxdFHzJgys0YNvwojvS5gBDlrXKImiCzkZP2gORg268Qq0wdmGQXJbs15+YaE
 /mQw==
X-Gm-Message-State: APjAAAXzP8+w7/oyPCxYRUp9rEUippP9SOlHjijvo5pwQTBenywF/weI
 bqOoBKgOnUbOIaBhVN+p7fqt7RJd671irp/MzRs=
X-Google-Smtp-Source: APXvYqzJ6A54mX7dVEAFcM8N5fVArCSi1kuwY1aghL9QrCXbIKtdp2qyX/J4n9J6kPT3aYHMfMCq/YUVsmN9YLAsCQg=
X-Received: by 2002:aa7:9214:: with SMTP id 20mr33381833pfo.202.1557759603675; 
 Mon, 13 May 2019 08:00:03 -0700 (PDT)
MIME-Version: 1.0
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <CGME20190512155533epcas4p110edff15ebf5b2efae32e43f0f10ab59@epcms2p5>
 <1557676457-4195-7-git-send-email-akinobu.mita@gmail.com>
 <20190513074120epcms2p54e3a031668274ac1ebace6c5edc0a3f7@epcms2p5>
In-Reply-To: <20190513074120epcms2p54e3a031668274ac1ebace6c5edc0a3f7@epcms2p5>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Mon, 13 May 2019 23:59:52 +0900
Message-ID: <CAC5umyjrYddqtQY8LdoXG8S7s7xaAO3oZz7WRDkfnjrkUj2AcQ@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] nvme-pci: trigger device coredump on command
 timeout
To: minwoo.im@samsung.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_080005_838533_4E925407 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxM+aXpSjmnIgpIDE2OjQxIE1pbndvbyBJbSA8bWlud29vLmltQHNhbXN1bmcu
Y29tPjoKPgo+ID4gLXN0YXRpYyB2b2lkIF9fbWF5YmVfdW51c2VkIG52bWVfY29yZWR1bXBfaW5p
dChzdHJ1Y3QgbnZtZV9kZXYgKmRldik7Cj4gPiAtc3RhdGljIHZvaWQgX19tYXliZV91bnVzZWQg
bnZtZV9jb3JlZHVtcF9sb2dzKHN0cnVjdCBudm1lX2RldiAqZGV2KTsKPiA+IC1zdGF0aWMgdm9p
ZCBfX21heWJlX3VudXNlZCBudm1lX2NvcmVkdW1wX2NvbXBsZXRlKHN0cnVjdCBudm1lX2Rldgo+
ID4gKmRldik7Cj4gPiArc3RhdGljIHZvaWQgbnZtZV9jb3JlZHVtcF9pbml0KHN0cnVjdCBudm1l
X2RldiAqZGV2KTsKPiA+ICtzdGF0aWMgdm9pZCBudm1lX2NvcmVkdW1wX2xvZ3Moc3RydWN0IG52
bWVfZGV2ICpkZXYpOwo+ID4gK3N0YXRpYyB2b2lkIG52bWVfY29yZWR1bXBfY29tcGxldGUoc3Ry
dWN0IG52bWVfZGV2ICpkZXYpOwo+Cj4gWW91IGp1c3QgaGF2ZSBhZGRlZCB0aG9zZSB0aHJlZSBw
cm90b3R5cGVzIGluIHByZXZpb3VzIHBhdGNoLiAgRGlkIEkgbWlzcwo+IHNvbWV0aGluZyBoZXJl
PwoKVGhlc2UgX19tYXliZV91bnVzZWQgYXJlIG5lZWRlZCBvbmx5IGluIHRoZSBwYXRjaCA1Lzcu
CkJlY2F1c2UgdGhlc2UgZnVuY3Rpb25zIGFyZSBzdGlsbCB1bnVzZWQgYmVmb3JlIGFwcGx5aW5n
IHBhdGNoIDYvNy4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
