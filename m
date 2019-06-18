Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1887949B85
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 09:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nBPcsOJW66PhYQ9D98GZOva8R0MwByHzKKQqatGhhuI=; b=HiQD59+JfYkY0X
	kLurWC8CU4S3CEw7GiEPcADSmChM1gLaUIliurymkULk+snXD5WhkuyHpgw2LG9JO/fxwyeVYyfxL
	lbzjeRmYow5KHnRtlvRe6npP+GXAJSRwbsIiZOFkPnH9OBPJqUx/lPt7XAmZTbUesSImiGHPmra08
	Hk+ghrmsKKNfaEmF9LIXbux790pSpCYcPBhXiFcx0t7FeRKJIgp3sd2RCc6ecAbMdvNZ5ERTx2mm5
	iGwbx5KmV4PCmhEqDqlQu6MH0wg43DU/ESkaFPWw5piX/fIRIpwJ5h3mwhJaHviZNt2mN61I6yl1Z
	jeeR6/uSy+K66WcmBj6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8uW-0001Zn-VC; Tue, 18 Jun 2019 07:52:08 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8uP-0001Ys-UQ
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 07:52:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id AC1DEAFA9;
 Tue, 18 Jun 2019 07:52:00 +0000 (UTC)
Subject: Re: [PATCH v3 0/3] NVMe 1.4 Identify Namespace Support
To: Bart Van Assche <bvanassche@acm.org>, Christoph Hellwig <hch@lst.de>
References: <20190617161222.253849-1-bvanassche@acm.org>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <aa89ce11-b24b-fdd6-c83f-939124356584@suse.de>
Date: Tue, 18 Jun 2019 09:52:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617161222.253849-1-bvanassche@acm.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_005202_273192_F98F5A11 
X-CRM114-Status: GOOD (  20.66  )
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNi8xNy8xOSA2OjEyIFBNLCBCYXJ0IFZhbiBBc3NjaGUgd3JvdGU6Cj4gSGkgQ2hyaXN0b3Bo
LAo+IAo+IFRoaXMgcGF0Y2ggc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3Igc2V2ZXJhbCBvZiB0aGUg
bmV3IHBhcmFtZXRlcnMgaW50cm9kdWNlZAo+IGluIHRoZSBOVk1lIDEuNCBJZGVudGlmeSBOYW1l
c3BhY2UgY29tbWFuZC4gUGxlYXNlIGNvbnNpZGVyIHRoZXNlIHBhdGNoZXMKPiBmb3Iga2VybmVs
IHZlcnNpb24gNS4zLgo+IAo+IFRoYW5rcywKPiAKPiBCYXJ0Lgo+IAo+IENoYW5nZXMgY29tcGFy
ZWQgdG8gdjI6Cj4gLSBJbiB0aGUgaW5pdGlhdG9yLCB1c2UgQVdVUEYgaW5zdGVhZCBOQVdVUEYg
aWYgTkFXVVBGID09IDAuCj4gCj4gQ2hhbmdlcyBjb21wYXJlZCB0byB2MToKPiAtIEFkZGVkIGEg
cGF0Y2ggZm9yIHRoZSBOVk1lIHRhcmdldCBjb2RlIHRoYXQgZXhwb3J0cyB0aGVzZSBwYXJhbWV0
ZXJzLgo+IC0gTGltaXRlZCB0aGUgcGh5c2ljYWwgYmxvY2sgc2l6ZSB0byB0aGUgdmFsdWUgb2Yg
QVdVUEYvTkFXVVBGIGFzIGFwcHJvcHJpYXRlLgo+IAo+IEJhcnQgVmFuIEFzc2NoZSAoMyk6Cj4g
ICBudm1lOiBJbnRyb2R1Y2UgTlZNZSAxLjQgSWRlbnRpZnkgTmFtZXNwYWNlIGZpZWxkcyBpbiBz
dHJ1Y3QKPiAgICAgbnZtZV9pZF9ucwo+ICAgbnZtZXQ6IEV4cG9ydCBOVk1lIG5hbWVzcGFjZSBh
dHRyaWJ1dGVzCj4gICBudm1lOiBTZXQgcGh5c2ljYWwgYmxvY2sgc2l6ZSBhbmQgb3B0aW1hbCBJ
L08gc2l6ZSBhY2NvcmRpbmcgdG8gTlZNZQo+ICAgICAxLjQKPiAKPiAgZHJpdmVycy9udm1lL2hv
c3QvY29yZS5jICAgICAgICAgIHwgMzAgKysrKysrKysrKysrKysrKysrKy0tCj4gIGRyaXZlcnMv
bnZtZS9ob3N0L252bWUuaCAgICAgICAgICB8ICAxICsKPiAgZHJpdmVycy9udm1lL3RhcmdldC9h
ZG1pbi1jbWQuYyAgIHwgIDUgKysrKwo+ICBkcml2ZXJzL252bWUvdGFyZ2V0L2lvLWNtZC1iZGV2
LmMgfCA0NSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gIGRyaXZlcnMvbnZtZS90
YXJnZXQvaW8tY21kLWZpbGUuYyB8IDM3ICsrKysrKysrKysrKysrKysrKysrKysrKysKPiAgZHJp
dmVycy9udm1lL3RhcmdldC9udm1ldC5oICAgICAgIHwgIDIgKysKPiAgaW5jbHVkZS9saW51eC9u
dm1lLmggICAgICAgICAgICAgIHwgMTIgKysrKysrLS0tCj4gIDcgZmlsZXMgY2hhbmdlZCwgMTI3
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCkNhbiB5b3Ugc2VuZCBhIHBhdGNoIGZv
ciBudm1lLWNsaSwgdG9vPwoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tl
CQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAg
ICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUs
IDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNy
aSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1u
dm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1udm1lCg==
