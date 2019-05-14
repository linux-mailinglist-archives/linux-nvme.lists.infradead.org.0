Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386041C6E8
	for <lists+linux-nvme@lfdr.de>; Tue, 14 May 2019 12:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zNBKd93VfLHqoym1Daq6LEZZEFrlzRiFpEOuMvhZusg=; b=lfkujik8uIwMdqzIUmitHqDWn
	z1wEkPbB2TYytQLnzrohWmwb+0+4s8s/iv3/x2A4IPDN3XK3XjspSGm1l0SaQKLrn737SOIKIqVZI
	bjQPuj13PR+QBDPIpbRgd2S6Xaoxl0IywSiO7wO0eUK8vrobOiyRi9BNFsEKHiJfX5/hzHrhfKu4L
	/snlrUcG0LY3YJu/GCYz+7I20q9vS9OBRJQieNds2Stlur0rm2HAH3YQ/7LKnxZrQ5qu5yukaI6cB
	8vb84AB59f7Y+TPkX8qnJMfVkdnJeJoZc2D06WfbtbCOrY+4w3R7eZy3mzIOcPuQbtQyFj7iRg5v1
	lI67VGumw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQUXe-0005VU-Kv; Tue, 14 May 2019 10:20:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQUXU-0005V0-QA
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 10:20:06 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 8DA25AE43;
 Tue, 14 May 2019 10:20:03 +0000 (UTC)
Subject: Re: [PATCH 4/7] lpfc: Add support to generate RSCN events for nport
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190513224314.24169-1-jsmart2021@gmail.com>
 <20190513224314.24169-5-jsmart2021@gmail.com>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <e052dd2f-1466-5679-19af-0ca3fedfbd85@suse.de>
Date: Tue, 14 May 2019 12:20:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513224314.24169-5-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_032005_013667_E153659C 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dick Kennedy <dick.kennedy@broadcom.com>, martin.petersen@oracle.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xNC8xOSAxMjo0MyBBTSwgSmFtZXMgU21hcnQgd3JvdGU6Cj4gVGhpcyBwYXRjaCBhZGRz
IGdlbmVyYWwgUlNDTiBzdXBwb3J0Ogo+IC0gVGhlIGFiaWxpdHkgdG8gdHJhbnNtaXQgYW4gUlND
TiB0byB0aGUgcG9ydCBvbiB0aGUgb3RoZXIgZW5kIG9mCj4gICAgdGhlIGxpbmsgKHJlZ3VsYXIg
cG9ydCBpZiBwdDJwdCwgb3IgZmFicmljIGNvbnRyb2xsZXIgaWYgZmFicmljKS4KPiAtIEFuZCBn
ZW5lcmFsIHJlY29nbml0aW9uIG9mIGFuIFJTQ04gRUxTIHdoZW4gYW4gRUxTIGlzIHJlY2VpdmVk
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IERpY2sgS2VubmVkeSA8ZGljay5rZW5uZWR5QGJyb2FkY29t
LmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKYW1lcyBTbWFydCA8anNtYXJ0MjAyMUBnbWFpbC5jb20+
Cj4gLS0tCj4gICBkcml2ZXJzL3Njc2kvbHBmYy9scGZjLmggICAgICAgICB8ICAgMSArCj4gICBk
cml2ZXJzL3Njc2kvbHBmYy9scGZjX2NydG4uaCAgICB8ICAgMiArCj4gICBkcml2ZXJzL3Njc2kv
bHBmYy9scGZjX2Vscy5jICAgICB8IDEyMiArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysKPiAgIGRyaXZlcnMvc2NzaS9scGZjL2xwZmNfaGJhZGlzYy5jIHwgIDM1ICsrKysr
KysrKysrCj4gICBkcml2ZXJzL3Njc2kvbHBmYy9scGZjX2h3LmggICAgICB8ICAgMiArCj4gICBk
cml2ZXJzL3Njc2kvbHBmYy9scGZjX3NsaS5jICAgICB8ICAgMSArCj4gICA2IGZpbGVzIGNoYW5n
ZWQsIDE2MyBpbnNlcnRpb25zKCspCj4gCgpSZXZpZXdlZC1ieTogSGFubmVzIFJlaW5lY2tlIDxo
YXJlQHN1c2UuY29tPgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkg
ICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAg
ICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkw
NDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBS
YXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1l
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1udm1lCg==
