Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7226E15B
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 09:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXk0Z22ZCTQgKm0RJingFu9RjkREaMGjlJRoTnN6llU=; b=IsAP67CX/aZVJm
	Q9Z/VcGxcCOMcx0eaOFrgYTVbn5myYqboLvz1/VWeT4oXso8G0fUhfkqd+w9Tf7lU0uOJRTlGhE9M
	NQXbDiBZdHCrBLTANPZfMxfsQm04iX50zTYPRJ/8MoKTtHzUS9aIwl/HgIgpEChJRbN1KgQfMWDy4
	QDVAhEXd/edh8cUT6//zED4neznZ0CKSX6XIbIWL/L/sNR6Al1IybUxNdz5KtDnaQeT4mtvYZMklE
	aOI+HNIo91jsKOSZpyxPpoWqKbqTKY2BChPKF9e09NHyjF28ePA+r5PrMgs077GsqnlmTyiNhIpHb
	3OKHhthyuocUSRBR90Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoMyZ-0007ev-61; Fri, 19 Jul 2019 07:06:43 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoMyM-0007d9-8d
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 07:06:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6D5C6AD18;
 Fri, 19 Jul 2019 07:06:26 +0000 (UTC)
Subject: Re: [PATCH] nvme-multipath: sanitize nvme_update_ana_state()
To: John Donnelly <john.p.donnelly@oracle.com>, Christoph Hellwig <hch@lst.de>
References: <20190716071830.22672-1-hare@suse.de>
 <20190716093825.GC32562@lst.de>
 <aa83c6b8-5d72-2e11-2681-5bb2e67ba890@suse.de>
 <20190717143859.GA13872@lst.de>
 <D78D352F-0E90-46E1-ABBC-1093CBD858C3@oracle.com>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <0d34286c-3c81-8e8f-57b2-480ad33f4648@suse.de>
Date: Fri, 19 Jul 2019 09:06:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <D78D352F-0E90-46E1-ABBC-1093CBD858C3@oracle.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_000630_596702_8AB038BC 
X-CRM114-Status: GOOD (  20.42  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8xOC8xOSA4OjA4IFBNLCBKb2huIERvbm5lbGx5IHdyb3RlOgo+IAo+IAo+PiBPbiBKdWwg
MTcsIDIwMTksIGF0IDk6MzggQU0sIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3cm90
ZToKPj4KPj4gT24gVHVlLCBKdWwgMTYsIDIwMTkgYXQgMTI6MDI6MTVQTSArMDIwMCwgSGFubmVz
IFJlaW5lY2tlIHdyb3RlOgo+Pj4gVGhlIHVuZGVybHlpbmcgcHJvYmxlbSBpcyB0aGUgJ1dBUk5f
T04oKScsIHdoaWNoIGFjdHVhbGx5IGNhbiAoYW5kIGlzKQo+Pj4gdHJpZ2dlcmVkIHdoZW4gQU5B
IGNoYW5nZSBBRU5zIGFyZSByZWNlaXZlZCBkdXJpbmcgY29udHJvbGxlciAocmUtKSBjb25uZWN0
Lgo+Pj4gQXQgdGhlIHNhbWUgdGltZSBpdCdzIHF1aXRlIHBvaW50bGVzcyB0byB1cGRhdGUgdGhl
IEFOQSBzdGF0ZSBmb3IKPj4+IG5hbWVzcGFjZXMgd2hpY2ggYXJlIG9uIHRoZWlyIHdheSBvdXQ7
IHdlIF9zdGlsbF8gc2VlaW5nIG9kZCBiZWhhdmlvdXIKPj4+IGR1cmluZyBzaW11bHRhbmVvdXMg
cmVzY2FuL3Jlc2V0LCBhbmQgdGhpcyBpcyBqdXN0IGFub3RoZXIgc2FmZWd1YXJkLgo+Pj4KPj4+
IEJ1dCBmb3Igbm93IEknZCBiZSBoYXBweSB0byBkcm9wIHRoZSBjaGVjayBmb3IgTlNfUkVNT1ZJ
TkcgYW5kIGp1c3QKPj4+IGRlbGV0ZSB0aGUgV0FSTl9PTigpLgo+Pgo+PiBXZWxsLCB3ZSBzaG91
bGQgY2VydGFpbmx5IHNraXAgdGhlIG52bWVfbXBhdGhfc2V0X2xpdmUgYXMgd2VsbCBmb3IKPj4g
YSByZW1vdmluZyBuYW1lc3BhY2UuICBCdXQgeWVzLCBJJ2QgcHJlZmVyIHRvIG1vdmUgdGhlIGNo
ZWNrIHRoZXJlCj4+IGFuZCB0aGVuIHJlbW92ZSB0aGUgV0FSTl9PTiBvdmVyIHRoZSBiaWcgaGFt
bWVyLgo+Pgo+IAo+IEhpIAo+ICAgSSBoYXBwZW4gdG8gYmUgc2VlaW5nIHRoaXMgV0FSTklORyBp
biBhIHBvcnQgd2UgYXJlIHVzaW5nIHdoaWxlIGRvaW5nCj4gZmFpbG92ZXIgdGVzdGluZyAuIElm
IHRoZSBXQVJOSU5HIGlzIHJlbW92ZWQgLCBzaG91bGQgdGhlcmUgYmUgYW5vdGhlcgo+IGxvZ2dp
bmcgbWVzc2FnZSBvZiBhIHNpbWlsYXIgbmF0dXJlIHRoYXQgYWxlcnRzIG9mIGEgY29uZmlndXJh
dGlvbiBpc3N1ZQo+IGhhcyBiZWVuIGRldGVjdGVkID8gT3IgaXMgdGhpcyBhIHRyYW5zaWVudCBj
b25kaXRpb24gPyAKPiAKVGhpcyBpcyB0eXBpY2FsbHkgYSB0cmFuc2llbnQgY29uZGl0aW9uLgpJ
ZiB3ZSByZWNlaXZlIGFuIEFOQSBjaGFuZSBBRU4gd2hpbGUgc2Nhbm5pbmcgaXMgaW4gcHJvZ3Jl
c3MgdGhlIEFOQSBsb2cKcGFnZSB3aWxsIGNvbnRhaW4gYWxsIG5hbWVzcGFjZXMsIHlldCB0aGUg
c2Nhbm5pbmcgdGhyZWFkIGlzIHN0aWxsCnByb2Nlc3NpbmcgYW5kIGhhc24ndCBjb25uZWN0ZWQg
YWxsIG5hbWVzcGFjZXMuIEhlbmNlIHdlIHNlZSB0aGlzIGVycm9yLgoKQ2hlZXJzLAoKSGFubmVz
Ci0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2lu
ZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJ
TlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTD
tnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcp
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1u
dm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
