Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D8F57B84
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 07:34:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6BGVboshy8+bHimVOW4lrExVB7Q8Y5aoAcANusw7Uh8=; b=cJsEpZeLVDFB9LMrFeB4NxSyt
	5h9FnKIvnl2JFLezyCBxxS8jCHcNFBiEuGoEPsIFXuUwWWFYFlVzf3QvqY4ALt12d3ZH7RDr2lrrb
	7H3NftoumQ3od52zle2U6XzLesXtkpkMHe1YHSkFK77XS+5EloigaaL/snXI9EmiWonKQjI8hjHmT
	gN0O4JzFJ7SIxPIRLrj8MxyBSkQNx88AE20Q2OeVI218UyyioAxlecpKrWqhvhz74uN9pnDx2dzm/
	aWww7LS/lr8rc4Cfb/NI70rQ87Xkae1asVsklJ/tidYeLhiVphNN23cXruXaP8sTfwUwn3a5qWTuc
	Q82wqPLJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgN2o-000599-0f; Thu, 27 Jun 2019 05:34:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgMsA-0006ep-TH
 for linux-nvme@bombadil.infradead.org; Thu, 27 Jun 2019 05:23:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y3hLdJtgQDsFchZ3YZn/blHk5XbGZwJhJgAL3zAtu/s=; b=gf9YkHPK9o/yX3OtfhfJVNmlv
 B7jJ1qPkhjTbnF1E6CMSgsye0o2WaoscL/LALr85kkE2jLQi0Ssvl1v5h2x7W/wnBR7Kl4PJniQ9R
 mWFkdrxkML206jWW7SdUXjQVrPas0oZvMPrjTDIVCRn8ST0oCjlDR9/7Xm7icQem0ORpuMQUKbzzJ
 ll6v6u/rrQvooUow0d4czoeYhJT3/OkA7r6yi3hjxxyLcFYkBWlTpsZ3L86zhvkN0vCBE6QIVzKjK
 KjHbVTHFyne7o/G4mbOjUWO3oF82ZKQXvE3jvUHSVmhlKYNNNvfudpBIDW7JHpzjsQGpjaxhLQgCi
 eY253LcrQ==;
Received: from mx0a-0016f401.pphosted.com ([67.231.148.174]
 helo=mx0b-0016f401.pphosted.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgIIZ-00029m-Cy
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 00:30:02 +0000
Received: from pps.filterd (m0045849.ppops.net [127.0.0.1])
 by mx0a-0016f401.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5R0JwZw012376; Wed, 26 Jun 2019 17:28:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=date : from : to :
 cc : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=pfpt0818; bh=Y3hLdJtgQDsFchZ3YZn/blHk5XbGZwJhJgAL3zAtu/s=;
 b=SAuSPykgCUdT8bHyBBNfKkGTeNo0uEF/JiAtnfhIKftfzfelJmFO+yn8g6rifhtByZEc
 STmqcamfauxxtYSwJxVmTEcPYCuJMRL5Jo0dmaXpQZYadgX1T4t1YpzDhU+2iFrQFFRf
 J7vosCzF3i0lh2lGcL8+il2+Xcb7PRAe6YbUxivkmD9Ndlo1RvuIGEBoseToWxCDEEAX
 iX0y6urQe+zNNm/ceycQ0xg10ko4+9xJ/YTxq87t9sbQwOCCLEEI1vvmgUZuM0k77LM1
 QLR/jWriJMhOk1YH5LtuYXQnjSXRl14Z2Dg/7hlwWrjnfNCq2yNbhxRybNxU1sHJJ5cc Qw== 
Received: from sc-exch02.marvell.com ([199.233.58.182])
 by mx0a-0016f401.pphosted.com with ESMTP id 2tch698hjj-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 26 Jun 2019 17:28:50 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH02.marvell.com
 (10.93.176.82) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 26 Jun
 2019 17:28:49 -0700
Received: from maili.marvell.com (10.93.176.43) by SC-EXCH03.marvell.com
 (10.93.176.83) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Wed, 26 Jun 2019 17:28:49 -0700
Received: from mvluser05.qlc.com (unknown [10.112.10.135])
 by maili.marvell.com (Postfix) with ESMTP id 97BC93F703F;
 Wed, 26 Jun 2019 17:28:49 -0700 (PDT)
Received: from localhost (aeasi@localhost)
 by mvluser05.qlc.com (8.14.4/8.14.4/Submit) with ESMTP id x5R0SnHC028794;
 Wed, 26 Jun 2019 17:28:49 -0700
X-Authentication-Warning: mvluser05.qlc.com: aeasi owned process doing -bs
Date: Wed, 26 Jun 2019 17:28:49 -0700
From: Arun Easi <aeasi@marvell.com>
X-X-Sender: aeasi@mvluser05.qlc.com
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [EXT] Re: [PATCH] nvme-fc: fix module unloads while lports still
 pending
In-Reply-To: <alpine.LRH.2.21.9999.1906261638450.7630@mvluser05.qlc.com>
Message-ID: <alpine.LRH.2.21.9999.1906261725120.7630@mvluser05.qlc.com>
References: <20190625160604.3905-1-jsmart2021@gmail.com>
 <alpine.LRH.2.21.9999.1906261516150.7630@mvluser05.qlc.com>
 <ddcc1865-4494-9cfe-d371-9995c19ae1c4@gmail.com>
 <alpine.LRH.2.21.9999.1906261638450.7630@mvluser05.qlc.com>
User-Agent: Alpine 2.21.9999 (LRH 334 2019-03-29)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1879738122-67375923-1561595329=:7630"
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-26_14:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_013000_317146_C2237D50 
X-CRM114-Status: GOOD (  39.02  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.9 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [67.231.148.174 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 KHOP_DYNAMIC           Relay looks like a dynamic address
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--1879738122-67375923-1561595329=:7630
Content-Type: text/plain; charset="US-ASCII"

Attaching the patch I was referring earlier. Maybe the infinite loop in 
exit could be changed to a time bound one.

-Arun

On Wed, 26 Jun 2019, 5:02pm, Arun Easi wrote:

> On Wed, 26 Jun 2019, 4:00pm, James Smart wrote:
> 
> > External Email
> > 
> > ----------------------------------------------------------------------
> > On 6/26/2019 3:20 PM, Arun Easi wrote:
> > > Changes look ok.
> > > 
> > > Did you hit this during testing? Wondering because LLD would have unloaded
> > > prior to nvme_fc, so no lport/rport should remain if LLD behaves well.
> > > 
> > > -Arun
> > > 
> > 
> > It's been a longstanding annoyance - usually tied with test cases that used
> > modprobe -r.   Issue is the drivers would call the targetport unregister
> > calls, which would release the targetport once all the outstanding ios were
> > cancelled to the lldd and the link-side association terminated, but the
> > controllers are in a reconnecting and not yet torn down.
> 
> Did you mean a "nvme_reset_ctrl/nvme_delete_ctrl" is in progress?
> 
> > From the drivers point of view, they are unlinked. Thus it was 
> > intended the driver could unregister/unload/reload/reregister and if 
> > possible reconnect - allowing the nvme device to never be deleted. Given 
> > the lack of module reference, when the driver module left, so did the 
> > transport module, even with the live data structures.
> > 
> 
> Thanks for the explanation. This reminds me of a similar issue we hit. The 
> fix under consideration was to wait in nvme_fc module exit to quiesce 
> rport/lport before proceeding.
> 
> Anyway, with the fix above, I am wondering, if nvme_fc is active for a 
> brief time just after the unload of LLD, the unload of nvme_fc would fail 
> (saying in use), wouldn't it? If so, in addition to the above fix, a 
> quiesce (flush) of such threads during module exit would give "modprobe 
> -r" a better chance to unload both modules.
> 
> Thoughts?
> 
> -Arun
> 
> 
> 
--1879738122-67375923-1561595329=:7630
Content-Type: text/plain; charset="US-ASCII";
	name="0001-nvme-fc-Wait-for-all-the-nvme-host-controllers-and-i.patch"
Content-Transfer-Encoding: BASE64
Content-ID: <alpine.LRH.2.21.9999.1906261728490.7630@mvluser05.qlc.com>
Content-Description: 
Content-Disposition: attachment;
	filename="0001-nvme-fc-Wait-for-all-the-nvme-host-controllers-and-i.patch"

RnJvbSBjYThjNjBhMjA5M2RlZmVlMzMyMTY2M2RkNWU3ZjgwMTliMjk1ZmZh
IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQ0KRnJvbTogR2lyaWRoYXIgTWFs
YXZhbGkgPGdtYWxhdmFsaUBtYXJ2ZWxsLmNvbT4NCkRhdGU6IEZyaSwgMTcg
TWF5IDIwMTkgMTI6NDg6NTcgLTA3MDANClN1YmplY3Q6IFtQQVRDSCAxLzFd
IG52bWUtZmM6IFdhaXQgZm9yIGFsbCB0aGUgbnZtZSBob3N0IGNvbnRyb2xs
ZXJzIGFuZCBpdCdzDQogcmVzb3VyY2VzIHRvIGJlIGZyZWVkIGJlZm9yZSB1
bmxvYWRpbmcgdGhlIG52bWUtZmMgbW9kdWxlLg0KDQpUaGUgdW5sb2FkIHRo
cmVhZCBjYW4gcHJvY2VlZCBhbmQgdW5sb2FkIGJlZm9yZSB0aGUgbnZtZS1m
YyBob3N0IGNvbnRyb2xsZXIgYXJlIGZyZWVkLg0KVGhpcyBmaXggc3luY2hy
b25pemVzIGJldHdlZW4gdGhlc2UgdGhyZWFkcyB0byBlbnN1cmUgdW5sb2Fk
IHRocmVhZCBjb250aW51ZXMgb25seSB3aGVuIGFsbCB0aGUgbnZtZQ0KaG9z
dCBjb250cm9sbGVyIGFuZCBpdCdzIHJlc291cmNlcyBhcmUgcmVsYXNlZC4N
Cg0KMzM1NyBbICAyMjUuMjkyNTcyXSBCVUc6IHVuYWJsZSB0byBoYW5kbGUg
a2VybmVsIHBhZ2luZyByZXF1ZXN0IGF0IGZmZmZmZmZmYzA2ODcxYTgNCjMz
NTggWyAgMjI1LjI5MjYxMV0gSVA6IFs8ZmZmZmZmZmY5NmQ1NGM1OT5dIGJs
a19tcV9leGl0X2hjdHgrMHg0OS8weGYwDQozMzU5IFsgIDIyNS4yOTI2NDJd
IFBHRCBmNTRlMTQwNjcgUFVEIGY1NGUxNjA2NyBQTUQgMTA1ODZlNDA2NyBQ
VEUgMA0KMzM2MCBbICAyMjUuMjkyNjY5XSBPb3BzOiAwMDAwIFsjMV0gU01Q
DQozMzYxIFsgIDIyNS4yOTI2ODZdIE1vZHVsZXMgbGlua2VkIGluOiBtYWNz
ZWMgdGNwX2RpYWcgdWRwX2RpYWcgaW5ldF9kaWFnIHVuaXhfZGlhZyBhZl9w
YWNrZXRfZGlhZyBuZXRsaW5rX2RpYWcgYmluZm10X21pc2MgeHRfQ0hFQ0tT
VU0gaXB0X01BU1FVRVJBREUgbmZfbmF0X21hc3F1ZXJhZGVfaXB2NCB0dW4g
ZGV2bGluayBpcDZ0X3JwZmlsdGVyIGlwdF9SRUpFQ1QNCjMzNjIgWyAgMjI1
LjI5MzAxMV0gIGdmMTI4bXVsIGdsdWVfaGVscGVyIGFibGtfaGVscGVyIGNy
eXB0ZCBwY3Nwa3Igam95ZGV2IGlwbWlfc3NpZiBpMmNfaTgwMSBzZyBocHdk
dCBocGlsbyBscGNfaWNoIGlwbWlfc2kgaXBtaV9kZXZpbnRmIGlwbWlfbXNn
aGFuZGxlciBpb2F0ZG1hIHBjY19jcHVmcmVxIHdtaSBkY2EgYWNwaV9wb3dl
cl9tZXRlciBkbV9tdWx0aXBhdGgNCjMzNjMgWyAgMjI1LjI5MzI0OV0gQ1BV
OiAzIFBJRDogMTg4IENvbW06IGt3b3JrZXIvdTQ5OjEgS2R1bXA6IGxvYWRl
ZCBUYWludGVkOiBHICAgICAgICAgICBPRSAgLS0tLS0tLS0tLS0tIFQgMy4x
MC4wLW52bWVtb2Rwcm9iZSsgIzINCjMzNjQgWyAgMjI1LjI5MzI4Nl0gSGFy
ZHdhcmUgbmFtZTogSFAgUHJvTGlhbnQgREwzODAgR2VuOS9Qcm9MaWFudCBE
TDM4MCBHZW45LCBCSU9TIFA4OSAwMS8yMi8yMDE4DQozMzY1IFsgIDIyNS4y
OTQzNTZdIFdvcmtxdWV1ZTogbnZtZS1kZWxldGUtd3EgbnZtZV9kZWxldGVf
Y3RybF93b3JrIFtudm1lX2NvcmVdDQozMzY2IFsgIDIyNS4yOTUzNzFdIHRh
c2s6IGZmZmY4YTg4MWE3ZWQyMzAgdGk6IGZmZmY4YTg4MWExNjgwMDAgdGFz
ay50aTogZmZmZjhhODgxYTE2ODAwMA0KMzM2NyBbICAyMjUuMjk2NTE4XSBS
SVA6IDAwMTA6WzxmZmZmZmZmZjk2ZDU0YzU5Pl0gIFs8ZmZmZmZmZmY5NmQ1
NGM1OT5dIGJsa19tcV9leGl0X2hjdHgrMHg0OS8weGYwDQozMzY4IFsgIDIy
NS4yOTc2MDFdIFJTUDogMDAxODpmZmZmOGE4ODFhMTZiYzkwICBFRkxBR1M6
IDAwMDEwMjQ2DQozMzY5IFsgIDIyNS4yOTg1NjhdIFJBWDogZmZmZmZmZmZj
MDY4NzE4MCBSQlg6IGZmZmY4YTg4MWVkYWNjMDAgUkNYOiAwMDAwMDAwMDAw
MDAwMDAwDQozMzcwIFsgIDIyNS4yOTk1MjBdIFJEWDogZmZmZjhhODgxZWRh
Y2MwMCBSU0k6IGZmZmY4YTkwMTc1OTkwYzggUkRJOiAwMDAwMDAwMDAwMDAw
MDAwDQozMzcxIFsgIDIyNS4zMDA0NjZdIFJCUDogZmZmZjhhODgxYTE2YmNi
MCBSMDg6IGZmZmY4YTg4MWExNmJjMDggUjA5OiAwMDAwMDAwMDAwMDAwMDAx
DQozMzcyIFsgIDIyNS4zMDE0NDRdIFIxMDogMDAwMDAwMDAwMDAwMDNlMyBS
MTE6IDAwMDAwMDAwMDAwMDAwMDAgUjEyOiBmZmZmOGE5MDE3NTk5MGM4DQoz
MzczIFsgIDIyNS4zMDIzOTJdIFIxMzogMDAwMDAwMDAwMDAwMDAwMCBSMTQ6
IGZmZmY4YTkwMTU4MTgwMDAgUjE1OiBmZmZmOGE5MDE3NTk5MTAwDQozMzc0
IFsgIDIyNS4zMDMzNDldIEZTOiAgMDAwMDAwMDAwMDAwMDAwMCgwMDAwKSBH
UzpmZmZmOGE4ODFmYWMwMDAwKDAwMDApIGtubEdTOjAwMDAwMDAwMDAwMDAw
MDANCjMzNzUgWyAgMjI1LjMwNDMyMl0gQ1M6ICAwMDEwIERTOiAwMDAwIEVT
OiAwMDAwIENSMDogMDAwMDAwMDA4MDA1MDAzMw0KMzM3NiBbICAyMjUuMzA1
MjU5XSBDUjI6IGZmZmZmZmZmYzA2ODcxYTggQ1IzOiAwMDAwMDAwZjU0ZTEw
MDAwIENSNDogMDAwMDAwMDAwMDE2MDdlMA0KMzM3NyBbICAyMjUuMzA2MjEw
XSBDYWxsIFRyYWNlOg0KMzM3OCBbICAyMjUuMzA3MTg4XSAgWzxmZmZmZmZm
Zjk2ZDU5MDgxPl0gYmxrX21xX2ZyZWVfcXVldWUrMHgxMDEvMHgxNzANCjMz
NzkgWyAgMjI1LjMwODEzNV0gIFs8ZmZmZmZmZmY5NmQ0YTIzNj5dIGJsa19j
bGVhbnVwX3F1ZXVlKzB4MTM2LzB4MWIwDQozMzgwIFsgIDIyNS4zMDkwODRd
ICBbPGZmZmZmZmZmYzA1Yjk5NGM+XSA/IG52bWVfZnJlZV9jdHJsKzB4OWMv
MHgxMDAgW252bWVfY29yZV0NCjMzODEgWyAgMjI1LjMxMDA2NV0gIFs8ZmZm
ZmZmZmY5NmVhOWU0NT5dID8gZGV2aWNlX3JlbGVhc2UrMHgzNS8weGEwDQoz
MzgyIFsgIDIyNS4zMTEwMDJdICBbPGZmZmZmZmZmOTZkN2UwYTE+XSA/IGtv
YmplY3RfcmVsZWFzZSsweDgxLzB4MWIwDQozMzgzIFsgIDIyNS4zMTE5Mjhd
ICBbPGZmZmZmZmZmOTZkN2RmMzg+XSA/IGtvYmplY3RfcHV0KzB4MjgvMHg2
MA0KMzM4NCBbICAyMjUuMzEyODgzXSAgWzxmZmZmZmZmZjk2ZWFhMWI3Pl0g
PyBwdXRfZGV2aWNlKzB4MTcvMHgyMA0KMzM4NSBbICAyMjUuMzEzODE2XSAg
WzxmZmZmZmZmZmMwNWI5ODExPl0gPyBudm1lX2RlbGV0ZV9jdHJsX3dvcmsr
MHhhMS8weGIwIFtudm1lX2NvcmVdDQozMzg2IFsgIDIyNS4zMTQ3MjZdICBb
PGZmZmZmZmZmOTZhYmJhY2Y+XSA/IHByb2Nlc3Nfb25lX3dvcmsrMHgxN2Yv
MHg0NDANCjMzODcgWyAgMjI1LjMxNTY0Ml0gIFs8ZmZmZmZmZmY5NmFiYzc5
Nj5dID8gd29ya2VyX3RocmVhZCsweDEyNi8weDNjMA0KMzM4OCBbICAyMjUu
MzE2NTQzXSAgWzxmZmZmZmZmZjk2YWJjNjcwPl0gPyBtYW5hZ2Vfd29ya2Vy
cy5pc3JhLjI2KzB4MmEwLzB4MmEwDQozMzg5IFsgIDIyNS4zMTczNjRdICBb
PGZmZmZmZmZmOTZhYzNhNzE+XSA/IGt0aHJlYWQrMHhkMS8weGUwDQozMzkw
IFsgIDIyNS4zMTgxNzJdICBbPGZmZmZmZmZmOTZhYzM5YTA+XSA/IGluc2Vy
dF9rdGhyZWFkX3dvcmsrMHg0MC8weDQwDQozMzkxIFsgIDIyNS4zMTkwMjVd
ICBbPGZmZmZmZmZmOTcxN2VjZjc+XSA/IHJldF9mcm9tX2Zvcmtfbm9zcGVj
X2JlZ2luKzB4MjEvMHgyMQ0KMzM5MiBbICAyMjUuMzE5ODI3XSAgWzxmZmZm
ZmZmZjk2YWMzOWEwPl0gPyBpbnNlcnRfa3RocmVhZF93b3JrKzB4NDAvMHg0
MA0KMzM5MyBbICAyMjUuMzIwNjI0XSBDb2RlOiBkMyBlOCBmYyA1YiAwMiAw
MCA4YiA4MyBlOCAwMCAwMCAwMCA4NSBjMCA3NCAxNyA0OCA4MyBiYiAyMCAw
MSAwMCAwMCAwMCA3NCAwZCBmNiA4MyBjOCAwMCAwMCAwMCAwNCAwZiA4NSA5
YiAwMCAwMCAwMCA0OSA4YiAwNCAyNCA8NDg+IDhiIDQwIDI4IDQ4IDg1IGMw
IDc0IDE2IDQ4IDhiIDkzIGE4IDAyIDAwIDAwIDRjIDg5DQozMzk0IFsgIDIy
NS4zMjI2NTRdIFJJUCAgWzxmZmZmZmZmZjk2ZDU0YzU5Pl0gYmxrX21xX2V4
aXRfaGN0eCsweDQ5LzB4ZjANCjMzOTUgWyAgMjI1LjMyMzQ4N10gIFJTUCA8
ZmZmZjhhODgxYTE2YmM5MD4NCjMzOTYgWyAgMjI1LjMyNDI5M10gQ1IyOiBm
ZmZmZmZmZmMwNjg3MWE4DQotLS0NCiBkcml2ZXJzL252bWUvaG9zdC9mYy5j
IHwgMjcgKysrKysrKysrKysrKysrKysrKysrKystLS0tDQogMSBmaWxlIGNo
YW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pDQoNCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL252bWUvaG9zdC9mYy5jIGIvZHJpdmVycy9u
dm1lL2hvc3QvZmMuYw0KaW5kZXggMDZjNjkzMS4uZTExZTRmNyAxMDA2NDQN
Ci0tLSBhL2RyaXZlcnMvbnZtZS9ob3N0L2ZjLmMNCisrKyBiL2RyaXZlcnMv
bnZtZS9ob3N0L2ZjLmMNCkBAIC0yMDYsOCArMjA2LDcgQEAgc3RhdGljIERF
RklORV9TUElOTE9DSyhudm1lX2ZjX2xvY2spOw0KIHN0YXRpYyBMSVNUX0hF
QUQobnZtZV9mY19scG9ydF9saXN0KTsNCiBzdGF0aWMgREVGSU5FX0lEQShu
dm1lX2ZjX2xvY2FsX3BvcnRfY250KTsNCiBzdGF0aWMgREVGSU5FX0lEQShu
dm1lX2ZjX2N0cmxfY250KTsNCi0NCi0NCitzdHJ1Y3QgY29tcGxldGlvbiBu
dm1lX2ZjX3VubG9hZF9wcm9jZWVkOw0KIA0KIC8qDQogICogVGhlc2UgaXRl
bXMgYXJlIHNob3J0LXRlcm0uIFRoZXkgd2lsbCBldmVudHVhbGx5IGJlIG1v
dmVkIGludG8NCkBAIC0yNDIsNiArMjQxLDEyIEBAIG52bWVfZmNfZnJlZV9s
cG9ydChzdHJ1Y3Qga3JlZiAqcmVmKQ0KIAlwdXRfZGV2aWNlKGxwb3J0LT5k
ZXYpOw0KIA0KIAlrZnJlZShscG9ydCk7DQorDQorCS8qIElmIG5vIG90aGVy
IGxwb3J0IHByZXNlbnQgdGhlbiBhbGxvdyB1bmxvYWQgdGhyZWFkIHRvIGNv
bnRpbnVlDQorIAkgKiBpbiBjYXNlIGl0IGlzIHdhaXRpbmcNCisgCSAqLw0K
KwlpZiAobGlzdF9lbXB0eSgmbnZtZV9mY19scG9ydF9saXN0KSkNCisJCWNv
bXBsZXRlKCZudm1lX2ZjX3VubG9hZF9wcm9jZWVkKTsNCiB9DQogDQogc3Rh
dGljIHZvaWQNCkBAIC0zNDE3LDYgKzM0MjIsNyBAQCBzdGF0aWMgaW50IF9f
aW5pdCBudm1lX2ZjX2luaXRfbW9kdWxlKHZvaWQpDQogCWlmIChyZXQpDQog
CQlnb3RvIG91dF9kZXN0cm95X2RldmljZTsNCiANCisJaW5pdF9jb21wbGV0
aW9uKCZudm1lX2ZjX3VubG9hZF9wcm9jZWVkKTsNCiAJcmV0dXJuIDA7DQog
DQogb3V0X2Rlc3Ryb3lfZGV2aWNlOg0KQEAgLTM0MjksOSArMzQzNSwyMiBA
QCBvdXRfZGVzdHJveV9jbGFzczoNCiBzdGF0aWMgdm9pZCBfX2V4aXQgbnZt
ZV9mY19leGl0X21vZHVsZSh2b2lkKQ0KIHsNCiAJLyogc2FuaXR5IGNoZWNr
IC0gYWxsIGxwb3J0cyBzaG91bGQgYmUgcmVtb3ZlZCAqLw0KLQlpZiAoIWxp
c3RfZW1wdHkoJm52bWVfZmNfbHBvcnRfbGlzdCkpDQotCQlwcl93YXJuKCIl
czogbG9jYWxwb3J0IGxpc3Qgbm90IGVtcHR5XG4iLCBfX2Z1bmNfXyk7DQog
DQorCXUzMiB3YWl0X3RtbzsNCisJaW50IHJldDsNCisNCisjZGVmaW5lIE5W
TUVfRkNfVU5MT0FEX1dBSVRfVE1PIDENCisJLyogV2FpdCB1bmxvYWRpbmcg
dGhlIG1vZHVsZSB1bnRpbCBhbGwgcmVzb3VyY2VzIGFyZSByZWxlYXNlZCAq
Lw0KKwl3YWl0X3RtbyA9IG1zZWNzX3RvX2ppZmZpZXMoTlZNRV9GQ19VTkxP
QURfV0FJVF9UTU8gKiAxMDAwKTsNCisJd2hpbGUgKCFsaXN0X2VtcHR5KCZu
dm1lX2ZjX2xwb3J0X2xpc3QpKSB7DQorCQlyZXQgPSB3YWl0X2Zvcl9jb21w
bGV0aW9uX3RpbWVvdXQoJm52bWVfZmNfdW5sb2FkX3Byb2NlZWQsDQorICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB3YWl0X3Rtbyk7DQorCQlpZiAodW5saWtlbHkoIXJldCkpIHsNCisJCQlw
cl93YXJuKCIlczogbG9jYWxwb3J0IGxpc3Qgbm90IGVtcHR5LiBSZW5ldyB0
aW1lclxuIiwgX19mdW5jX18pOw0KKwkJCWNvbnRpbnVlOw0KKwkJfQ0KKwkJ
YnJlYWs7DQorCX0NCiAJbnZtZl91bnJlZ2lzdGVyX3RyYW5zcG9ydCgmbnZt
ZV9mY190cmFuc3BvcnQpOw0KIA0KIAlpZGFfZGVzdHJveSgmbnZtZV9mY19s
b2NhbF9wb3J0X2NudCk7DQotLSANCjEuOC4zLjENCg0K

--1879738122-67375923-1561595329=:7630
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--1879738122-67375923-1561595329=:7630--

