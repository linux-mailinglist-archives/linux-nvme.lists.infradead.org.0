Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A208D67B24
	for <lists+linux-nvme@lfdr.de>; Sat, 13 Jul 2019 18:01:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jiWf23I7/DKLzlLuF5pKq468tzZZ7p504+q4U8MVXEg=; b=TUj5dAK9gtOlBm
	OBK6yK1lMNVX/c8TDUNjbvizYWq7KaMSdm7baQmazYNwhNzF5E5i2JHepk41cC/+exmyPcQqzRUW4
	nSKzAKOztkhvtIvZbDKBa6Kkkl6bS3GyJEggFN3uLcpU6JdrgjkMj5MA249dLXs3G8zmQxHtHXxHT
	5aBXLDstrNylV3WWPLF48GH4JaaWgCGF9bnlM2xwTrUvBsuT1830sH3ioVYhmFeDQ8ktIL+ODrz9Z
	e7LxPYiVt3fddWpRNa27b3BT7PEVogrgjaeITl226R+etl50xQYm+SjZfI03ya9LG/8f7oCltqrrQ
	qTziya/Tvrc1xmKyAt+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmKSL-00012O-9F; Sat, 13 Jul 2019 16:01:02 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmKS6-00011d-6P
 for linux-nvme@lists.infradead.org; Sat, 13 Jul 2019 16:00:48 +0000
Received: by mail-oi1-x242.google.com with SMTP id w79so9569999oif.10
 for <linux-nvme@lists.infradead.org>; Sat, 13 Jul 2019 09:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=xm/HPpHVEH6XRYIcBZPCxAy7V5Bh6Zbt+6torrb9C1U=;
 b=PXOEzaJQN4oI0dgW7sxq3GdoZ5OvVe4Iv1gbmyd3hre+O6lWXAT6TIKock5RqRphKS
 f0RsSlPAGS0pO/GvWIQ/8OL+Bl7D6rgNdDfKnbTAMh5f0bdRoUmd3Nvq0yvd+1QQmGU7
 GRPjK+qMore0drUaCJBouN6n6RdHXWH03Fb2U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=xm/HPpHVEH6XRYIcBZPCxAy7V5Bh6Zbt+6torrb9C1U=;
 b=kF9ErU35r0YCx1ZsdTCfUBim+7IYxAPvwjiotV9Z2zfvaFRO11lml9xZzxA0lm0oTe
 IABf0GLdc/1pyDTtCiljkPBW1AabSZ6J/9nqJdNi1pRQptFQcwnEWpcsVRD/pLAGoZyB
 5ea3yJH6ffRjDjNrc3JDV6U53CP3ZtKaXbeDndfOFeu8BAQwIqbp+ysPfUyqC7Ga7pLg
 pvf32ZtDyJZ/ZLrlvNCqtnCD6MzCKltErTYV40lU7UeYet1UWMF71qR5oJCpn3gIDR3y
 p13d9nQNgYLtbmE3KkxARzkrejGq2e4y/OnEEcfLNen9109oE96GB3fkm5Eums5nbLV4
 idJw==
X-Gm-Message-State: APjAAAVPseW5JLCicEqjq3BTraVcNcEy4Qsn6W6pzgNXVDl7N9mJvyjA
 75e58AxlNsQaYHc9FpOXJUsiNRwRDMZsHyYzY7NbcA==
X-Google-Smtp-Source: APXvYqySlezV5bXMHSq+vqFQnsyRMAysjMJg1YtCg1OgCL+SifsMtQ3UsZx9zMr4KqoBak2iYUZow6CbMaNhJRfINsY=
X-Received: by 2002:aca:ed04:: with SMTP id l4mr9181275oih.26.1563033644266;
 Sat, 13 Jul 2019 09:00:44 -0700 (PDT)
MIME-Version: 1.0
References: <1310083272.27124086.1562836112586.JavaMail.zimbra@redhat.com>
 <619411460.27128070.1562838433020.JavaMail.zimbra@redhat.com>
 <AM0PR05MB48664657022ECA8526E3C967D1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866070FBADCCABD1F84E42ED1F30@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <66d43fd8-18e8-8b9d-90e3-ee2804d56889@redhat.com>
 <AM0PR05MB4866DEDB9DE4379F6A6EF15BD1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <CA+sbYW17PGAW57pyRmQB9KsDA9Q+7FFgSseSTTWE_h6vffa7UQ@mail.gmail.com>
 <AM0PR05MB4866CFEDCDF3CDA1D7D18AA5D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866CCD487C9D99BD9526BA8D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <AM0PR05MB4866665D5CACB34AE885BCA2D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <ef6a01a1-9163-ef4e-29ac-4f4130c682f1@redhat.com>
 <AM0PR05MB48666463325E1D0E25D63F57D1F20@AM0PR05MB4866.eurprd05.prod.outlook.com>
 <CA+sbYW0KPjJaQcoxFLny30tdMij7ycbxADCHKkVpL2LcQW-dTw@mail.gmail.com>
 <5496cdb1-3c07-2d44-cb1f-2d084e5a7919@redhat.com>
In-Reply-To: <5496cdb1-3c07-2d44-cb1f-2d084e5a7919@redhat.com>
From: Selvin Xavier <selvin.xavier@broadcom.com>
Date: Sat, 13 Jul 2019 21:30:32 +0530
Message-ID: <CA+sbYW0v4c0GUosHoMJv4-mpT3iVhazgaTKFDktPLbwMr5o9Bw@mail.gmail.com>
Subject: Re: regression: nvme rdma with bnxt_re0 broken
To: Yi Zhang <yi.zhang@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_090046_254908_3A863399 
X-CRM114-Status: GOOD (  35.11  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Daniel Jurgens <danielj@mellanox.com>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 Devesh Sharma <devesh.sharma@broadcom.com>, Parav Pandit <parav@mellanox.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gU2F0LCBKdWwgMTMsIDIwMTkgYXQgMToyNiBQTSBZaSBaaGFuZyA8eWkuemhhbmdAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4KPiBIaSBTYWx2aW4KPgo+IENvbmZpcm1lZCB0aGUgcGF0Y2ggZml4ZWQg
dGhlIGxvZ2luIGlzc3VlLgo+ClRoYW5rcyBZaSBmb3IgdGhlIGNvbmZpcm1hdGlvbi4gSSB3aWxs
IHBvc3QgdGhpcyBwYXRjaC4KCj4gQW5kIGZyb20gdGhlIGRtZXNnIEkgZm91bmQgdGhlcmUgaXMg
b25seSBvbmUgSS9PIHF1ZXVlIGNyZWF0ZWQsIGlzIHRoYXQKPiByZWFzb25hYmxlPyB0aGVyZSBh
cmUgbW9yZSBxdWV1ZXMgY3JlYXRlZCBkdXJpbmcgbXkgdGVzdGluZyBmb3IgSUIvaVdBUlAuCm51
bV9jb21wX3ZlY3RvcnMgZXhwb3J0ZWQgYnkgYm54dF9yZSBpcyAxIGFuZCB0aGlzIGlzIGV4cGVj
dGVkIGR1ZSB0byB0aGF0LgpUaGlzIGNhbiBiZSBpbmNyZWFzZWQuIEkgd2lsbCBwb3N0IGEgcGF0
Y2ggYWZ0ZXIgZG9pbmcgc29tZSB0ZXN0aW5nCmZvciB0aGUgc2FtZS4KCj4KPiAjIG52bWUgY29u
bmVjdC1hbGwgLXQgcmRtYSAtYSAxNzIuMzEuNDAuMTI1IC1zIDQ0MjAKPgo+ICMgbHNibGsKPiBO
QU1FICAgIE1BSjpNSU4gUk0gICBTSVpFIFJPIFRZUEUgTU9VTlRQT0lOVAo+IHNkYSAgICAgICA4
OjAgICAgMCA5MzEuNUcgIDAgZGlzawo+IOKUnOKUgHNkYTEgICAgODoxICAgIDAgICAgIDFHICAw
IHBhcnQgL2Jvb3QKPiDilJzilIBzZGEyICAgIDg6MiAgICAwICAgIDI1RyAgMCBwYXJ0IC9tbnQv
cmRtYS1leHQ0Cj4g4pSc4pSAc2RhMyAgICA4OjMgICAgMCAgICAyNUcgIDAgcGFydCAvbW50L3Jk
bWEteGZzCj4g4pSc4pSAc2RhNCAgICA4OjQgICAgMCAgICAgMUsgIDAgcGFydAo+IOKUnOKUgHNk
YTUgICAgODo1ICAgIDAgIDE1LjdHICAwIHBhcnQgW1NXQVBdCj4g4pSU4pSAc2RhNiAgICA4OjYg
ICAgMCA4NjQuOUcgIDAgcGFydCAvCj4gbnZtZTBuMSAyNTk6NDA1ICAwICAgMjUwRyAgMCBkaXNr
Cj4KPiAjIGRtZXNnCj4gWyA0MzExLjYzNTQzMF0gbnZtZSBudm1lMDogbmV3IGN0cmw6IE5RTgo+
ICJucW4uMjAxNC0wOC5vcmcubnZtZXhwcmVzcy5kaXNjb3ZlcnkiLCBhZGRyIDE3Mi4zMS40MC4x
MjU6NDQyMAo+IFsgNDMxMS42NDY2ODddIG52bWUgbnZtZTA6IFJlbW92aW5nIGN0cmw6IE5RTgo+
ICJucW4uMjAxNC0wOC5vcmcubnZtZXhwcmVzcy5kaXNjb3ZlcnkiCj4gWyA0MzExLjcwNjA1Ml0g
bnZtZSBudm1lMDogY3JlYXRpbmcgMSBJL08gcXVldWVzLgo+IFsgNDMxMS43MTc4NDhdIG52bWUg
bnZtZTA6IG1hcHBlZCAxLzAvMCBkZWZhdWx0L3JlYWQvcG9sbCBxdWV1ZXMuCj4gWyA0MzExLjcy
NzM4NF0gbnZtZSBudm1lMDogbmV3IGN0cmw6IE5RTiAidGVzdG5xbiIsIGFkZHIgMTcyLjMxLjQw
LjEyNTo0NDIwCj4KPiAjIGxzY3B1Cj4gQXJjaGl0ZWN0dXJlOiAgICAgICAgeDg2XzY0Cj4gQ1BV
IG9wLW1vZGUocyk6ICAgICAgMzItYml0LCA2NC1iaXQKPiBCeXRlIE9yZGVyOiAgICAgICAgICBM
aXR0bGUgRW5kaWFuCj4gQ1BVKHMpOiAgICAgICAgICAgICAgMTYKPiBPbi1saW5lIENQVShzKSBs
aXN0OiAwLTE1Cj4gVGhyZWFkKHMpIHBlciBjb3JlOiAgMgo+IENvcmUocykgcGVyIHNvY2tldDog
IDQKPiBTb2NrZXQocyk6ICAgICAgICAgICAyCj4gTlVNQSBub2RlKHMpOiAgICAgICAgMgo+IFZl
bmRvciBJRDogICAgICAgICAgIEdlbnVpbmVJbnRlbAo+IENQVSBmYW1pbHk6ICAgICAgICAgIDYK
PiBNb2RlbDogICAgICAgICAgICAgICA2Mwo+IE1vZGVsIG5hbWU6ICAgICAgICAgIEludGVsKFIp
IFhlb24oUikgQ1BVIEU1LTI2MjMgdjMgQCAzLjAwR0h6Cj4gU3RlcHBpbmc6ICAgICAgICAgICAg
Mgo+IENQVSBNSHo6ICAgICAgICAgICAgIDMyODMuMzA2Cj4gQ1BVIG1heCBNSHo6ICAgICAgICAg
MzUwMC4wMDAwCj4gQ1BVIG1pbiBNSHo6ICAgICAgICAgMTIwMC4wMDAwCj4gQm9nb01JUFM6ICAg
ICAgICAgICAgNTk5My43Mgo+IFZpcnR1YWxpemF0aW9uOiAgICAgIFZULXgKPiBMMWQgY2FjaGU6
ICAgICAgICAgICAzMksKPiBMMWkgY2FjaGU6ICAgICAgICAgICAzMksKPiBMMiBjYWNoZTogICAg
ICAgICAgICAyNTZLCj4gTDMgY2FjaGU6ICAgICAgICAgICAgMTAyNDBLCj4gTlVNQSBub2RlMCBD
UFUocyk6ICAgMCwyLDQsNiw4LDEwLDEyLDE0Cj4gTlVNQSBub2RlMSBDUFUocyk6ICAgMSwzLDUs
Nyw5LDExLDEzLDE1Cj4gRmxhZ3M6ICAgICAgICAgICAgICAgZnB1IHZtZSBkZSBwc2UgdHNjIG1z
ciBwYWUgbWNlIGN4OCBhcGljIHNlcCBtdHJyCj4gcGdlIG1jYSBjbW92IHBhdCBwc2UzNiBjbGZs
dXNoIGR0cyBhY3BpIG1teCBmeHNyIHNzZSBzc2UyIHNzIGh0IHRtIHBiZQo+IHN5c2NhbGwgbngg
cGRwZTFnYiByZHRzY3AgbG0gY29uc3RhbnRfdHNjIGFyY2hfcGVyZm1vbiBwZWJzIGJ0cyByZXBf
Z29vZAo+IG5vcGwgeHRvcG9sb2d5IG5vbnN0b3BfdHNjIGNwdWlkIGFwZXJmbXBlcmYgcG5pIHBj
bG11bHFkcSBkdGVzNjQgbW9uaXRvcgo+IGRzX2NwbCB2bXggc214IGVzdCB0bTIgc3NzZTMgc2Ri
ZyBmbWEgY3gxNiB4dHByIHBkY20gcGNpZCBkY2Egc3NlNF8xCj4gc3NlNF8yIHgyYXBpYyBtb3Zi
ZSBwb3BjbnQgdHNjX2RlYWRsaW5lX3RpbWVyIGFlcyB4c2F2ZSBhdnggZjE2YyByZHJhbmQKPiBs
YWhmX2xtIGFibSBjcHVpZF9mYXVsdCBlcGIgaW52cGNpZF9zaW5nbGUgcHRpIHNzYmQgaWJycyBp
YnBiIHN0aWJwCj4gdHByX3NoYWRvdyB2bm1pIGZsZXhwcmlvcml0eSBlcHQgdnBpZCBlcHRfYWQg
ZnNnc2Jhc2UgdHNjX2FkanVzdCBibWkxCj4gYXZ4MiBzbWVwIGJtaTIgZXJtcyBpbnZwY2lkIGNx
bSB4c2F2ZW9wdCBjcW1fbGxjIGNxbV9vY2N1cF9sbGMgZHRoZXJtCj4gaWRhIGFyYXQgcGxuIHB0
cyBmbHVzaF9sMWQKPgo+IE9uIDcvMTMvMTkgMTI6MTggQU0sIFNlbHZpbiBYYXZpZXIgd3JvdGU6
Cj4gPiBPbiBGcmksIEp1bCAxMiwgMjAxOSBhdCA2OjIyIFBNIFBhcmF2IFBhbmRpdCA8cGFyYXZA
bWVsbGFub3guY29tPiB3cm90ZToKPiA+Pgo+ID4+Cj4gPj4+IC0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tCj4gPj4+IEZyb206IFlpIFpoYW5nIDx5aS56aGFuZ0ByZWRoYXQuY29tPgo+ID4+PiBT
ZW50OiBGcmlkYXksIEp1bHkgMTIsIDIwMTkgNToxMSBQTQo+ID4+PiBUbzogUGFyYXYgUGFuZGl0
IDxwYXJhdkBtZWxsYW5veC5jb20+OyBTZWx2aW4gWGF2aWVyCj4gPj4+IDxzZWx2aW4ueGF2aWVy
QGJyb2FkY29tLmNvbT4KPiA+Pj4gQ2M6IERhbmllbCBKdXJnZW5zIDxkYW5pZWxqQG1lbGxhbm94
LmNvbT47IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnOwo+ID4+PiBEZXZlc2ggU2hhcm1hIDxk
ZXZlc2guc2hhcm1hQGJyb2FkY29tLmNvbT47IGxpbnV4LQo+ID4+PiBudm1lQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiA+Pj4gU3ViamVjdDogUmU6IHJlZ3Jlc3Npb246IG52bWUgcmRtYSB3aXRoIGJu
eHRfcmUwIGJyb2tlbgo+ID4+Pgo+ID4+PiBIaSBQYXJhdgo+ID4+PiBUaGUgbnZtZSBjb25uZWN0
IHN0aWxsIGZhaWxlZFsxXSwgSSd2ZSBwYXN0ZSBhbGwgdGhlIGRtZXNnIGxvZyB0b1syXSwgcGxz
IGNoZWNrIGl0Lgo+ID4+Pgo+ID4+Pgo+ID4+PiBbMV0KPiA+Pj4gW3Jvb3RAcmRtYS1wZXJmLTA3
IH5dJCBudm1lIGNvbm5lY3QgLXQgcmRtYSAtYSAxNzIuMzEuNDAuMTI1IC1zIDQ0MjAgLW4KPiA+
Pj4gdGVzdG5xbgo+ID4+PiBGYWlsZWQgdG8gd3JpdGUgdG8gL2Rldi9udm1lLWZhYnJpY3M6IENv
bm5lY3Rpb24gcmVzZXQgYnkgcGVlcgo+ID4+PiBbMl0KPiA+Pj4gaHR0cHM6Ly9wYXN0ZWJpbi5j
b20vaXB2YWswU3AKPiA+Pj4KPiA+PiBJIHRoaW5rIHZsYW5faWQgaXMgbm90IGluaXRpYWxpemVk
IHRvIDB4ZmZmZiBkdWUgdG8gd2hpY2ggaXB2NCBlbnRyeSBhZGRpdGlvbiBhbHNvIGZhaWxlZCB3
aXRoIG15IHBhdGNoLgo+ID4+IFRoaXMgaXMgcHJvYmFibHkgc29sdmVzIGl0LiBOb3Qgc3VyZS4g
SSBhbSBub3QgbXVjaCBmYW1pbGlhciB3aXRoIGl0Lgo+ID4+Cj4gPj4gU2VsdmluLAo+ID4+IENh
biB5b3UgcGxlYXNlIHRha2UgYSBsb29rPwo+ID4+Cj4gPiBQYXJhdiwKPiA+ICAgVGhhbmtzIGZv
ciB0aGUgcGF0Y2guIEkgcmVtb3ZlZCB0aGUgY2hhbmdlIHlvdSBtYWRlIGluIHN0cnVjdCBibnh0
X3FwbGliX2dpZAo+ID4gYW5kIGFkZGVkIGEgbmV3IHN0cnVjdHVyZSBzdHJ1Y3QgYm54dF9xcGxp
Yl9naWRfaW5mbyB0byBpbmNsdWRlIGJvdGgKPiA+IGdpZCBhbmQgdmxhbl9pZC4KPiA+IHN0cnVj
dCBibnh0X3FwbGliX2dpZCBpcyB1c2VkIGluIG11bHRpcGxlIHBsYWNlcyB0byBtZW1jcHkgb3Ig
Y29tcGFyZQo+ID4gdGhlIDE2IGJ5dGVzLgo+ID4gQWxzbywgYWRkZWQgdmxhbiBjaGVja2luZyBp
biB0aGUgZGVzdHJveSBwYXRoIGFsc28uIFNvbWUgbW9yZSBjbGVhbnVwCj4gPiBwb3NzaWJsZSBp
bgo+ID4gZGVsZXRlX2dpZCBwYXRoLiBUaGF0IGNhbiBiZSBkb25lIG9uY2UgdGhlIGJhc2ljIGlz
c3VlIGlzIGZpeGVkLgo+ID4KPiA+IFlpLCBDYW4geW91IHBsZWFzZSB0ZXN0IHRoaXMgcGF0Y2gg
YW5kIHNlZSBpZiBpdCBpcyBzb2x2aW5nIHRoZSBpc3N1ZT8KPiA+Cj4gPiBUaGFua3MsCj4gPiBT
ZWx2aW4KPiA+Cj4gPiAgRnJvbSAzZDgzNjEzY2ZjNTk5M2JmOWRhZTUyOWFiMGQ0ZDI1ZGRlZmZm
MjliIE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQo+ID4gRnJvbTogUGFyYXYgUGFuZGl0IDxwYXJh
dkBtZWxsYW5veC5jb20+Cj4gPiBEYXRlOiBGcmksIDEyIEp1bCAyMDE5IDEwOjMyOjUxIC0wNDAw
Cj4gPiBTdWJqZWN0OiBbUEFUQ0hdIElCL2JueHRfcmU6IEhvbm9yIHZsYW5faWQgaW4gR0lEIGVu
dHJ5IGNvbXBhcmlzb24KPiA+Cj4gPiBHSUQgZW50cnkgY29uc2lzdCBvZiBHSUQsIHZsYW4sIG5l
dGRldiBhbmQgc21hYy4KPiA+IEV4dGVuZCBHSUQgZHVwbGljYXRlIGNoZWNrIGNvbXBhbmlvbnMg
dG8gY29uc2lkZXIgdmxhbl9pZCBhcyB3ZWxsCj4gPiB0byBzdXBwb3J0IElQdjYgVkxBTiBiYXNl
ZCBsaW5rIGxvY2FsIGFkZHJlc3Nlcy4KPiA+Cj4gPiBGaXhlczogODIzYjIzZGE3MTEzICgiSUIv
Y29yZTogQWxsb3cgdmxhbiBsaW5rIGxvY2FsIGFkZHJlc3MgYmFzZWQgUm9DRSBHSURzIikKPiA+
IFNpZ25lZC1vZmYtYnk6IFBhcmF2IFBhbmRpdCA8cGFyYXZAbWVsbGFub3guY29tPgo+ID4gU2ln
bmVkLW9mZi1ieTogU2VsdmluIFhhdmllciA8c2VsdmluLnhhdmllckBicm9hZGNvbS5jb20+Cj4g
PiAtLS0KPiA+ICAgZHJpdmVycy9pbmZpbmliYW5kL2h3L2JueHRfcmUvaWJfdmVyYnMuYyAgfCAg
NyArKysrKy0tCj4gPiAgIGRyaXZlcnMvaW5maW5pYmFuZC9ody9ibnh0X3JlL3FwbGliX3Jlcy5j
IHwgMTcgKysrKysrKysrKysrKy0tLS0KPiA+ICAgZHJpdmVycy9pbmZpbmliYW5kL2h3L2JueHRf
cmUvcXBsaWJfcmVzLmggfCAgMiArLQo+ID4gICBkcml2ZXJzL2luZmluaWJhbmQvaHcvYm54dF9y
ZS9xcGxpYl9zcC5jICB8IDE0ICsrKysrKysrKy0tLS0tCj4gPiAgIGRyaXZlcnMvaW5maW5pYmFu
ZC9ody9ibnh0X3JlL3FwbGliX3NwLmggIHwgIDcgKysrKysrLQo+ID4gICA1IGZpbGVzIGNoYW5n
ZWQsIDM0IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2luZmluaWJhbmQvaHcvYm54dF9yZS9pYl92ZXJicy5jCj4gPiBiL2RyaXZlcnMv
aW5maW5pYmFuZC9ody9ibnh0X3JlL2liX3ZlcmJzLmMKPiA+IGluZGV4IGE5MTY1M2FhYmYzOC4u
MDk4YWI4ODM3MzNlIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L2JueHRf
cmUvaWJfdmVyYnMuYwo+ID4gKysrIGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L2JueHRfcmUvaWJf
dmVyYnMuYwo+ID4gQEAgLTMwOCw2ICszMDgsNyBAQCBpbnQgYm54dF9yZV9kZWxfZ2lkKGNvbnN0
IHN0cnVjdCBpYl9naWRfYXR0cgo+ID4gKmF0dHIsIHZvaWQgKipjb250ZXh0KQo+ID4gICAgc3Ry
dWN0IGJueHRfcmVfZGV2ICpyZGV2ID0gdG9fYm54dF9yZV9kZXYoYXR0ci0+ZGV2aWNlLCBpYmRl
dik7Cj4gPiAgICBzdHJ1Y3QgYm54dF9xcGxpYl9zZ2lkX3RibCAqc2dpZF90YmwgPSAmcmRldi0+
cXBsaWJfcmVzLnNnaWRfdGJsOwo+ID4gICAgc3RydWN0IGJueHRfcXBsaWJfZ2lkICpnaWRfdG9f
ZGVsOwo+ID4gKyB1MTYgdmxhbl9pZCA9IDB4RkZGRjsKPiA+Cj4gPiAgICAvKiBEZWxldGUgdGhl
IGVudHJ5IGZyb20gdGhlIGhhcmR3YXJlICovCj4gPiAgICBjdHggPSAqY29udGV4dDsKPiA+IEBA
IC0zMTcsNyArMzE4LDggQEAgaW50IGJueHRfcmVfZGVsX2dpZChjb25zdCBzdHJ1Y3QgaWJfZ2lk
X2F0dHIKPiA+ICphdHRyLCB2b2lkICoqY29udGV4dCkKPiA+ICAgIGlmIChzZ2lkX3RibCAmJiBz
Z2lkX3RibC0+YWN0aXZlKSB7Cj4gPiAgICBpZiAoY3R4LT5pZHggPj0gc2dpZF90YmwtPm1heCkK
PiA+ICAgIHJldHVybiAtRUlOVkFMOwo+ID4gLSBnaWRfdG9fZGVsID0gJnNnaWRfdGJsLT50Ymxb
Y3R4LT5pZHhdOwo+ID4gKyBnaWRfdG9fZGVsID0gJnNnaWRfdGJsLT50YmxbY3R4LT5pZHhdLmdp
ZDsKPiA+ICsgdmxhbl9pZCA9IHNnaWRfdGJsLT50YmxbY3R4LT5pZHhdLnZsYW5faWQ7Cj4gPiAg
ICAvKiBERUxfR0lEIGlzIGNhbGxlZCBpbiBXUSBjb250ZXh0KG5ldGRldmljZV9ldmVudF93b3Jr
X2hhbmRsZXIpCj4gPiAgICAqIG9yIHZpYSB0aGUgaWJfdW5yZWdpc3Rlcl9kZXZpY2UgcGF0aC4g
SW4gdGhlIGZvcm1lciBjYXNlIFFQMQo+ID4gICAgKiBtYXkgbm90IGJlIGRlc3Ryb3llZCB5ZXQs
IGluIHdoaWNoIGNhc2UganVzdCByZXR1cm4gYXMgRlcKPiA+IEBAIC0zMzUsNyArMzM3LDggQEAg
aW50IGJueHRfcmVfZGVsX2dpZChjb25zdCBzdHJ1Y3QgaWJfZ2lkX2F0dHIKPiA+ICphdHRyLCB2
b2lkICoqY29udGV4dCkKPiA+ICAgIH0KPiA+ICAgIGN0eC0+cmVmY250LS07Cj4gPiAgICBpZiAo
IWN0eC0+cmVmY250KSB7Cj4gPiAtIHJjID0gYm54dF9xcGxpYl9kZWxfc2dpZChzZ2lkX3RibCwg
Z2lkX3RvX2RlbCwgdHJ1ZSk7Cj4gPiArIHJjID0gYm54dF9xcGxpYl9kZWxfc2dpZChzZ2lkX3Ri
bCwgZ2lkX3RvX2RlbCwKPiA+ICsgdmxhbl9pZCwgIHRydWUpOwo+ID4gICAgaWYgKHJjKSB7Cj4g
PiAgICBkZXZfZXJyKHJkZXZfdG9fZGV2KHJkZXYpLAo+ID4gICAgIkZhaWxlZCB0byByZW1vdmUg
R0lEOiAlI3giLCByYyk7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L2Ju
eHRfcmUvcXBsaWJfcmVzLmMKPiA+IGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L2JueHRfcmUvcXBs
aWJfcmVzLmMKPiA+IGluZGV4IDM3OTI4YjExMTFkZi4uN2YyNTcxZjdhMTNmIDEwMDY0NAo+ID4g
LS0tIGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L2JueHRfcmUvcXBsaWJfcmVzLmMKPiA+ICsrKyBi
L2RyaXZlcnMvaW5maW5pYmFuZC9ody9ibnh0X3JlL3FwbGliX3Jlcy5jCj4gPiBAQCAtNDg4LDcg
KzQ4OCwxMCBAQCBzdGF0aWMgaW50IGJueHRfcXBsaWJfYWxsb2Nfc2dpZF90Ymwoc3RydWN0Cj4g
PiBibnh0X3FwbGliX3JlcyAqcmVzLAo+ID4gICAgICAgICBzdHJ1Y3QgYm54dF9xcGxpYl9zZ2lk
X3RibCAqc2dpZF90YmwsCj4gPiAgICAgICAgIHUxNiBtYXgpCj4gPiAgIHsKPiA+IC0gc2dpZF90
YmwtPnRibCA9IGtjYWxsb2MobWF4LCBzaXplb2Yoc3RydWN0IGJueHRfcXBsaWJfZ2lkKSwgR0ZQ
X0tFUk5FTCk7Cj4gPiArIHUxNiBpOwo+ID4gKwo+ID4gKyBzZ2lkX3RibC0+dGJsID0ga2NhbGxv
YyhtYXgsIHNpemVvZihzdHJ1Y3QgYm54dF9xcGxpYl9naWRfaW5mbyksCj4gPiArIEdGUF9LRVJO
RUwpOwo+ID4gICAgaWYgKCFzZ2lkX3RibC0+dGJsKQo+ID4gICAgcmV0dXJuIC1FTk9NRU07Cj4g
Pgo+ID4gQEAgLTUwMCw2ICs1MDMsOSBAQCBzdGF0aWMgaW50IGJueHRfcXBsaWJfYWxsb2Nfc2dp
ZF90Ymwoc3RydWN0Cj4gPiBibnh0X3FwbGliX3JlcyAqcmVzLAo+ID4gICAgaWYgKCFzZ2lkX3Ri
bC0+Y3R4KQo+ID4gICAgZ290byBvdXRfZnJlZTI7Cj4gPgo+ID4gKyBmb3IgKGkgPSAwOyBpIDwg
bWF4OyBpKyspCj4gPiArIHNnaWRfdGJsLT50YmxbaV0udmxhbl9pZCA9IDB4ZmZmZjsKPiA+ICsK
PiA+ICAgIHNnaWRfdGJsLT52bGFuID0ga2NhbGxvYyhtYXgsIHNpemVvZih1OCksIEdGUF9LRVJO
RUwpOwo+ID4gICAgaWYgKCFzZ2lkX3RibC0+dmxhbikKPiA+ICAgIGdvdG8gb3V0X2ZyZWUzOwo+
ID4gQEAgLTUyNiw5ICs1MzIsMTEgQEAgc3RhdGljIHZvaWQgYm54dF9xcGxpYl9jbGVhbnVwX3Nn
aWRfdGJsKHN0cnVjdAo+ID4gYm54dF9xcGxpYl9yZXMgKnJlcywKPiA+ICAgIGZvciAoaSA9IDA7
IGkgPCBzZ2lkX3RibC0+bWF4OyBpKyspIHsKPiA+ICAgIGlmIChtZW1jbXAoJnNnaWRfdGJsLT50
YmxbaV0sICZibnh0X3FwbGliX2dpZF96ZXJvLAo+ID4gICAgICAgc2l6ZW9mKGJueHRfcXBsaWJf
Z2lkX3plcm8pKSkKPiA+IC0gYm54dF9xcGxpYl9kZWxfc2dpZChzZ2lkX3RibCwgJnNnaWRfdGJs
LT50YmxbaV0sIHRydWUpOwo+ID4gKyBibnh0X3FwbGliX2RlbF9zZ2lkKHNnaWRfdGJsLCAmc2dp
ZF90YmwtPnRibFtpXS5naWQsCj4gPiArICAgICBzZ2lkX3RibC0+dGJsW2ldLnZsYW5faWQsIHRy
dWUpOwo+ID4gICAgfQo+ID4gLSBtZW1zZXQoc2dpZF90YmwtPnRibCwgMCwgc2l6ZW9mKHN0cnVj
dCBibnh0X3FwbGliX2dpZCkgKiBzZ2lkX3RibC0+bWF4KTsKPiA+ICsgbWVtc2V0KHNnaWRfdGJs
LT50YmwsIDAsIHNpemVvZihzdHJ1Y3QgYm54dF9xcGxpYl9naWRfaW5mbykgKgo+ID4gKyBzZ2lk
X3RibC0+bWF4KTsKPiA+ICAgIG1lbXNldChzZ2lkX3RibC0+aHdfaWQsIC0xLCBzaXplb2YodTE2
KSAqIHNnaWRfdGJsLT5tYXgpOwo+ID4gICAgbWVtc2V0KHNnaWRfdGJsLT52bGFuLCAwLCBzaXpl
b2YodTgpICogc2dpZF90YmwtPm1heCk7Cj4gPiAgICBzZ2lkX3RibC0+YWN0aXZlID0gMDsKPiA+
IEBAIC01MzcsNyArNTQ1LDggQEAgc3RhdGljIHZvaWQgYm54dF9xcGxpYl9jbGVhbnVwX3NnaWRf
dGJsKHN0cnVjdAo+ID4gYm54dF9xcGxpYl9yZXMgKnJlcywKPiA+ICAgc3RhdGljIHZvaWQgYm54
dF9xcGxpYl9pbml0X3NnaWRfdGJsKHN0cnVjdCBibnh0X3FwbGliX3NnaWRfdGJsICpzZ2lkX3Ri
bCwKPiA+ICAgICAgICAgc3RydWN0IG5ldF9kZXZpY2UgKm5ldGRldikKPiA+ICAgewo+ID4gLSBt
ZW1zZXQoc2dpZF90YmwtPnRibCwgMCwgc2l6ZW9mKHN0cnVjdCBibnh0X3FwbGliX2dpZCkgKiBz
Z2lkX3RibC0+bWF4KTsKPiA+ICsgbWVtc2V0KHNnaWRfdGJsLT50YmwsIDAsIHNpemVvZihzdHJ1
Y3QgYm54dF9xcGxpYl9naWRfaW5mbykgKgo+ID4gKyBzZ2lkX3RibC0+bWF4KTsKPiA+ICAgIG1l
bXNldChzZ2lkX3RibC0+aHdfaWQsIC0xLCBzaXplb2YodTE2KSAqIHNnaWRfdGJsLT5tYXgpOwo+
ID4gICB9Cj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW5maW5pYmFuZC9ody9ibnh0X3Jl
L3FwbGliX3Jlcy5oCj4gPiBiL2RyaXZlcnMvaW5maW5pYmFuZC9ody9ibnh0X3JlL3FwbGliX3Jl
cy5oCj4gPiBpbmRleCAzMGM0MmM5MmZhYzcuLmZiZGExMWE3YWIxYSAxMDA2NDQKPiA+IC0tLSBh
L2RyaXZlcnMvaW5maW5pYmFuZC9ody9ibnh0X3JlL3FwbGliX3Jlcy5oCj4gPiArKysgYi9kcml2
ZXJzL2luZmluaWJhbmQvaHcvYm54dF9yZS9xcGxpYl9yZXMuaAo+ID4gQEAgLTExMSw3ICsxMTEs
NyBAQCBzdHJ1Y3QgYm54dF9xcGxpYl9wZF90Ymwgewo+ID4gICB9Owo+ID4KPiA+ICAgc3RydWN0
IGJueHRfcXBsaWJfc2dpZF90Ymwgewo+ID4gLSBzdHJ1Y3QgYm54dF9xcGxpYl9naWQgKnRibDsK
PiA+ICsgc3RydWN0IGJueHRfcXBsaWJfZ2lkX2luZm8gKnRibDsKPiA+ICAgIHUxNiAqaHdfaWQ7
Cj4gPiAgICB1MTYgbWF4Owo+ID4gICAgdTE2IGFjdGl2ZTsKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2luZmluaWJhbmQvaHcvYm54dF9yZS9xcGxpYl9zcC5jCj4gPiBiL2RyaXZlcnMvaW5maW5p
YmFuZC9ody9ibnh0X3JlL3FwbGliX3NwLmMKPiA+IGluZGV4IDQ4NzkzZDM1MTJhYy4uNDAyOTZi
OTdkMjFlIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9pbmZpbmliYW5kL2h3L2JueHRfcmUvcXBs
aWJfc3AuYwo+ID4gKysrIGIvZHJpdmVycy9pbmZpbmliYW5kL2h3L2JueHRfcmUvcXBsaWJfc3Au
Ywo+ID4gQEAgLTIxMywxMiArMjEzLDEyIEBAIGludCBibnh0X3FwbGliX2dldF9zZ2lkKHN0cnVj
dCBibnh0X3FwbGliX3JlcyAqcmVzLAo+ID4gICAgaW5kZXgsIHNnaWRfdGJsLT5tYXgpOwo+ID4g
ICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiAgICB9Cj4gPiAtIG1lbWNweShnaWQsICZzZ2lkX3RibC0+
dGJsW2luZGV4XSwgc2l6ZW9mKCpnaWQpKTsKPiA+ICsgbWVtY3B5KGdpZCwgJnNnaWRfdGJsLT50
YmxbaW5kZXhdLmdpZCwgc2l6ZW9mKCpnaWQpKTsKPiA+ICAgIHJldHVybiAwOwo+ID4gICB9Cj4g
Pgo+ID4gICBpbnQgYm54dF9xcGxpYl9kZWxfc2dpZChzdHJ1Y3QgYm54dF9xcGxpYl9zZ2lkX3Ri
bCAqc2dpZF90YmwsCj4gPiAtIHN0cnVjdCBibnh0X3FwbGliX2dpZCAqZ2lkLCBib29sIHVwZGF0
ZSkKPiA+ICsgc3RydWN0IGJueHRfcXBsaWJfZ2lkICpnaWQsIHUxNiB2bGFuX2lkLCBib29sIHVw
ZGF0ZSkKPiA+ICAgewo+ID4gICAgc3RydWN0IGJueHRfcXBsaWJfcmVzICpyZXMgPSB0b19ibnh0
X3FwbGliKHNnaWRfdGJsLAo+ID4gICAgICAgc3RydWN0IGJueHRfcXBsaWJfcmVzLAo+ID4gQEAg
LTIzNiw3ICsyMzYsOCBAQCBpbnQgYm54dF9xcGxpYl9kZWxfc2dpZChzdHJ1Y3QgYm54dF9xcGxp
Yl9zZ2lkX3RibAo+ID4gKnNnaWRfdGJsLAo+ID4gICAgcmV0dXJuIC1FTk9NRU07Cj4gPiAgICB9
Cj4gPiAgICBmb3IgKGluZGV4ID0gMDsgaW5kZXggPCBzZ2lkX3RibC0+bWF4OyBpbmRleCsrKSB7
Cj4gPiAtIGlmICghbWVtY21wKCZzZ2lkX3RibC0+dGJsW2luZGV4XSwgZ2lkLCBzaXplb2YoKmdp
ZCkpKQo+ID4gKyBpZiAoIW1lbWNtcCgmc2dpZF90YmwtPnRibFtpbmRleF0uZ2lkLCBnaWQsIHNp
emVvZigqZ2lkKSkgJiYKPiA+ICsgICAgIHZsYW5faWQgPT0gc2dpZF90YmwtPnRibFtpbmRleF0u
dmxhbl9pZCkKPiA+ICAgIGJyZWFrOwo+ID4gICAgfQo+ID4gICAgaWYgKGluZGV4ID09IHNnaWRf
dGJsLT5tYXgpIHsKPiA+IEBAIC0yNjIsOCArMjYzLDkgQEAgaW50IGJueHRfcXBsaWJfZGVsX3Nn
aWQoc3RydWN0IGJueHRfcXBsaWJfc2dpZF90YmwKPiA+ICpzZ2lkX3RibCwKPiA+ICAgIGlmIChy
YykKPiA+ICAgIHJldHVybiByYzsKPiA+ICAgIH0KPiA+IC0gbWVtY3B5KCZzZ2lkX3RibC0+dGJs
W2luZGV4XSwgJmJueHRfcXBsaWJfZ2lkX3plcm8sCj4gPiArIG1lbWNweSgmc2dpZF90YmwtPnRi
bFtpbmRleF0uZ2lkLCAmYm54dF9xcGxpYl9naWRfemVybywKPiA+ICAgICAgICAgICBzaXplb2Yo
Ym54dF9xcGxpYl9naWRfemVybykpOwo+ID4gKyBzZ2lkX3RibC0+dGJsW2luZGV4XS52bGFuX2lk
ID0gMHhGRkZGOwo+ID4gICAgc2dpZF90YmwtPnZsYW5baW5kZXhdID0gMDsKPiA+ICAgIHNnaWRf
dGJsLT5hY3RpdmUtLTsKPiA+ICAgIGRldl9kYmcoJnJlcy0+cGRldi0+ZGV2LAo+ID4gQEAgLTI5
Niw3ICsyOTgsOCBAQCBpbnQgYm54dF9xcGxpYl9hZGRfc2dpZChzdHJ1Y3QgYm54dF9xcGxpYl9z
Z2lkX3RibAo+ID4gKnNnaWRfdGJsLAo+ID4gICAgfQo+ID4gICAgZnJlZV9pZHggPSBzZ2lkX3Ri
bC0+bWF4Owo+ID4gICAgZm9yIChpID0gMDsgaSA8IHNnaWRfdGJsLT5tYXg7IGkrKykgewo+ID4g
LSBpZiAoIW1lbWNtcCgmc2dpZF90YmwtPnRibFtpXSwgZ2lkLCBzaXplb2YoKmdpZCkpKSB7Cj4g
PiArIGlmICghbWVtY21wKCZzZ2lkX3RibC0+dGJsW2ldLCBnaWQsIHNpemVvZigqZ2lkKSkgJiYK
PiA+ICsgICAgIHNnaWRfdGJsLT50YmxbaV0udmxhbl9pZCA9PSB2bGFuX2lkKSB7Cj4gPiAgICBk
ZXZfZGJnKCZyZXMtPnBkZXYtPmRldiwKPiA+ICAgICJTR0lEIGVudHJ5IGFscmVhZHkgZXhpc3Qg
aW4gZW50cnkgJWQhXG4iLCBpKTsKPiA+ICAgICppbmRleCA9IGk7Cj4gPiBAQCAtMzUxLDYgKzM1
NCw3IEBAIGludCBibnh0X3FwbGliX2FkZF9zZ2lkKHN0cnVjdCBibnh0X3FwbGliX3NnaWRfdGJs
Cj4gPiAqc2dpZF90YmwsCj4gPiAgICB9Cj4gPiAgICAvKiBBZGQgR0lEIHRvIHRoZSBzZ2lkX3Ri
bCAqLwo+ID4gICAgbWVtY3B5KCZzZ2lkX3RibC0+dGJsW2ZyZWVfaWR4XSwgZ2lkLCBzaXplb2Yo
KmdpZCkpOwo+ID4gKyBzZ2lkX3RibC0+dGJsW2ZyZWVfaWR4XS52bGFuX2lkID0gdmxhbl9pZDsK
PiA+ICAgIHNnaWRfdGJsLT5hY3RpdmUrKzsKPiA+ICAgIGlmICh2bGFuX2lkICE9IDB4RkZGRikK
PiA+ICAgIHNnaWRfdGJsLT52bGFuW2ZyZWVfaWR4XSA9IDE7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9pbmZpbmliYW5kL2h3L2JueHRfcmUvcXBsaWJfc3AuaAo+ID4gYi9kcml2ZXJzL2luZmlu
aWJhbmQvaHcvYm54dF9yZS9xcGxpYl9zcC5oCj4gPiBpbmRleCAwZWMzYjEyYjBiY2QuLmI1YzRj
ZTMwMmM2MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvaW5maW5pYmFuZC9ody9ibnh0X3JlL3Fw
bGliX3NwLmgKPiA+ICsrKyBiL2RyaXZlcnMvaW5maW5pYmFuZC9ody9ibnh0X3JlL3FwbGliX3Nw
LmgKPiA+IEBAIC04NCw2ICs4NCwxMSBAQCBzdHJ1Y3QgYm54dF9xcGxpYl9naWQgewo+ID4gICAg
dTggZGF0YVsxNl07Cj4gPiAgIH07Cj4gPgo+ID4gK3N0cnVjdCBibnh0X3FwbGliX2dpZF9pbmZv
IHsKPiA+ICsgc3RydWN0IGJueHRfcXBsaWJfZ2lkIGdpZDsKPiA+ICsgdTE2IHZsYW5faWQ7Cj4g
PiArfTsKPiA+ICsKPiA+ICAgc3RydWN0IGJueHRfcXBsaWJfYWggewo+ID4gICAgc3RydWN0IGJu
eHRfcXBsaWJfZ2lkIGRnaWQ7Cj4gPiAgICBzdHJ1Y3QgYm54dF9xcGxpYl9wZCAqcGQ7Cj4gPiBA
QCAtMjIxLDcgKzIyNiw3IEBAIGludCBibnh0X3FwbGliX2dldF9zZ2lkKHN0cnVjdCBibnh0X3Fw
bGliX3JlcyAqcmVzLAo+ID4gICAgc3RydWN0IGJueHRfcXBsaWJfc2dpZF90YmwgKnNnaWRfdGJs
LCBpbnQgaW5kZXgsCj4gPiAgICBzdHJ1Y3QgYm54dF9xcGxpYl9naWQgKmdpZCk7Cj4gPiAgIGlu
dCBibnh0X3FwbGliX2RlbF9zZ2lkKHN0cnVjdCBibnh0X3FwbGliX3NnaWRfdGJsICpzZ2lkX3Ri
bCwKPiA+IC0gc3RydWN0IGJueHRfcXBsaWJfZ2lkICpnaWQsIGJvb2wgdXBkYXRlKTsKPiA+ICsg
c3RydWN0IGJueHRfcXBsaWJfZ2lkICpnaWQsIHUxNiB2bGFuX2lkLCBib29sIHVwZGF0ZSk7Cj4g
PiAgIGludCBibnh0X3FwbGliX2FkZF9zZ2lkKHN0cnVjdCBibnh0X3FwbGliX3NnaWRfdGJsICpz
Z2lkX3RibCwKPiA+ICAgIHN0cnVjdCBibnh0X3FwbGliX2dpZCAqZ2lkLCB1OCAqbWFjLCB1MTYg
dmxhbl9pZCwKPiA+ICAgIGJvb2wgdXBkYXRlLCB1MzIgKmluZGV4KTsKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
