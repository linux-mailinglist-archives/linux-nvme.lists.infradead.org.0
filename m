Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 118518BF31
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 19:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1q5rCHJt5SG4ji7byKBdLtq2V1ndoR33+nXlZkHKPgs=; b=TtpNuSaSPP5aofk5NK5mDN4N2
	ffmAgRHadyUBvYACcRHom/XAJ6FFOkNVMuubRKkjslF+/oRoFBKIAziBOIeJFuQpFco4mFva4JsR4
	C9ji7zC4udq6vsi5OvRxR+342cToO+LbvDG/LnrPwt5VFedy6bpVyEtNYH5HQB9Qe/krF93NHpbZS
	O5jtAVej/PTkVr+od3nk0xzWJB4YXxeUKOUAJADt/NPghUYmoxEe4a/OYLx5vubwc9OM85OPJl7Oz
	IOIwcOYgF2ZV03/0AuN+99Ef4ct3WEiOQ3490irxNC2P9dXhEmBBj3BC84vrFPX7w6m16dVd1uay4
	8ldc8c9Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaDz-0002JS-WB; Tue, 13 Aug 2019 17:04:44 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaCv-0001Ql-GF
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 17:03:39 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 1DB76AD2B;
 Tue, 13 Aug 2019 17:03:36 +0000 (UTC)
Subject: Re: [PATCHv3] nvme: Return BLK_STS_TARGET if the DNR bit is set
To: Christoph Hellwig <hch@lst.de>
References: <20190812075147.79598-1-hare@suse.de>
 <20190813170144.GA10269@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <955adc31-6d46-3187-54ac-8d342c117bf8@suse.de>
Date: Tue, 13 Aug 2019 19:03:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190813170144.GA10269@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100337_814796_97067193 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gOC8xMy8xOSA3OjAxIFBNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBPbiBNb24sIEF1
ZyAxMiwgMjAxOSBhdCAwOTo1MTo0N0FNICswMjAwLCBIYW5uZXMgUmVpbmVja2Ugd3JvdGU6Cj4+
IElmIHRoZSBETlIgYml0IGlzIHNldCB3ZSBzaG91bGQgbm90IHJldHJ5IHRoZSBjb21tYW5kLCBl
dmVuIGlmCj4+IHRoZSBzdGFuZGFyZCBzdGF0dXMgZXZhbHVhdGlvbiBpbmRpY2F0ZXMgc28uCj4g
Cj4gV2hhdCBwcm9ibGVtIGlzIHRoaXMgZXZlbiB0cnlpbmcgdG8gc29sdmU/ICBOb3RoaW5nIGlu
IHRoZQo+IGRvY3VtZW50YXRpb24gb2YgQkxLX1NUU19UQVJHRVQgc2F5cyBpdCBzaG91bGQgYmUg
cmV0cmllZCBhbnkgbW9yZQo+IG9yIGxlc3MgdGhhbiBvdGhlciBlcnJvciBjb2RlLgo+IAo+IElm
IHlvdSByZWFsbHkgY2FyZSBhYm91dCBhIHJldHJ5YWJsZSB2cyBub3QgcmV0cnlhYmxlIGRpc3Rp
bmN0aW9uCj4gYXQgdGhlIGJsb2NrIGxheWVyIHdlIG5lZWQgdG8gcHJvcGFnYXRlIHRoZSBlcXVp
dmFsZW50IG9mIHRoZSBETlIKPiBiaXQuCj4gClRoYXQgd2FzIG15IHdvcnJ5LCB0b28uCkJ1dCBJ
IHdhc24ndCBzdXJlIGlmIHRoYXQgd2FzIHRoZSBkaXJlY3Rpb24gd2Ugc2hvdWxkIGJlIGdvaW5n
LgpQZXJzb25hbGx5LCBJJ2QgYmUgbW9yZSB0aGFuIGhhcHB5IHRvIGFkZCBhIGZsYWcgZm9yIG5v
bi1yZXRyeWFibGUgZXJyb3JzLgoKTGV0J3Mgc2VlIGhvdyBpdCB3b3VsZCBsb29rIGxpa2UgLi4u
CgpDaGVlcnMsCgpIYW5uZXMKLS0gCkRyLiBIYW5uZXMgUmVpbmVja2UgICAgICAgICAgICBUZWFt
bGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIu
IDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMs
IFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51
eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
