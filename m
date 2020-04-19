Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A79761AFF00
	for <lists+linux-nvme@lfdr.de>; Mon, 20 Apr 2020 01:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rVpPr4aP2ugRnBIqjeiwcm3m7QZNE6wWMoBYihwIghI=; b=tSXpDE34qc+1id
	PDsrxtd2GycmS02wbVpB5RE9wSNyZqkatxU6rDo5R46/MdbaLFJ+EF0HemmEX/eR+KDsUUG/uhvn3
	UIMGlk2+dElt1MdLLKVeLxYDON8MroFODQ8iAHfdZ6bR6Nge6FTgf6vGaCQQcldtnWTpaLfbuprj9
	l8LB26H5aQ6022EuqWCirqwwB5TAzm/GAi0HNlMzV6BBdz0FfT5KPgKb7wnsJ1crnbUUpnBYlp0yr
	gcXDauE6BhEPYYGZZn7k6AfBoaaaLw5Hj4yc7Q8brTrQBA5aoisPX7k1KPw/czPjbZ8rQ0imNuKW6
	URzRkcXxd9SDRWT9dtXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQJhr-0008Q6-39; Sun, 19 Apr 2020 23:50:35 +0000
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQJh9-0005ir-JF
 for linux-nvme@lists.infradead.org; Sun, 19 Apr 2020 23:50:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1587340211; x=1618876211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EWaxsvA9EA9mP868C5VV61f/oNBmh3KlNXpPurBN/SI=;
 b=gYr8Q9wYcgue96EM6S6OsRespMclPVizHhJHU4AvyOOhDMO9OLiKfu3D
 Tuv9C4uvv76fxRpbuJgTPnQJWNClbu+zC/TzDWg/yMb2D4mbbmTDJIOzb
 4G/swH/nVs1NuHGLWtn5Bdo56ZH2tJpYsqzhHhnGpgAiL/bG07fOdsLzQ
 QWFeFU+XJ1A4Xd1CXjHGfKRFHu4FS1B32chJ/GPn3FoTnUVNpFffNPx62
 lytbsT25LdtLG1HbYnHAoc5ihV24+9iXSNE6KutcukpMUyr6B/dDHmZZO
 SvvBAk5a3qZgCtc/Mc5iQBz9CN63MX3KaBHFL7BTGj8E02VOAH2qfgcGX Q==;
IronPort-SDR: xnQicHZ4hU2ahx5cobe5Pjwlz9vfvTVPndakYbehSf2IZFMksKeygSEnLMlXr7HBC8E+v+qmzk
 PprdFOVrFDiwhBTwdogbpbrKKVzjDnm9I9b4MwKyAbpLrMgFgtbxkf4O145ZvjvL8VBAoIit8o
 pl4aKp3KKlKypf++DzYrUbh3MJLKNk8nLL8gDjueK3feDmY/5f5fcufXvGWscrbBfb9y69WVX/
 nZtY9fZBWeNkAqPyY4DNU4X0gJUI9kIQHiEyPDI3/uNpLZFvD0M+7SHqM20nu/DcoJpedioMof
 Z80=
X-IronPort-AV: E=Sophos;i="5.72,404,1580745600"; d="scan'208";a="238116485"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 20 Apr 2020 07:50:10 +0800
IronPort-SDR: mVwdt6lXYF4oYKy8sfC6T2e3w3cZb1UkJlvpnEyepL2EczXdEjopTcQ1nGkXrc/kBxAjv5Cd5U
 xwf80CjbmwtHi3KjVgu3rFbNai3Ljz2mQ=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2020 16:40:45 -0700
IronPort-SDR: sN6n9Ijl3QHIqKbHEPD65bhImQ698J8CkMG6v/s1FUVTPoebfe/wKLReahb1BxMlkXgVckAM7N
 ezqD7jXYrjpw==
WDCIronportException: Internal
Received: from iouring.labspan.wdc.com (HELO iouring.sc.wdc.com)
 ([10.6.138.107])
 by uls-op-cesaip02.wdc.com with ESMTP; 19 Apr 2020 16:49:50 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 6/7] nvmet: export ns resize monitor attribute
Date: Sun, 19 Apr 2020 16:48:55 -0700
Message-Id: <20200419234856.59901-7-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200419234856.59901-1-chaitanya.kulkarni@wdc.com>
References: <20200419234856.59901-1-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_164951_752708_5CF7DFED 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 hch@lst.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBhZGRzIGEgbmV3IGNvbmZpZ2ZzIG5zIGF0dHJpYnV0ZXMgc28gdGhhdCB1c2Vy
IGNhbiBkZWNpZGUgdG8KaW5jbHVkZSBvciBleGNsdWRlIHRoZSBwYXJ0aWNpcGF0aW9uIG9mIHRo
ZSBuYW1lc3BhY2UgaW4gdGhlIHJlc2l6ZQptb25pdG9yIG5hbWVzcGFjZSBzY2FuIGFuZCBBRU4g
Z2VuZXJhdGlvbi4gwqAKClNpZ25lZC1vZmYtYnk6IENoYWl0YW55YSBLdWxrYXJuaSA8Y2hhaXRh
bnlhLmt1bGthcm5pQHdkYy5jb20+Ci0tLQogZHJpdmVycy9udm1lL3RhcmdldC9jb25maWdmcy5j
IHwgMjQgKysrKysrKysrKysrKysrKysrKysrKysrCiBkcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUu
YyAgICAgfCAgMyArKy0KIGRyaXZlcnMvbnZtZS90YXJnZXQvbnZtZXQuaCAgICB8ICAxICsKIDMg
ZmlsZXMgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvbnZtZS90YXJnZXQvY29uZmlnZnMuYyBiL2RyaXZlcnMvbnZtZS90YXJnZXQv
Y29uZmlnZnMuYwppbmRleCBiZTRmYTc3OTdhMTYuLjZkM2Q3MDNhYTkwNyAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9udm1lL3RhcmdldC9jb25maWdmcy5jCisrKyBiL2RyaXZlcnMvbnZtZS90YXJnZXQv
Y29uZmlnZnMuYwpAQCAtNTQzLDYgKzU0MywyOSBAQCBzdGF0aWMgc3NpemVfdCBudm1ldF9uc19i
dWZmZXJlZF9pb19zdG9yZShzdHJ1Y3QgY29uZmlnX2l0ZW0gKml0ZW0sCiAKIENPTkZJR0ZTX0FU
VFIobnZtZXRfbnNfLCBidWZmZXJlZF9pbyk7CiAKK3N0YXRpYyBzc2l6ZV90IG52bWV0X25zX3Jl
c2l6ZV9tb25pdG9yX3Nob3coc3RydWN0IGNvbmZpZ19pdGVtICppdGVtLAorCQljaGFyICpwYWdl
KQoreworCXJldHVybiBzcHJpbnRmKHBhZ2UsICIlZFxuIiwgdG9fbnZtZXRfbnMoaXRlbSktPnJl
c2l6ZV9tb25pdG9yKTsKK30KKworc3RhdGljIHNzaXplX3QgbnZtZXRfbnNfcmVzaXplX21vbml0
b3Jfc3RvcmUoc3RydWN0IGNvbmZpZ19pdGVtICppdGVtLAorCQljb25zdCBjaGFyICpwYWdlLCBz
aXplX3QgY291bnQpCit7CisJc3RydWN0IG52bWV0X25zICpucyA9IHRvX252bWV0X25zKGl0ZW0p
OworCWJvb2wgdmFsOworCisJaWYgKHN0cnRvYm9vbChwYWdlLCAmdmFsKSkKKwkJcmV0dXJuIC1F
SU5WQUw7CisKKwltdXRleF9sb2NrKCZucy0+c3Vic3lzLT5sb2NrKTsKKwlucy0+cmVzaXplX21v
bml0b3IgPSB2YWw7CisJbXV0ZXhfdW5sb2NrKCZucy0+c3Vic3lzLT5sb2NrKTsKKwlyZXR1cm4g
Y291bnQ7Cit9CisKK0NPTkZJR0ZTX0FUVFIobnZtZXRfbnNfLCByZXNpemVfbW9uaXRvcik7CisK
IHN0YXRpYyBzdHJ1Y3QgY29uZmlnZnNfYXR0cmlidXRlICpudm1ldF9uc19hdHRyc1tdID0gewog
CSZudm1ldF9uc19hdHRyX2RldmljZV9wYXRoLAogCSZudm1ldF9uc19hdHRyX2RldmljZV9uZ3Vp
ZCwKQEAgLTU1MCw2ICs1NzMsNyBAQCBzdGF0aWMgc3RydWN0IGNvbmZpZ2ZzX2F0dHJpYnV0ZSAq
bnZtZXRfbnNfYXR0cnNbXSA9IHsKIAkmbnZtZXRfbnNfYXR0cl9hbmFfZ3JwaWQsCiAJJm52bWV0
X25zX2F0dHJfZW5hYmxlLAogCSZudm1ldF9uc19hdHRyX2J1ZmZlcmVkX2lvLAorCSZudm1ldF9u
c19hdHRyX3Jlc2l6ZV9tb25pdG9yLAogI2lmZGVmIENPTkZJR19QQ0lfUDJQRE1BCiAJJm52bWV0
X25zX2F0dHJfcDJwbWVtLAogI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL252bWUvdGFyZ2V0
L2NvcmUuYyBiL2RyaXZlcnMvbnZtZS90YXJnZXQvY29yZS5jCmluZGV4IGM0MmQyNGMxNzI4ZS4u
NjNmYmQzMGYwZWMxIDEwMDY0NAotLS0gYS9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYworKysg
Yi9kcml2ZXJzL252bWUvdGFyZ2V0L2NvcmUuYwpAQCAtNTMxLDcgKzUzMSw3IEBAIHN0YXRpYyB2
b2lkIF9fbnZtZXRfaGFuZGxlX3Jlc2l6ZV9ucyhzdHJ1Y3QgbnZtZXRfc3Vic3lzICpzKQogCiAJ
bXV0ZXhfbG9jaygmcy0+bG9jayk7CiAJbGlzdF9mb3JfZWFjaF9lbnRyeV9yY3UobnMsICZzLT5u
YW1lc3BhY2VzLCBkZXZfbGluaywgMSkgewotCQlpZiAobnZtZXRfbnNfcmV2YWxpZGF0ZShucykp
CisJCWlmIChucy0+cmVzaXplX21vbml0b3IgJiYgbnZtZXRfbnNfcmV2YWxpZGF0ZShucykpCiAJ
CQludm1ldF9uc19jaGFuZ2VkKG5zLT5zdWJzeXMsIG5zLT5uc2lkKTsKIAl9CiAJbXV0ZXhfdW5s
b2NrKCZzLT5sb2NrKTsKQEAgLTcxNCw2ICs3MTQsNyBAQCBzdHJ1Y3QgbnZtZXRfbnMgKm52bWV0
X25zX2FsbG9jKHN0cnVjdCBudm1ldF9zdWJzeXMgKnN1YnN5cywgdTMyIG5zaWQpCiAKIAl1dWlk
X2dlbigmbnMtPnV1aWQpOwogCW5zLT5idWZmZXJlZF9pbyA9IGZhbHNlOworCW5zLT5yZXNpemVf
bW9uaXRvciA9IHRydWU7CiAKIAlyZXR1cm4gbnM7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL252
bWUvdGFyZ2V0L252bWV0LmggYi9kcml2ZXJzL252bWUvdGFyZ2V0L252bWV0LmgKaW5kZXggMTVj
YjMzN2NkOWI4Li41NWE1MWM5ZTkzMTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbnZtZS90YXJnZXQv
bnZtZXQuaAorKysgYi9kcml2ZXJzL252bWUvdGFyZ2V0L252bWV0LmgKQEAgLTg0LDYgKzg0LDcg
QEAgc3RydWN0IG52bWV0X25zIHsKIAlzdHJ1Y3QgYmxvY2tfZGV2aWNlCSpiZGV2OwogCXN0cnVj
dCBmaWxlCQkqZmlsZTsKIAlib29sCQkJcmVhZG9ubHk7CisJYm9vbAkJCXJlc2l6ZV9tb25pdG9y
OwogCXUzMgkJCW5zaWQ7CiAJdTMyCQkJYmxrc2l6ZV9zaGlmdDsKIAlsb2ZmX3QJCQlzaXplOwot
LSAKMi4yMi4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtbnZtZSBtYWlsaW5nIGxpc3QKbGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
