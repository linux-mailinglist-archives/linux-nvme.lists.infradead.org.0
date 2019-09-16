Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA90B3728
	for <lists+linux-nvme@lfdr.de>; Mon, 16 Sep 2019 11:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tAPVnoUFSEmWCL/l5vXJ7KfxQ5tpk57oDiG/bZkdmGQ=; b=X5vUgsN7Cle/1aVZA5H9VKHlm
	rnqeECwsjYu9ixLWbZqCX4QOV980y56ssI+F8FubIDpkyM5W7Zcocj9ElwzFgPKnT0lJM3Q1evjf3
	hGjQDN5woyEJDk1i38DDRgkIRvW2ayoFXahFAGeRFN+xmymm2JIyE+vYmJQ8r1RiX+lp2sPSqicWl
	QMOGJytIS7qTDXrsGeWYgjw+upMqWYEggvXxIBKS9iGoIPMIBGIWyruC9AwO1ziRmbmYm5sI9kyAw
	VqfusgbbWAog2arcokLqtJgHB1AdR+nYUy5ub/g3/yRTmkLWCf+nl/n/WNNXEgCKCFf5BfIlyiZ1g
	X6v7rSbPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nLS-0005aH-Oc; Mon, 16 Sep 2019 09:30:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nLJ-0005Zt-OX
 for linux-nvme@lists.infradead.org; Mon, 16 Sep 2019 09:30:47 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 1DF2364120;
 Mon, 16 Sep 2019 09:30:45 +0000 (UTC)
Received: from dhcp-12-105.nay.redhat.com (dhcp-12-105.nay.redhat.com
 [10.66.12.105])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 025EE19C78;
 Mon, 16 Sep 2019 09:30:43 +0000 (UTC)
Subject: Re: incorrect sysfs reported by realpath for nvme disk when
 nvme-core:multipath enabled
To: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>
References: <1753358694.11967186.1568394608486.JavaMail.zimbra@redhat.com>
 <1137688987.11971676.1568396450210.JavaMail.zimbra@redhat.com>
 <20190913175637.GC17139@keith-busch>
 <a24713ad-e907-2cfd-b1da-cef552c29b14@grimberg.me>
 <20190914151913.GA562@keith-busch>
From: Yi Zhang <yi.zhang@redhat.com>
Message-ID: <8a3ccdd6-ae74-4368-ca64-3e8d47ea72d1@redhat.com>
Date: Mon, 16 Sep 2019 17:30:40 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190914151913.GA562@keith-busch>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Mon, 16 Sep 2019 09:30:45 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_023045_817919_8D78F129 
X-CRM114-Status: GOOD (  20.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

CgpPbiA5LzE0LzE5IDExOjE5IFBNLCBLZWl0aCBCdXNjaCB3cm90ZToKPiBPbiBGcmksIFNlcCAx
MywgMjAxOSBhdCAxMTo0Mzo0MEFNIC0wNzAwLCBTYWdpIEdyaW1iZXJnIHdyb3RlOgo+Pj4gVGhp
cyB3YXMgY29uZnVzaW5nIHRvIGVub3VnaCBwZW9wbGUgdGhhdCB3ZSd2ZSBzaW5jZSBjaGFuZ2Vk
IHRoZSBuYW1pbmcKPj4+IHRvIHNvbWV0aGluZyBwZW9wbGUgZXhwZWN0IHRvIHNlZSwgYnV0IHRo
YXQncyBzdGFnZWQgaW4gNS40LiBHaXZlbiB0aGUKPj4+IG51bWJlciBvZiBwZW9wbGUgd2hvIGZp
bmQgdGhpcyBjb25mdXNpbmcsIHRoaXMgbWlnaHQgYmUgd29ydGggbWFraW5nIGEKPj4+IHN0YWJs
ZSBwYXRjaC4KPj4gSSBhZ3JlZSBoZXJlLgoKSGkgS2VpdGgKClRoYW5rcyBmb3IgdGhlIGluZm8s
IEkganVzdCB0ZXN0IHRoZSBudm1lLTUuNCwgYW5kIGl0IHdvcmtzIGFzIGV4cGVjdC4KCltyb290
QHJkbWEtcGVyZi0wNyB+XSQgbHNibGsKTkFNRSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCBNQUo6TUlOIFJNIMKgIFNJWkUgUk8gVFlQRSBNT1VOVFBPSU5UCnNkYSDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDg6MCDCoCDCoDAgMjIyLjVHIMKgMCBk
aXNrCuKUnOKUgHNkYTEgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgODoxIMKg
IMKgMCDCoCA2MDBNIMKgMCBwYXJ0IC9ib290L2VmaQrilJzilIBzZGEyIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIDg6MiDCoCDCoDAgwqAgwqAgMUcgwqAwIHBhcnQgL2Jvb3QK
4pSU4pSAc2RhMyDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCA4OjMgwqAgwqAw
IDIyMC45RyDCoDAgcGFydAogwqDCoOKUnOKUgHJoZWxfcmRtYS0tcGVyZi0tMDctcm9vdCAyNTM6
MCDCoCDCoDAgwqAgwqA1MEcgwqAwIGx2bSDCoC8KIMKgwqDilJzilIByaGVsX3JkbWEtLXBlcmYt
LTA3LXN3YXAgMjUzOjEgwqAgwqAwIMKgIMKgIDRHIMKgMCBsdm0gwqBbU1dBUF0KIMKgwqDilJTi
lIByaGVsX3JkbWEtLXBlcmYtLTA3LWhvbWUgMjUzOjIgwqAgwqAwIDE2Ni45RyDCoDAgbHZtIMKg
L2hvbWUKbnZtZTFuMSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoDI1OTowIMKgIMKg
MCDCoCAxLjhUIMKgMCBkaXNrCuKUlOKUgG52bWUxbjFwMSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoDI1OToxIMKgIMKgMCDCoCAxLjhUIMKgMCBwYXJ0Cm52bWUwbjEgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAyNTk6MyDCoCDCoDAgwqAgMS41VCDCoDAgZGlzawpbcm9vdEByZG1h
LXBlcmYtMDcgfl0kIHJlYWxwYXRoIC9zeXMvZGV2L2Jsb2NrLzI1OTowCi9zeXMvZGV2aWNlcy9w
Y2kwMDAwOmFlLzAwMDA6YWU6MDAuMC8wMDAwOmFmOjAwLjAvbnZtZS9udm1lMS9udm1lMW4xClty
b290QHJkbWEtcGVyZi0wNyB+XSQgcmVhbHBhdGggL3N5cy9kZXYvYmxvY2svMjU5OjMKL3N5cy9k
ZXZpY2VzL3ZpcnR1YWwvbnZtZS1zdWJzeXN0ZW0vbnZtZS1zdWJzeXMwL252bWUwbjEKClRoYW5r
cwoKWWkKCgo+IE9rYXksIEknbGwgZm9yd2FyZCB0aGUgY29tbWl0IHRvIHN0YWJsZSBvbmNlIG1l
cmdlZCB0byBtYWlubGluZS4gSSBkb24ndAo+IHRoaW5rIHdlIGNhbiBjb3VudCBvbiB0aGUgc3Rh
YmxlIGJvdCB0byBwaWNrIHRoaXMgb25lIHVwLiBXZSBvbmx5IG5lZWQKPiB0aGlzIGJhY2sgdG8g
NC4xOSBhcyBhbGwgdGhlIHByZXZpb3VzIHN0YWJsZXMgd2l0aCB0aGlzIG5hbWluZyBzY2hlbWUK
PiBoYXZlIGJlIEVPTCdlZC4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCj4gTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKPiBMaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LW52bWUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1u
dm1lCg==
