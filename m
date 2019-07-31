Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF167CDAD
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 22:03:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ycFA3AlqNBRVNpPPkCaGOjit5GuQZ59F3WLOouT23SM=; b=ED+kvwSHWWSq0dVCLzZwPpgrZ
	gWO5dabQ10WUcqSW+nuhhmHyTdsCTE0JMmy3P6Pe6dR5iacq3jNpM9T45fG8yOMteYyxLjQHPjVIN
	InYCIjg1b0s0eEmKOvzW6rILcuEBTJqscQAQB+TEUTe9/GN6/7JCpl1NrnLASgsNOKRAeD7tkM+F+
	6jMfhOjoCQU39m1zz4uO12NUe2w2xZVzFxO1oJ0G6qw4r0zxE49pAN7DA0qScYFFuScwn1eQeSDTR
	AmH8vvkn6HkR2iBcvfAAmAbMlNpabDrcPkW3r9DGzCX9H5h0+ht8XBDzXRhnvBBYY3Dcn34HZaRVa
	PgOyzfy1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsuoa-0003tY-GZ; Wed, 31 Jul 2019 20:03:12 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsuoE-0003Z2-9m
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 20:02:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A064FAF11;
 Wed, 31 Jul 2019 20:02:47 +0000 (UTC)
Subject: Re: [PATCH rfc 1/2] nvme: don't remove namespace if revalidate failed
 because of controller reset
To: Sagi Grimberg <sagi@grimberg.me>, Ming Lei <tom.leiming@gmail.com>
References: <20190729233201.27993-1-sagi@grimberg.me>
 <20190729233201.27993-2-sagi@grimberg.me>
 <CACVXFVM+WGwQeqiK-poVKoQR4hVxCMWu0n0-HdVGb8EDDCySSA@mail.gmail.com>
 <464bb489-552f-b67e-545d-48616a1e76dd@grimberg.me>
 <CACVXFVO+e5De4+o8cqzvaVbMU22geicCbpmfk6zZStykEiDVmw@mail.gmail.com>
 <82a91815-f7ed-5931-58ac-5893e68cc940@grimberg.me>
 <CACVXFVN6o+dOFwDV=FPSHjVnhYSLBUWNHsXc4B=fwE5PAny_dQ@mail.gmail.com>
 <8bd6d219-f4fd-de58-a341-257c6274eddd@grimberg.me>
 <CACVXFVNT5sjk4MC6qJoBFug8K9YgEFQEy6LSknJT6=O-2ispMg@mail.gmail.com>
 <2825eb74-1df5-5dd2-3e90-c696bc7fa3d1@grimberg.me>
 <0e103ae2-b0b5-28e5-bfea-35d8f683809a@suse.de>
 <ef157a14-748b-08a1-b5e5-f5f9676988f7@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <82c624fc-257d-66a9-90e6-792900f58b29@suse.de>
Date: Wed, 31 Jul 2019 22:02:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <ef157a14-748b-08a1-b5e5-f5f9676988f7@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_130250_498585_EA6D82C2 
X-CRM114-Status: GOOD (  19.70  )
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8zMS8xOSA4OjExIFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IAo+Pj4gWW91IGFyZSBj
b3JyZWN0LCB0aGlzIHdhcyB3aHkgSSBoYWQgdGhlIGN0cmwtPnN0YXRlIGNoZWNrIGFmdGVyCj4+
PiByZXZhbGlkYXRlX2Rpc2sgc28gaWYgaXQgZmFpbGVkIGJlY2F1c2Ugd2UgYXJlIGluIGEgcmVz
ZXQgd2Ugc2hvdWxkCj4+PiBub3QgcmVtb3ZlIHRoZSBuYW1lc3BhY2UuCj4+Pgo+Pj4gV2UgbmVl
ZCBhIHJlbGlhYmxlIHdheSB0byBOT1QgcmVtb3ZlIHRoZSBuYW1lc3BhY2UgaWYgcmV2YWxpZGF0
ZV9kaXNrCj4+PiBmYWlsZWQgYmVjYXVzZSB0aGUgY29udHJvbGxlciBpcyByZXNldHRpbmcgYW5k
IHdlIGRvbid0IGhhdmUgYSBjaGFubmVsCj4+PiB0byB0aGUgY29udHJvbGxlciBhdCB0aGlzIHZl
cnkgbW9tZW50Li4uCj4+Pgo+PiBBIHNpbWlsYXIgdGhpbmcgaXMgdHJ1ZSBmb3IgdGhlICduc19o
ZWFkJyBzdHJ1Y3R1cmU7IEkgY291bGQgZWFzaWx5Cj4+IGVudmlzaW9uIGEgc2NlbmFyaW8gd2hl
cmUgYWxsIHBhdGhzIGFyZSBkcm9wcGVkIChkdWUgdG8gcmV2YWxpZGF0ZQo+PiBmYWlsdXJlcyBv
ciB3aGF0bm90KSB3aXRoIGFsbCBjb250cm9sbGVycyBpbiByZXNldC4KPiAKPiBIYW5uZXMsIHBh
dGhzIHNob3VsZCBub3QgYmUgZHJvcHBlZCBpbiBjb250cm9sbGVyIHJlc2V0cywgb25seSB3aGVu
Cj4gdGhlIGNvbnRyb2xsZXIgaXMgZ29pbmcgYXdheS4gSXRzIHNpbXBsZSBhcyB0aGF0Lgo+IApG
dWxseSBhZ3JlZS4gQnV0IHNvIGZhciB3ZSBkb24ndCBzZWVtIHRvIGJlIHRoZXJlIHlldC4KCj4+
IEJ1dCBhcyBhbGwgcGF0aHMgYXJlIGRyb3BwZWQgc3RydWN0IG5zX2hlYWQgZG9lc24ndCBoYXZl
IGFueSByZWZlcmVuY2UKPj4gdG8gYW55IG5hbWVzcGFjZXMgKGFuZCBjb25zZXF1ZW50bHksIHRv
IGFueSBjb250cm9sbGVyKSwgYW5kIHdpbGwgYmUKPj4gZmFpbGluZyBhbGwgSS9PIGJlZm9yZSBp
dHNlbGYgYmVpbmcgcmVtb3ZlZC4KPj4gSXQgd2lsbCBiZSByZS1jcmVhdGVkIGFmdGVyIHJlc2V0
dGluZyBjb21wbGV0ZXMgYW5kIGFsbCBuYW1lc3BhY2VzIGFyZQo+PiByZS1hdHRhY2hlZCwgZm9y
IHN1cmUsIGJ1dCBpdCBzdGlsbCBtZWFucyB0aGF0IHdlJ3JlIGdldHRpbmcgSS9PIGVycm9ycwo+
PiB3aGVyZSB3ZSByZWFsbHkgc2hvdWxkbid0Lgo+IAo+IFBhdGhzIHNob3VsZCBvbmx5IGJlIHJl
bW92ZWQgd2hlbiB0aGUgY29udHJvbGxlciBpcyBnb2luZyBhd2F5LCBub3Qgd2hlbgo+IGl0IGlz
IHRlbXBvcmFyaWx5IGRpc2Nvbm5lY3RlZC4KCkknbSBmdWxseSBpbiBsaW5lIHdpdGggdGhhdC4K
SG93ZXZlciwgaXQgbG9va3MgYXMgaWYgdGhpcyBpc24ndCB0aGUgY2FzZSBjdXJyZW50bHkgOi0p
CkFuZCB3aGVuZXZlciBJIHRyeSB0byBjb21lIHVwIHdpdGggYSBzb2x1dGlvbiBoZXJlIEkgYWx3
YXlzIGNvbWUgYmFjayB0byAKdGhlIHRob3VnaHQ6IEl0IHdvdWxkJ3ZlIGJlZW4gZWFzaWVyIGlm
IHdlIGp1c3QgY291bGQgZmx1c2ggc2Nhbl93b3JrIC4uLgoKQW5kIG15IG1haW4gd29ycnkgaGVy
ZSBpczogc3VyZWx5IHdlJ2xsIG1hbmFnZSB0byBoYXNoIG91dCB0aGUgc2l0dWF0aW9uIApldmVu
dHVhbGx5LCBhbmQgZml4dXAgYWxsIGNvZGUgcGF0aHMgdG8gYXZvaWQgZHJvcHBpbmcgcGF0aHMg
ZHVyaW5nIHJlc2V0LgpCdXQgdGhlIHNvbHV0aW9uIHdpbGwgYmUgdmVyeSBmcmFnaWxlLCBhcyBh
bnkgaW5ub2NlbnQgY2hhbmdlIHRoZXJlIAptaWdodCBicmVhayB0aGluZ3MgYWdhaW4uIFNvIEkn
bSBub3QgY29udmluY2VkIHRoYXQgYXN5bmNocm9ub3VzIHJlc2V0IAphbmQgcmVzY2FuIGlzIGEg
ZmVhdHVyZSB3aGljaCBzaG91bGQgYmUga2VwdC4KKEFuZCBob25lc3RseSwgd2UncmUgd29ya2lu
ZyB0b3dhcmRzIGEgc29sdXRpb24gd2hlcmUgc2Nhbm5pbmcgZHVyaW5nIApyZXNldCB3aWxsIGJl
Y29tZSBhIG5vLW9wIC4uLikKCkJ1dCBhbnl3YXksIHByaW1lIG9iamVjdGl2ZSBpcyB0byBnZXQg
dGhpcyBtZXNzIGZpeGVkIDotKQoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5l
Y2tlICAgICAgICAgICAgVGVhbWxlYWQgU3RvcmFnZSAmIE5ldHdvcmtpbmcKaGFyZUBzdXNlLmRl
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgKzQ5IDkxMSA3NDA1MyA2ODgKU1VTRSBMSU5V
WCBHbWJILCBNYXhmZWxkc3RyLiA1LCA5MDQwOSBOw7xybmJlcmcKR0Y6IEZlbGl4IEltZW5kw7Zy
ZmZlciwgTWFyeSBIaWdnaW5zLCBTcmkgUmFzaWFoCkhSQiAyMTI4NCAoQUcgTsO8cm5iZXJnKQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZt
ZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
