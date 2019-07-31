Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F1EC7C0A6
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 14:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MbvnAxaE7oQcNPSQrz7K6pn+Un5u3fi6dnx6noXxiC4=; b=KLPTey5eTE7zZo
	g4ksMaBFg6wg25LfbJyYqTk8Z3YZ//isQPSBrTww82vhsByIVylS/k/FkgxuQq4a1srchTbl2StVM
	iV5nrDU7scStdczws5S2oTQ1wmlABO0/NzQVoI3beZ0M63tHF4nhEh3sX0mZOuGBxubI6fgXb68Op
	bMKTqP1jRzZjdyF7sTxDR8m51U2RHrsoQnj9jUxsKQgeljGjrBtZkcllhXw9UarViFNcdBexZy5he
	oiMp4wS+igzStmSt4gev2BffCaQusLmgavulsMQYDPqF9nbpOYpxRu1MR80PDRF96H0fKYlATOOqw
	620oVkC+dW8jvPLVVlyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsnKk-0008SY-Bc; Wed, 31 Jul 2019 12:03:54 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsnKd-0008S4-Ko
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 12:03:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 3028FAF30;
 Wed, 31 Jul 2019 12:03:46 +0000 (UTC)
Subject: Re: [PATCH] nvme-rdma: fix possible use-after-free in connect error
 flow
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190726172949.1635-1-sagi@grimberg.me>
From: Hannes Reinecke <hare@suse.de>
Openpgp: preference=signencrypt
Autocrypt: addr=hare@suse.de; prefer-encrypt=mutual; keydata=
 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
 azzYF4VRJsdl+d0MCaSy8mUh
Message-ID: <8b7a4d91-1524-4f33-d165-0529f0e9c7f3@suse.de>
Date: Wed, 31 Jul 2019 14:03:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190726172949.1635-1-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_050347_974857_D3ADC3E8 
X-CRM114-Status: GOOD (  17.30  )
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
 NMoreyChaisemartin@suse.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNy8yNi8xOSA3OjI5IFBNLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+IFdoZW4gc3RhcnRfcXVl
dWUgZmFpbHMsIHdlIG5lZWQgdG8gbWFrZSBzdXJlIHRvIGRyYWluIHRoZQo+IHF1ZXVlIGNxIGJl
Zm9yZSBmcmVlaW5nIHRoZSByZG1hIHJlc291cmNlcyBiZWNhdXNlIHdlIG1pZ2h0Cj4gc3RpbGwg
cmFjZSB3aXRoIHRoZSBjb21wbGV0aW9uIHBhdGguIEhhdmUgc3RhcnRfcXVldWUoKSBlcnJvcgo+
IHBhdGggc2FmZWx5IHN0b3AgdGhlIHF1ZXVlLgo+IAo+IC0tCj4gWzMwMzcxLjgwODExMV0gbnZt
ZSBudm1lMTogRmFpbGVkIHJlY29ubmVjdCBhdHRlbXB0IDExCj4gWzMwMzcxLjgwODExM10gbnZt
ZSBudm1lMTogUmVjb25uZWN0aW5nIGluIDEwIHNlY29uZHMuLi4KPiBbLi4uXQo+IFszMDM4Mi4w
NjkzMTVdIG52bWUgbnZtZTE6IGNyZWF0aW5nIDQgSS9PIHF1ZXVlcy4KPiBbMzAzODIuMjU3MDU4
XSBudm1lIG52bWUxOiBDb25uZWN0IEludmFsaWQgU1FFIFBhcmFtZXRlciwgcWlkIDQKPiBbMzAz
ODIuMjU3MDYxXSBudm1lIG52bWUxOiBmYWlsZWQgdG8gY29ubmVjdCBxdWV1ZTogNCByZXQ9Mzg2
Cj4gWzMwMzgyLjMwNTAwMV0gQlVHOiB1bmFibGUgdG8gaGFuZGxlIGtlcm5lbCBOVUxMIHBvaW50
ZXIgZGVyZWZlcmVuY2UgYXQgMDAwMDAwMDAwMDAwMDAxOAo+IFszMDM4Mi4zMDUwMjJdIElQOiBx
ZWRyX3BvbGxfY3ErMHg4YTMvMHgxMTcwIFtxZWRyXQo+IFszMDM4Mi4zMDUwMjhdIFBHRCAwIFA0
RCAwCj4gWzMwMzgyLjMwNTAzN10gT29wczogMDAwMCBbIzFdIFNNUCBQVEkKPiBbLi4uXQo+IFsz
MDM4Mi4zMDUxNTNdIENhbGwgVHJhY2U6Cj4gWzMwMzgyLjMwNTE2Nl0gID8gX19zd2l0Y2hfdG9f
YXNtKzB4MzQvMHg3MAo+IFszMDM4Mi4zMDUxODddICBfX2liX3Byb2Nlc3NfY3ErMHg1Ni8weGQw
IFtpYl9jb3JlXQo+IFszMDM4Mi4zMDUyMDFdICBpYl9wb2xsX2hhbmRsZXIrMHgyNi8weDcwIFtp
Yl9jb3JlXQo+IFszMDM4Mi4zMDUyMTNdICBpcnFfcG9sbF9zb2Z0aXJxKzB4ODgvMHgxMTAKPiBb
MzAzODIuMzA1MjIzXSAgPyBzb3J0X3JhbmdlKzB4MjAvMHgyMAo+IFszMDM4Mi4zMDUyMzJdICBf
X2RvX3NvZnRpcnErMHhkZS8weDJjNgo+IFszMDM4Mi4zMDUyNDFdICA/IHNvcnRfcmFuZ2UrMHgy
MC8weDIwCj4gWzMwMzgyLjMwNTI0OV0gIHJ1bl9rc29mdGlycWQrMHgxYy8weDYwCj4gWzMwMzgy
LjMwNTI1OF0gIHNtcGJvb3RfdGhyZWFkX2ZuKzB4ZWYvMHgxNjAKPiBbMzAzODIuMzA1MjY1XSAg
a3RocmVhZCsweDExMy8weDEzMAo+IFszMDM4Mi4zMDUyNzNdICA/IGt0aHJlYWRfY3JlYXRlX3dv
cmtlcl9vbl9jcHUrMHg1MC8weDUwCj4gWzMwMzgyLjMwNTI4MV0gIHJldF9mcm9tX2ZvcmsrMHgz
NS8weDQwCj4gLS0KPiAKPiBSZXBvcnRlZC1ieTogTmljb2xhcyBNb3JleS1DaGFpc2VtYXJ0aW4g
PE5Nb3JleUNoYWlzZW1hcnRpbkBzdXNlLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTYWdpIEdyaW1i
ZXJnIDxzYWdpQGdyaW1iZXJnLm1lPgo+IC0tLQo+ICBkcml2ZXJzL252bWUvaG9zdC9yZG1hLmMg
fCAxNiArKysrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCsp
LCA1IGRlbGV0aW9ucygtKQo+IApSZXZpZXdlZC1ieTogSGFubmVzIFJlaW5lY2tlIDxoYXJlQHN1
c2UuY29tPgoKQ2hlZXJzLAoKSGFubmVzCi0tIApEci4gSGFubmVzIFJlaW5lY2tlCQkgICBUZWFt
bGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1c2UuZGUJCQkgICAgICAgICAgICAgICAr
NDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgsIE1heGZlbGRzdHIuIDUsIDkwNDA5IE7D
vHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBNYXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgK
SFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
