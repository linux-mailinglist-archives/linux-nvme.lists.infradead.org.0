Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE06B25B59
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 02:51:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNHsePtOfMOsgWaXJvqSv82iTF0YV/xrmL/ue9w1o7U=; b=M88KJDndvrWAGb
	RRdQe2qEuB03EEIs9foCUHGKq4FHe9MibrqkbSaI4yHdH7EBvUJKPEsoOUtGa6jnbMRbHuiSHmZl2
	oJMm43xjn+CdC9F8FSSf+sVga+ffsI+AJi3xFKgV7Upzhbg6wwNISm5XtBFB7l6UBlpXLXT4M5wgW
	9E13josu4gAXIz1fn9lM0nf7szmviQXHo3YjXHsZrA0JmO4kmoY7zMWZqohgCteOI6NNzNeVdf40Z
	H/EM0aR74qyj2/KVvIntv7I04K/xATANOn2TW0d/TYmIMQfr5KoNogohg0GW8v2Gzi5x6QfDhMqej
	/ZId90X7dqc+S6OrLshg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTFTG-0005eH-MX; Wed, 22 May 2019 00:51:06 +0000
Received: from salida.aumenta.com.mx ([209.139.208.81])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTFTB-0005dw-PI
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 00:51:03 +0000
Received: from localhost (localhost [127.0.0.1])
 by salida.aumenta.com.mx (Postfix) with ESMTP id 5A24610008481;
 Tue, 21 May 2019 18:49:54 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1558486194;
 bh=V9rcNnj2WZWZLO/ouqXR/pbLFlxuva07ujxDvxx38yE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=VENslX0dVxSKcdyKW6dI0QczCcPBG7NjrAsyeDq946wz5P0T2e42aQB0tOMkblALG
 lX2+3R7UQa5HUNeKMEJKfD+sisJl2MnChzKCwlG+d0SKug5Ygma1xLLkkgE6MFB2XX
 8zOqtNfdiV77sfRFqUPdh2hEr51mg+PtjhbT3Ss4=
X-Virus-Scanned: amavisd-new at aumenta.com.mx
Received: from salida.aumenta.com.mx ([127.0.0.1])
 by localhost (trefilp.aumenta.com.mx [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id RJDSjcY07C0t; Tue, 21 May 2019 18:49:31 -0600 (MDT)
Received: from airsk8 (unknown [189.146.226.233])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: ichavero@seispistos.com.mx)
 by salida.aumenta.com.mx (Postfix) with ESMTPSA id B6F7D10008480;
 Tue, 21 May 2019 18:49:30 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1558486171;
 bh=V9rcNnj2WZWZLO/ouqXR/pbLFlxuva07ujxDvxx38yE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=DNelJphWJD8kxDax26Eejjy5iS4yjbpPoICcP11/vmcnDeNoMFTBw8WQOo08/VVWv
 9q7iso5l/GNVpcmciXBGhsrYq2VsfTxsPpAtuDlMh8cn9KSHPlAcPPvEv/lb1zUV82
 WWtP+yL+Q+pviEQUQ9yJc1PDBoJmrHkfLXtKpjbk=
Message-ID: <2c9601b1555b0bf731310213a1d78960ea7a6ad5.camel@chavero.com.mx>
Subject: Re: nvme drive kernel 5.0 problem
From: =?ISO-8859-1?Q?Iv=E1n?= Chavero <ichavero@chavero.com.mx>
To: Keith Busch <keith.busch@intel.com>
Date: Tue, 21 May 2019 19:50:34 -0500
In-Reply-To: <20190521220007.GB4302@localhost.localdomain>
References: <4a0dda5365f24e7223d1672233d7f1ac64640d31.camel@chavero.com.mx>
 <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
 <a640a0768d19aedee71a1abad7817a3a71291851.camel@chavero.com.mx>
 <20190521142000.GA350@localhost.localdomain>
 <e027eae2-0c39-8e83-5a09-fda82d4c2a52@chavero.com.mx>
 <20190521220007.GB4302@localhost.localdomain>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_175101_872360_1F0DB171 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

RWwgbWFyLCAyMS0wNS0yMDE5IGEgbGFzIDE2OjAwIC0wNjAwLCBLZWl0aCBCdXNjaCBlc2NyaWJp
w7M6Cj4gT24gVHVlLCBNYXkgMjEsIDIwMTkgYXQgMDQ6MzQ6NDRQTSAtMDUwMCwgSXbDoW4gQ2hh
dmVybyB3cm90ZToKPiA+IEkgdGhpbmsgdGhhdCB0aGUgcmVhbCBlcnJvciBpcyB0aGlzIG9uZToK
PiA+IAo+ID4gcHJpbnRfcmVxX2Vycm9yOiBvcGVyYXRpb24gbm90IHN1cHBvcnRlZCBlcnJvciwg
ZGV2IG52bWUwbjEsIHNlY3Rvcgo+ID4gMzg2MTM4MTEyIGZsYWdzIDQ4MDEKPiAKPiBXZWlyZC4g
VGhlcmUgYXJlIG5vdCB2ZXJ5IG1hbnkgc3RhdHVzZXMgdGhhdCB0cmFuc2xhdGUgdG8gYSAibm90
Cj4gc3VwcG9ydGVkIiBmcm9tIG52bWUsIGFuZCBub25lIG9mIHRoZW0gcmVhbGx5IG1ha2Ugc2Vu
c2UgZm9yIGEgZGV2aWNlCj4gdG8gcmV0dXJuIG9ubHkgZHVyaW5nIGVhcmx5IGJvb3QuIExldCdz
IHNlZSBpZiB0aGF0IGVycm9yIGlzIGNvbWluZwo+IGZyb20gdGhlIGRyaXZlIG9yIHNvbWV3aGVy
ZSBlbHNlLgo+IAo+IENvdWxkIHlvdSBhcHBlbmQgdGhlIGZvbGxvd2luZyBrZXJuZWwgcGFyYW1l
dGVyOgo+IAo+ICAgdHJhY2VfZXZlbnQ9bnZtZV9zZXR1cF9jbWQsbnZtZV9jb21wbGV0ZV9ycQo+
IAo+IFRoZW4gZ2V0IHRoZSBvdXRwdXQgZnJvbSBhZnRlciB0aGUgZXJyb3JzPwo+IAo+ICAgY2F0
IC9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvdHJhYwoKCkkgdHJpZWQgc2V0dGluZzogCgp0cmFj
ZV9ldmVudD1udm1lX3NldHVwX2NtZCxudm1lX2NvbXBsZXRlX3JxCgpidXQgZ290IHRoaXMgZXJy
b3I6CgpbICAgIDAuMjg0MDE2XSBGYWlsZWQgdG8gZW5hYmxlIHRyYWNlIGV2ZW50OiBudm1lX3Nl
dHVwX2NtZApbICAgIDAuMjg0MDQzXSBGYWlsZWQgdG8gZW5hYmxlIHRyYWNlIGV2ZW50OiBudm1l
X2NvbXBsZXRlX3JxCgphbmQgYWxzbyAKCnRyYWNlX2V2ZW50PW52bWU6KgoKYW5kIGdvdCB0aGlz
OgoKWyAgICAwLjI4MzMwOF0gRmFpbGVkIHRvIGVuYWJsZSB0cmFjZSBldmVudDogbnZtZToqCgp3
aGF0IGVsc2UgY291bGQgaSBjaGVjayB0byBzZWUgd2hhdCdzIHRoZSBwcm9ibGVtPz8KCnRoYW5r
cwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
