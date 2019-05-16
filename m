Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED58209B0
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:30:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBQma8y6clce1UIW7/pSGZzMh1vCmRqWCL6wDQm9QpE=; b=pl1w0j6EmI/Mur
	2wgnXu8S9DmiWmtFQ/JuLQMk0gcudmhQTAwtEo4xmZNMK5F7ZnI9XfibqKsZ5VFq39FQUdbHd1jra
	tS1Cntk8oJ416BIZBWNh0rZeRgKrAxu1Hi1HqmLWyqVxKoTibe14H35cMdctkO6GbzPjRxruIstsD
	wXjHMStz2MrWFSCLbFjrh9eFcEnrVlrsBqbSFJzGv/PM3ATnGbhTjAGZDDF7rJUlzGNpeFxF6Llgp
	Bf6pn0ha6x2wZyo480oAZ1b1vtMLmDy4E6x8DPMzpshbPThMJASHCP4X6EONT1eT4x26DCf+b0Msv
	hUN1y+K62mNhn0eF9bdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHOw-0003AX-OY; Thu, 16 May 2019 14:30:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHOo-00038x-9t
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:30:23 +0000
Received: by mail-pf1-x444.google.com with SMTP id g9so1932721pfo.11
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 07:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=F3WBfCSGQ1S3ZrQi1vnb+tms40ACrCS3PRWnR27giHQ=;
 b=cavoVWjIaqV5ouirIMGCShuXCwnx+MV6zz/TwIIsXu2SnKUvZBC6CpiS89z7USmoTZ
 pCQGNCupE7Ks3CiI0jn9NzF3Escj/nqBru1YAcj7oRLUIezVvlzYO2NxfAu3FfXSu0fa
 pz8UFDHcFj3Bfjp0LqkJyMI663jc0FhUTWZoTO0lJtR793mOLC3DOqaUAn6y4uI9OmXX
 i0BM2Ncx1zqDMkwdNEz8T/PuSBRQGiC1HNGbvQlWnGkWrDTySxvJe35I78y7pNd4JOQj
 CHz5wCIbciapYj7+c+ySg+ezZUvabZEkIgpWZV53hq/ka+JzSV6XWMm2693hhAzvByLi
 aTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=F3WBfCSGQ1S3ZrQi1vnb+tms40ACrCS3PRWnR27giHQ=;
 b=kziV5wM3JYzPioIHtPkj+FsFMiIav3sh2ctzcqD/uuYmMv0aQAx+jCWcuQbljVs7Ck
 bIsUgWkXoLEN1oJieuDhlO6YvsfOgXwJDRZqpOjGErFpEesGxQZmEQYuL5BLBUuAcDU4
 A1vN/y18YJruCA2YTp4fuFceDSCtQr5EMuBzOTLnJbm7gqoLzu5t6DxxoIU0Z65qfDsf
 nAdjS77kWcqFK6QJWac1+YmS6UjZhfo1pEpRtTztX/RVdPxbB6yuSTdq5DPGglrLslSa
 B1hBzqIHxAvg3SCJB3moz7Vb0tnWGsbIJNC/lgARcT2YlGFdf1Qx5sfs6GeUcmBQwhT6
 /wvg==
X-Gm-Message-State: APjAAAXrpA/tdz105sFzqblaE9unYMMF6LEbN2Jtxsf783QIioqPqXid
 49b9ENJH5qRvL6+ZTRMVY4R6sAOgFXgGgaW0e7s=
X-Google-Smtp-Source: APXvYqyA3NGdQGXPE0C8VJRcA+O0oqHudMt1eEMQNr6iPXuk0bxJXjV+Wkp7pmV2UWzeVLphRKHf99oQuNw8d6gm4+Q=
X-Received: by 2002:a62:1a51:: with SMTP id a78mr53158071pfa.133.1558017021738; 
 Thu, 16 May 2019 07:30:21 -0700 (PDT)
MIME-Version: 1.0
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-3-git-send-email-akinobu.mita@gmail.com>
 <20190515170320.GA21663@localhost.localdomain>
In-Reply-To: <20190515170320.GA21663@localhost.localdomain>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Thu, 16 May 2019 23:30:10 +0900
Message-ID: <CAC5umyi97O+-4Dpspx-mouSReJBxqDXvigxw-SzDSa4BeEM9Ng@mail.gmail.com>
Subject: Re: [PATCH 2/2] nvme-pci: support thermal zone
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073022_355364_3688EADD 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Jens Axboe <axboe@fb.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-nvme@lists.infradead.org,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxNuaXpSjmnKgpIDI6MDggS2VpdGggQnVzY2ggPGtidXNjaEBrZXJuZWwub3Jn
PjoKPgo+IE9uIFRodSwgTWF5IDE2LCAyMDE5IGF0IDEyOjE3OjE3QU0gKzA5MDAsIEFraW5vYnUg
TWl0YSB3cm90ZToKPiA+IFRoaXMgZW5hYmxlcyB0byB1c2UgdGhlcm1hbCB6b25lIGludGVyZmFj
ZXMgZm9yIE5WTWUKPiA+IHRlbXBlcmF0dXJlIHNlbnNvcnMuCj4gPgo+ID4gQ2M6IFpoYW5nIFJ1
aSA8cnVpLnpoYW5nQGludGVsLmNvbT4KPiA+IENjOiBFZHVhcmRvIFZhbGVudGluIDxlZHViZXp2
YWxAZ21haWwuY29tPgo+ID4gQ2M6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5h
cm8ub3JnPgo+ID4gQ2M6IEtlaXRoIEJ1c2NoIDxrZWl0aC5idXNjaEBpbnRlbC5jb20+Cj4gPiBD
YzogSmVucyBBeGJvZSA8YXhib2VAZmIuY29tPgo+ID4gQ2M6IENocmlzdG9waCBIZWxsd2lnIDxo
Y2hAbHN0LmRlPgo+ID4gQ2M6IFNhZ2kgR3JpbWJlcmcgPHNhZ2lAZ3JpbWJlcmcubWU+Cj4gPiBT
aWduZWQtb2ZmLWJ5OiBBa2lub2J1IE1pdGEgPGFraW5vYnUubWl0YUBnbWFpbC5jb20+Cj4gPiAt
LS0KPiA+ICBkcml2ZXJzL252bWUvaG9zdC9wY2kuYyB8IDUgKysrKysKPiA+ICAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbnZtZS9o
b3N0L3BjaS5jIGIvZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKPiA+IGluZGV4IGZhZDUzOTUuLjg4
YTI1ZGMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL252bWUvaG9zdC9wY2kuYwo+ID4gKysrIGIv
ZHJpdmVycy9udm1lL2hvc3QvcGNpLmMKPiA+IEBAIC0yNDcwLDYgKzI0NzAsNyBAQCBzdGF0aWMg
dm9pZCBudm1lX3BjaV9mcmVlX2N0cmwoc3RydWN0IG52bWVfY3RybCAqY3RybCkKPiA+ICAgICAg
IGlmIChkZXYtPmN0cmwuYWRtaW5fcSkKPiA+ICAgICAgICAgICAgICAgYmxrX3B1dF9xdWV1ZShk
ZXYtPmN0cmwuYWRtaW5fcSk7Cj4gPiAgICAgICBrZnJlZShkZXYtPnF1ZXVlcyk7Cj4gPiArICAg
ICBudm1lX3RoZXJtYWxfem9uZXNfdW5yZWdpc3RlcigmZGV2LT5jdHJsKTsKPgo+IFRoaXMgdW5y
ZWdpc3RlciBzaG91bGQgcHJvYmFibHkgZ28gaW4gdGhlIG52bWVfcmVtb3ZlKCkgcmF0aGVyIHRo
YW4gaW4KPiB0aGUgbGFzdCByZWZlcmVuY2UgcmVsZWFzZS4KCllvdSBhcmUgcmlnaHQuICBJdCBp
cyB0b28gbGF0ZSB0byB1bnJlZ2lzdGVyIGFuZCBpdCBjYXVzZWQgYSBsb3Qgb2YKc3lzZnNfcmVt
b3ZlX2xpbmsoKSBmYWlsdXJlcyB3aGVuIHJlbW92aW5nIGRyaXZlci4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
