Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DBE24364
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 00:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kFaKUpj1hc91Ax93pY8luoKiqLTXGuMEOE9L0wpu5Y=; b=dd3O8FjvQntvhp
	HfpOr25fln/R90UGPpccaLfcC/d77OA1I0XkTE4gqtVMS1S0cA88IGWN0BLuxvnzusTDmt8LgC75c
	N8Tf2hbq66maBCEscpKflUzZIX5enm3wZnsKEduBfrllm8oQWXDZRV8N/gfjxjEktXA5fRmDF9oQp
	C7hHDzgVeHqkh+6y/dC76umgwtz6UHB6G+c27YaeE7bxzH7PPZ1iEdXI6FVygnLZ3KSi9euEX01ay
	OGJhL3pNE26NriWMK80kxa+hnqO1Afi3g+PrjhxqKTiGCtpnkuOaxRMDHxrrwlDYU42AJzkjlv4G+
	dtQr+YglxfIu+QEYi8bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSqX1-0004Wo-80; Mon, 20 May 2019 22:13:19 +0000
Received: from salida.aumenta.com.mx ([209.139.208.81])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSqWw-0004WR-GL
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 22:13:15 +0000
Received: from localhost (localhost [127.0.0.1])
 by salida.aumenta.com.mx (Postfix) with ESMTP id E50C810008481;
 Mon, 20 May 2019 16:12:06 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1558390326;
 bh=wu+wqJXh9tp+4P5F7XdZJYQRiEl3egjGNu1p8M3De0Q=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=RMjpj/7+hbKi3+bd006ANYobizrSZ5C0GbZv6tcr107PNewX6GDkLdnezaMbmmQpU
 sVX7HriLqRu9ERI9EUk9dZQvTngCg2yq+YS6ygPSwJuHyqrbGSWcRkieYQK/lmmUpo
 yWyK5Ls0Vgke9Jz4/BTbnKK5ZGP+ayKZ4KyqQfJ0=
X-Virus-Scanned: amavisd-new at aumenta.com.mx
Received: from salida.aumenta.com.mx ([127.0.0.1])
 by localhost (trefilp.aumenta.com.mx [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id IiRhxy8XIHNb; Mon, 20 May 2019 16:11:44 -0600 (MDT)
Received: from airsk8 (unknown [189.146.226.233])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: ichavero@seispistos.com.mx)
 by salida.aumenta.com.mx (Postfix) with ESMTPSA id 9889410008480;
 Mon, 20 May 2019 16:11:43 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1558390304;
 bh=wu+wqJXh9tp+4P5F7XdZJYQRiEl3egjGNu1p8M3De0Q=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=IxGVS+VtB51xjtJLJ+i2dd9v3noi45lJKOfq57mtMity5XFlslfLMmbdkSEB4RoXc
 FH3k8MKHulJyds7UerOFPZwJ1r6aND1LwzHkgolfc7WedDmGcAWQjIcGaQ7AXM+PUM
 enl5yZfHMwJOPOHlCojQkYZZFIeAPPSFsp5fZDU8=
Message-ID: <a640a0768d19aedee71a1abad7817a3a71291851.camel@chavero.com.mx>
Subject: Re: nvme drive kernel 5.0 problem
From: =?ISO-8859-1?Q?Iv=E1n?= Chavero <ichavero@chavero.com.mx>
To: Ming Lei <tom.leiming@gmail.com>
Date: Mon, 20 May 2019 17:12:46 -0500
In-Reply-To: <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
References: <4a0dda5365f24e7223d1672233d7f1ac64640d31.camel@chavero.com.mx>
 <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_151314_652569_74FB3349 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Cj4gTm90IHNlZSB0aGlzIGlzc3VlIHdpdGggNS4xIGtlcm5lbCwgbWF5IGJlIGFkZHJlc3NlZCBi
eSB0aGUgZm9sbG93aW5nCj4gcGF0Y2hlczoKPiAKPiA0ZTZiMjZkMjNkYzEgUENJL01TSTogUmVt
b3ZlIG9ic29sZXRlIHNhbml0eSBjaGVja3MgZm9yIG11bHRpcGxlCj4gaW50ZXJydXB0IHNldHMK
PiBhNmEzMDllZGJhMTMgZ2VuaXJxL2FmZmluaXR5OiBSZW1vdmUgdGhlIGxlZnRvdmVycyBvZiB0
aGUgb3JpZ2luYWwKPiBzZXQgc3VwcG9ydAo+IDYxMmI3Mjg2MmI0ZCBudm1lLXBjaTogU2ltcGxp
ZnkgaW50ZXJydXB0IGFsbG9jYXRpb24KPiBjNjZkNGJkMTEwYTEgZ2VuaXJxL2FmZmluaXR5OiBB
ZGQgbmV3IGNhbGxiYWNrIGZvciAocmUpY2FsY3VsYXRpbmcKPiBpbnRlcnJ1cHQgc2V0cwo+IDlj
ZmVmNTViYjU3ZSBnZW5pcnEvYWZmaW5pdHk6IFN0b3JlIGludGVycnVwdCBzZXRzIHNpemUgaW4g
c3RydWN0Cj4gaXJxX2FmZmluaXR5Cj4gMDE0NWMzMGU4OTZkIGdlbmlycS9hZmZpbml0eTogQ29k
ZSBjb25zb2xpZGF0aW9uCj4gCj4gCmkndmUgdGVzdGVkIHdpdGggdGhlIDUuMS4zIEZlZG9yYSBr
ZXJuZWwgYW5kIHN0aWxsIGdvdCB0aGUgc2FtZQpiZWhhdmlvdXIuCgpJIHRoaW5rIHRoaXMgbWln
aHQgYmUgcmVsZXZhbnQgdG8gc29sdmUgdGhlIHByb2JsZW0gYnV0IGknbSBub3Qgc3VyZToKClsg
ICAgMi4zOTQ5NjddIFdvcmtxdWV1ZTogbnZtZS1yZXNldC13cSBudm1lX3Jlc2V0X3dvcmsgW252
bWVdCgpbICAgIDIuMzk0OTgyXSBDYWxsIFRyYWNlOgpbICAgIDIuMzk0OTg2XSAgYmxrX21xX3Bj
aV9tYXBfcXVldWVzKzB4MzAvMHhjMApbICAgIDIuMzk0OTkwXSAgbnZtZV9wY2lfbWFwX3F1ZXVl
cysweDgwLzB4YjAgW252bWVdClsgICAgMi4zOTQ5OTNdICBibGtfbXFfYWxsb2NfdGFnX3NldCsw
eDExYy8weDJjMApbICAgIDIuMzk0OTk2XSAgbnZtZV9yZXNldF93b3JrKzB4ZmQ2LzB4MTUxNSBb
bnZtZV0KWyAgICAyLjM5NTAwMF0gID8gX19zd2l0Y2hfdG9fYXNtKzB4NDAvMHg3MApbICAgIDIu
Mzk1MDAxXSAgPyBfX3N3aXRjaF90b19hc20rMHgzNC8weDcwClsgICAgMi4zOTUwMDNdICA/IF9f
c3dpdGNoX3RvX2FzbSsweDQwLzB4NzAKWyAgICAyLjM5NTAwNV0gID8gX19zd2l0Y2hfdG9fYXNt
KzB4MzQvMHg3MApbICAgIDIuMzk1MDA3XSAgcHJvY2Vzc19vbmVfd29yaysweDE5ZC8weDM4MApb
ICAgIDIuMzk1MDEwXSAgd29ya2VyX3RocmVhZCsweDFkYi8weDNiMApbICAgIDIuMzk1MDExXSAg
a3RocmVhZCsweGZiLzB4MTMwClsgICAgMi4zOTUwMTNdICA/IHByb2Nlc3Nfb25lX3dvcmsrMHgz
ODAvMHgzODAKWyAgICAyLjM5NTAxNF0gID8ga3RocmVhZF9wYXJrKzB4OTAvMHg5MApbICAgIDIu
Mzk1MDE2XSAgcmV0X2Zyb21fZm9yaysweDM1LzB4NDAKWyAgICAyLjM5NTAxOF0gLS0tWyBlbmQg
dHJhY2UgM2FmMmIzYWZhOTc3ZmY5ZSBdLS0tCgoKSSB0aGluayB0aGlzIGlzIGEgdGltaW5nIHBy
b2JsZW0gYmVjYXVzZSB0aGUgb3RoZXIgcGFydGl0aW9ucyBkb24ndCBnZXQKbW91bnRlZCByby4K
CldoYXQgY291bGQgaSBkbyB0byBtYWtlIHRoaXMgd29yaz8gSSdtIHN0dWNrIGluIGtlcm5lbCA0
LjE2LjExIGFuZCBpCndvdWxkIHJlYWxseSBsaWtlIHRvIHVzZSBsYXRlc3Qga2VybmVsLgoKQ2hl
ZXJzLApJdsOhbgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
