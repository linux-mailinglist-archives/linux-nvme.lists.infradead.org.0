Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F364A1855DD
	for <lists+linux-nvme@lfdr.de>; Sat, 14 Mar 2020 15:46:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BYvKaqRSlk7F0Pd7X3rW7HGzEwf291wPgNP70XpVUdg=; b=Obg+eZKTcHQIT/NevrAeNxUow
	w8NcCkYYD5u+8Na0twjqF/iPFRdidcb3hyn9xaYfDcDPoQBnk9zSL1U2fIZCGzBxvrbovdQasJ7/l
	lcAV5GurnubwfUoqrT17qv3YSJxno1V/C8nJMOk65B2Iave5k4aOwDpT1VnJ+WOSDxms4AoCkFfe6
	3vujNEFtZ7NVVPZrqb39fix4LtsG2W3d2O3HueGq5afFDvQmxshpy88aURhDiAAB0OeiiuGWMwISY
	e93mqApVV4COiL7Y+nNOEECcYMaAQPqi3c/LQmLZlYzQBtVXBYstN6HwlQ+JCEhUWYdAiKyF3lTMM
	STkxvgFSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD837-0006v2-48; Sat, 14 Mar 2020 14:46:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD832-0006tg-Se
 for linux-nvme@lists.infradead.org; Sat, 14 Mar 2020 14:45:58 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 44722AD05;
 Sat, 14 Mar 2020 14:45:51 +0000 (UTC)
Subject: Re: [PATCH] nvme/fc: use real sqsize as argument when connecting
 queues
To: Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
References: <20200313124808.39320-1-hare@suse.de>
 <7454340a-1cf1-d661-d1b8-e0181f755619@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <6ec99699-4fd2-e06d-6a70-cdfb1940112d@suse.de>
Date: Sat, 14 Mar 2020 15:45:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <7454340a-1cf1-d661-d1b8-e0181f755619@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_074557_073149_138D97D9 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@wdc.com>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMy8xMy8yMCA5OjI0IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+IE9uIDMvMTMvMjAg
NTo0OCBBTSwgSGFubmVzIFJlaW5lY2tlIHdyb3RlOgo+PiBXaGVuIGNyZWF0aW5nIHF1ZXVlcyB3
ZSBzaG91bGQgYmUgcGFzc2luZyBpbiB0aGUgcmVhbCBzcXNpemUgbnVtYmVyLAo+PiBhbmQgbm90
IGluY3JlYXNpbmcgaXQgYnkgb25lIGp1c3Qgc28gdGhhdCB0aGUgZnVuY3Rpb24gaGFzIHRvCj4+
IHN1YnN0cmFjdCBpdCBhZ2Fpbi4KPiAKPiBLaW5kYSBtYWtlcyBtb3JlIHNlbnNlIHRvIHBhc3Mg
YXJvdW5kIGFjdHVhbCBxdWV1ZSBzaXplIGFuZAo+IG5vdCB0aGUgemVyby1iYXNlZCB2ZXJzaW9u
IG9mIGl0LCBpc24ndCBpdD8KPiAKT2gsIGl0IHdvdWxkLgpCdXQgdGhlbiBJIHdvdWxkIGhhdmUg
ZXhwZWN0ZWQgY3RybC0+c3FzaXplIGNhcnJ5aW5nIHRoZSAncmVhbCcgcXVldWUgCnNpemUuIFdo
aWNoIHdlIGN1cnJlbnRseSBkb24ndCAoVGhhdCB3aHkgSSd2ZSBzZW50IHRoZSBvdGhlciBwYXRj
aCkuCgpCdXQgY2FsbGluZyBhIGZ1bmN0aW9uIHdpdGggKGFyZyArIDEpLCBqdXN0IHNvIHRoYXQg
dGhlIGZ1bmN0aW9uIGJvZHkgCmRvZXMgYW4gJ2FyZyAtIDEnIGludGVybmFsbHkgaXMgdG90YWxs
eSBwb2ludGxlc3MuCgpXaGF0IEknbSBhaW1pbmcgYXQgd2l0aCB0aGVzZSBwYXRjaGVzIGlzIHRv
IGtlZXAgY3RybC0+c3FzaXplIGFzIHRoZSAKcmVhbCAoMS1iYXNlZCkgIHNpemUsIHRvIGJlIGNv
bnZlcnRlZCB0byB0aGUgd2lyZSBmb3JtYXQgKDAtYmFzZWQpIHdoZW4gCmFjdHVhbGx5IHB1dCBv
biB0aGUgd2lyZS4KQW5kIGFsbG9jYXRpbmcgdGhlIHRhZ3NldCB3aXRoIChjdHJsLXNxc2l6ZSAt
IDEpIHRvIGNvdmVyIHRoZSBxdWV1ZSBmdWxsIApkZXRlY3RlZCBhcyBtYW5kYXRlZCBieSB0aGUg
c3BlYy4KCkknbGwgYmUgcmV2aWV3aW5nIHRoZSBwYXRjaGVzIHdpdGggdGhhdCBpbiBtaW5kIGFu
ZCB3aWxsIGJlIHJlc2VuZGluZyBhIApuZXcgdmVyc2lvbi4KCkNoZWVycywKCkhhbm5lcwotLSAK
RHIuIEhhbm5lcyBSZWluZWNrZSAgICAgICAgICAgIFRlYW1sZWFkIFN0b3JhZ2UgJiBOZXR3b3Jr
aW5nCmhhcmVAc3VzZS5kZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICArNDkgOTExIDc0
MDUzIDY4OApTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQw
OSBOw7xybmJlcmcKSFJCIDM2ODA5IChBRyBOw7xybmJlcmcpLCBHZXNjaMOkZnRzZsO8aHJlcjog
RmVsaXggSW1lbmTDtnJmZmVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1udm1lCg==
