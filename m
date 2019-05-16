Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186311FEE2
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 07:51:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VolsthqDBgqbo+nnq2zUi+j4e8YaLCifLLgcONzwa3E=; b=Fb7A79kwd1KSVL
	EUpNDAQV23cNYPRKBDOpugT1rEs+qcq3Ftq/iiT6ZLRdNNxgFiTalxBR7muf5pN+l/gE47uob1WQX
	+JjnfYPMl+BJYlF4CGatkTryZnHPFhLSBFTSRpujdTwPv1kOLeOe1NxJglQpJkCiRSi4cZxV/8/75
	ZhpyK0M0kZoYZbDT99vAYM5t/DaoZAfbLRaKBseF+hdyriX8EZRTre/T7uqLsx3PPfJ7hbLhyZdGO
	cuqsf8CcAWpi8Lie7UowiovwjJAMRbjGMZ7c20jmvE2ewdcT/2vuxDTPajHghqEDz2TLJ0bG7UVls
	SEifhCbNHN9uNXkBossg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR9Ig-0002Z5-CE; Thu, 16 May 2019 05:51:30 +0000
Received: from salida.aumenta.com.mx ([209.139.208.81])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR9Ib-0002YR-H8
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 05:51:26 +0000
Received: from localhost (localhost [127.0.0.1])
 by salida.aumenta.com.mx (Postfix) with ESMTP id 9FC2D10008481;
 Wed, 15 May 2019 23:50:20 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1557985820;
 bh=HNAKsPB+CNFc+LwGm4sysFV2ZQzufoqT67T8gZAbbbo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=kU7y3OutYwwijV3/VA91fE0Z4WBOazzhuNKz6T/yOjDCWNRb3nSbVtrwcyx35RzDL
 YywM1/WDiogv5rcsvIN4vahD6xEdqunBQSQMOFtdvHrhuceXV2ER0i4Q3NAkXxF6wL
 zWJDTdTWnFNVvwUzcklcQWm9DLN2mv4PJjlRaGRA=
X-Virus-Scanned: amavisd-new at aumenta.com.mx
Received: from salida.aumenta.com.mx ([127.0.0.1])
 by localhost (trefilp.aumenta.com.mx [127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id p51oiNjvDZrd; Wed, 15 May 2019 23:49:57 -0600 (MDT)
Received: from airsk8 (unknown [189.146.226.233])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: ichavero@seispistos.com.mx)
 by salida.aumenta.com.mx (Postfix) with ESMTPSA id 5AE7F10008480;
 Wed, 15 May 2019 23:49:57 -0600 (MDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=chavero.com.mx;
 s=mail; t=1557985797;
 bh=HNAKsPB+CNFc+LwGm4sysFV2ZQzufoqT67T8gZAbbbo=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=k1F1RvhmR9ghZv+KFYWwC8cYFEILqNMbF7JEUj379oU513DfyNj+NB5uxny/So145
 eByJ1onP7hM+WMISr8ALngvw6tGjdN01XGampyDuU5bXHx32dWIFMY+MS5S0OMugwi
 AQakwLX4n9zhRiybCNW2ExilgU9pIW0jwrIVQkck=
Message-ID: <ac0020310720baaf802b66d9c218c59d9211a65d.camel@chavero.com.mx>
Subject: Re: nvme drive kernel 5.0 problem
From: =?ISO-8859-1?Q?Iv=E1n?= Chavero <ichavero@chavero.com.mx>
To: Ming Lei <tom.leiming@gmail.com>
Date: Thu, 16 May 2019 00:50:58 -0500
In-Reply-To: <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
References: <4a0dda5365f24e7223d1672233d7f1ac64640d31.camel@chavero.com.mx>
 <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_225125_624226_A7A4BF56 
X-CRM114-Status: UNSURE (   6.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

VGhhbmtzIQoKSSdsbCB0ZXN0IHRoZSBwYXRjaGVzIG9yIHVwZGF0ZSB0byA1LjEgdG8gc2VlIGlm
IGdldHMgZml4ZWQKCj4gTm90IHNlZSB0aGlzIGlzc3VlIHdpdGggNS4xIGtlcm5lbCwgbWF5IGJl
IGFkZHJlc3NlZCBieSB0aGUgZm9sbG93aW5nCj4gcGF0Y2hlczoKPiAKPiA0ZTZiMjZkMjNkYzEg
UENJL01TSTogUmVtb3ZlIG9ic29sZXRlIHNhbml0eSBjaGVja3MgZm9yIG11bHRpcGxlCj4gaW50
ZXJydXB0IHNldHMKPiBhNmEzMDllZGJhMTMgZ2VuaXJxL2FmZmluaXR5OiBSZW1vdmUgdGhlIGxl
ZnRvdmVycyBvZiB0aGUgb3JpZ2luYWwKPiBzZXQgc3VwcG9ydAo+IDYxMmI3Mjg2MmI0ZCBudm1l
LXBjaTogU2ltcGxpZnkgaW50ZXJydXB0IGFsbG9jYXRpb24KPiBjNjZkNGJkMTEwYTEgZ2VuaXJx
L2FmZmluaXR5OiBBZGQgbmV3IGNhbGxiYWNrIGZvciAocmUpY2FsY3VsYXRpbmcKPiBpbnRlcnJ1
cHQgc2V0cwo+IDljZmVmNTViYjU3ZSBnZW5pcnEvYWZmaW5pdHk6IFN0b3JlIGludGVycnVwdCBz
ZXRzIHNpemUgaW4gc3RydWN0Cj4gaXJxX2FmZmluaXR5Cj4gMDE0NWMzMGU4OTZkIGdlbmlycS9h
ZmZpbml0eTogQ29kZSBjb25zb2xpZGF0aW9uCj4gCj4gCj4gCj4gVGhhbmtzLAo+IE1pbmcgTGVp
CgpDaGVlcnMsCkl2w6FuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=
