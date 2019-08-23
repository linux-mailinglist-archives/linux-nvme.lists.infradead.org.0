Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2BF9B4B7
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 18:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=u9pJ60pjkp+0cwiCRwuKc2V15UqwaTALOnFgW4GUNFI=; b=WlR7etHeoZReWwkBxkFDIwUeM
	OD5aeRQ2zp1Oq9uKApAyDwZDCTV8qwrOWUZQzG9xD/2yeZBKOx/NP0xwCRGxzwmlkXUfO5p0mZC7V
	cATA2Ei59vV435/mkxva/+NT3sMaa4U0K6SAJv34sTLmNLFrXwt8zl0qIXdJMdfzEq3lWuw2ADMha
	r20OEAqd1zd0ycsDTlmQdlpYvJ9jc7CM1kPFZQlcp33DuzStpfox3k2I7mTDBYXcVKJvoSfvdzDJo
	3uSEaSV3r9c5bVguTAygXFbCgdaLwgHPmFpo6jipyM0xZDWPICmZbIDsHcwv41oVoZsqgCniBNNFc
	Ph5Of9DTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1CfF-0006Pg-0e; Fri, 23 Aug 2019 16:43:49 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1CfA-0006PJ-MA
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 16:43:46 +0000
Received: by mail-pf1-x443.google.com with SMTP id i30so6796143pfk.9
 for <linux-nvme@lists.infradead.org>; Fri, 23 Aug 2019 09:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=5d+1LM6Oc922yIqsQwrc2LpRvqIvyTbdjJ/dNGuG7DY=;
 b=Mos1U8EmH+QVhlPVzqdKHEUrV9gXq9pa9KPBzvN4m4GjL28LOPrs2gAAE4VkMY5NK7
 B7CbjP3+fqEo+sDtzWihrB0Pw/qJhpsb93deRO60YLhWRUjTlpvyPbooCnUcxKJtGs3W
 zAU82Cl2VNiGCqCRlBuUaAzc2DjsdEZ9OvHsA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=5d+1LM6Oc922yIqsQwrc2LpRvqIvyTbdjJ/dNGuG7DY=;
 b=GKtx33zhbVkYTROSqkav6SLME0/JxDNgscilFWuqeCFJdfgXJz7AAtWVayDOd7tnkK
 3R9S76wEgDSzddG2pTwKiVF2Q3zSwUAizUTlcfVBEBU0B/d561l72nrARzT0vRhYRn5L
 nhTED3i6IsGkjK8K3g5k3ovqk4O4YlnOPAOnC1k8gGF9H3Wn8dy1Ck0b6ITy1pYjqNGZ
 GlW1YVVAtq5F4rj8e8Tp+Qxri8WOpFuNl3u1sQ5gPKsP9oSfSfEJm1TTOgSEEYciMTxH
 sHK5Q4Sy926myKex+5YsBBh20QZwu6AnqxBp6cqdQzvAneajw9MISh30eQ5ws7jrj2q5
 3ARA==
X-Gm-Message-State: APjAAAV9GZSTnsEJoZJ8LmnTecKlpfaqOPct8wQN80muKU/cs5QSWvnx
 cc9rO0G6W3oeYLDe08i5m8BTpw==
X-Google-Smtp-Source: APXvYqwSKynVgp2KTQYgvK2pOxTlgFZOLkf8Mb1SrVCTM9ML8784FaTVrZau7RqjpACCQoobMGYIFA==
X-Received: by 2002:a63:fe52:: with SMTP id x18mr5011327pgj.344.1566578623772; 
 Fri, 23 Aug 2019 09:43:43 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id x128sm6605763pfd.52.2019.08.23.09.43.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 23 Aug 2019 09:43:43 -0700 (PDT)
Subject: Re: [PATCH v3] nvme: make all fabrics command run on a separate
 request queue
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190822233932.29003-1-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <1b2a1688-a4e8-d66a-9395-ba1dbeaaed7c@broadcom.com>
Date: Fri, 23 Aug 2019 09:43:37 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822233932.29003-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_094344_736159_49436ECC 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Hannes Reinecke <hare@suse.de>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA4LzIyLzIwMTkgNDozOSBQTSwgU2FnaSBHcmltYmVyZyB3cm90ZToKPiBXZSBoYXZlIGEg
ZnVuZGFtZW50YWwgaXNzdWUgdGhhdCBmYWJyaWMgY29tbWFuZHMgdXNlIHRoZSBhZG1pbl9xLgo+
IFRoZSByZWFzb24gaXMsIHRoYXQgYWRtaW4tY29ubmVjdCwgcmVnaXN0ZXIgcmVhZHMgYW5kIHdy
aXRlcyBhbmQKPiBhZG1pbiBjb21tYW5kcyBjYW5ub3QgYmUgZ3VhcmFudGVlZCBvcmRlcmluZyB3
aGlsZSB3ZSBhcmUgcnVubmluZwo+IGNvbnRyb2xsZXIgcmVzZXRzLgo+Cj4gRm9yIGV4YW1wbGUs
IHdoZW4gd2UgcmVzZXQgYSBjb250cm9sbGVyIHdlIHBlcmZvcm06Cj4gMS4gZGlzYWJsZSB0aGUg
Y29udHJvbGxlcgo+IDIuIHRlYXJkb3duIHRoZSBhZG1pbiBxdWV1ZQo+IDMuIHJlLWVzdGFibGlz
aCB0aGUgYWRtaW4gcXVldWUKPiA0LiBlbmFibGUgdGhlIGNvbnRyb2xsZXIKPgo+IEluIG9yZGVy
IHRvIHBlcmZvcm0gKDMpLCB3ZSBuZWVkIHRvIHVucXVpZXNjZSB0aGUgYWRtaW4gcXVldWUsIGhv
d2V2ZXIKPiB3ZSBtYXkgaGF2ZSBzb21lIGFkbWluIGNvbW1hbmRzIHRoYXQgYXJlIGFscmVhZHkg
cGVuZGluZyBvbiB0aGUKPiBxdWllc2NlZCBhZG1pbl9xIGFuZCB3aWxsIGltbWVkaWF0ZSBleGVj
dXRlIHdoZW4gd2UgdW5xdWllc2NlIGl0IGJlZm9yZQo+IHdlIGV4ZWN1dGUgKDQpLiBUaGUgaG9z
dCBtdXN0IG5vdCBzZW5kIGFkbWluIGNvbW1hbmRzIHRvIHRoZSBjb250cm9sbGVyCj4gYmVmb3Jl
IGVuYWJsaW5nIHRoZSBjb250cm9sbGVyLgo+Cj4gVG8gZml4IHRoaXMsIHdlIGhhdmUgdGhlIGZh
YnJpYyBjb21tYW5kcyAoYWRtaW4gY29ubmVjdCBhbmQgcHJvcGVydHkKPiBnZXQvc2V0KSB1c2Ug
YSBzZXBhcmF0ZSBmYWJyaWNzX3EgYW5kIG1ha2Ugc3VyZSB0byBxdWllc2NlIHRoZSBhZG1pbl9x
Cj4gYmVmb3JlIHdlIGRpc2FibGUgdGhlIGNvbnRyb2xsZXIsIGFuZCB1bnF1aWVzY2UgaXQgb25s
eSBhZnRlciB3ZSBlbmFibGUKPiB0aGUgY29udHJvbGxlci4gVGhlIGZhYnJpY3NfcSBsaWZldGlt
ZSBpcyBleGFjdGx5IGxpa2UgdGhlIGFkbWluX3EgbGlmZXRpbWUKPiBidXQgaXQgaXMgcXVpZXNj
ZWQgYWZ0ZXIgd2UgZGlzYWJsZS9zaHV0ZG93biB0aGUgY29udHJvbGxlciBhbmQgdW5xdWllc2Nl
ZAo+IGJlZm9yZSB0aGUgYWRtaW4gY29ubmVjdC4KPgo+IFRoaXMgZml4ZXMgdGhlIGVycm9yIHBy
aW50cyBmcm9tIG52bWV0IGluIGEgY29udHJvbGxlciByZXNldCBzdG9ybSB0ZXN0Ogo+IGtlcm5l
bDogbnZtZXQ6IGdvdCBjbWQgNiB3aGlsZSBDQy5FTiA9PSAwIG9uIHFpZCA9IDAKPiBXaGljaCBp
bmRpY2F0ZSB0aGF0IHRoZSBob3N0IGlzIHNlbmRpbmcgYW4gYWRtaW4gY29tbWFuZCB3aGVuIHRo
ZQo+IGNvbnRyb2xsZXIgaXMgbm90IGVuYWJsZWQuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTYWdpIEdy
aW1iZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IC0tLQo+IENoYW5nZXMgZnJvbSB2MjoKPiAtIHNl
bnQgdGhlIGNvcnJlY3QgcGF0Y2ggdGhpcyB0aW1lIDopCj4KPiBDaGFuZ2VzIGZyb20gdjE6Cj4g
LSBxdWllc2NlZC91bnF1aWVzY2VkIHRoZSBmYWJyaWNzX3Egd2hlbiB3ZSB0ZWFyZG93biB0aGUg
Y29udHJvbGxlcgo+ICAgIGJ1dCBkbyBpdCB3aGVyZSB0aGUgYWRtaW5fcSBxdWllc2NlL3VucXVp
ZXNjZSB1c2VkIHRvIGJlLgo+Cj4gICBkcml2ZXJzL252bWUvaG9zdC9mYWJyaWNzLmMgfCAgOCAr
KysrLS0tLQo+ICAgZHJpdmVycy9udm1lL2hvc3QvZmMuYyAgICAgIHwgMTggKysrKysrKysrKysr
KysrKy0tCj4gICBkcml2ZXJzL252bWUvaG9zdC9udm1lLmggICAgfCAgMSArCj4gICBkcml2ZXJz
L252bWUvaG9zdC9yZG1hLmMgICAgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKy0tCj4gICBk
cml2ZXJzL252bWUvaG9zdC90Y3AuYyAgICAgfCAyNSArKysrKysrKysrKysrKysrKysrKysrKy0t
Cj4gICBkcml2ZXJzL252bWUvdGFyZ2V0L2xvb3AuYyAgfCAyNCArKysrKysrKysrKysrKysrKyst
LS0tLS0KPiAgIDYgZmlsZXMgY2hhbmdlZCwgODUgaW5zZXJ0aW9ucygrKSwgMTYgZGVsZXRpb25z
KC0pCgpUaGlzIGxvb2tzIGdvb2QgdG8gbWUuCgpSZXZpZXdlZC1ieTrCoCBKYW1lcyBTbWFydCA8
amFtZXMuc21hcnRAYnJvYWRjb20uY29tPgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtbnZtZQo=
