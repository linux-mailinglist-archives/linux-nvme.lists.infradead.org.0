Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1221EDC9F
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jun 2020 07:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:To
	:From:Subject:Mime-Version:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=ybeXjNWc6UNRODZSY3aHTbfZGSWY4g7t1d9rrx4gD3o=; b=gluzXpD2uHZrc2
	QePnVFoW47iOvoCbMPVg/v6XIHHoeKGm6e4iRvtAWP36CMSoyoX4N9j8BXUw1UoEbdYK+MzY5slHc
	bZ2nradkcvdzi90MduPnUkYR3FpIHHoXy6zJ4hexfOqCZ1P5+3xq47AXunGVeXSVyu9w+syYzKLe9
	uB+GN89VDqaJvHsowQ8whAobVyNw2RXVMRUXjytyN+PEvIs6rTEcye/D09ho+LKTWdCn7NWJede7Q
	Jbww/+9gac7Izqp89WR9oWRHY0RaoQXkdlh6agkFtLsAEoNJHfQjONQUZPwyBlCLJw2vwbKM2rqKU
	m/XEwu9lgrAZ+Few+Juw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgi4D-0003HV-Vy; Thu, 04 Jun 2020 05:05:25 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jggEP-0005SY-BW
 for linux-nvme@lists.infradead.org; Thu, 04 Jun 2020 03:07:51 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200604030744epoutp04ac8ae7e0caf43b8495f2cacae489c0f2~VOGha4qGL2968729687epoutp04A
 for <linux-nvme@lists.infradead.org>; Thu,  4 Jun 2020 03:07:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200604030744epoutp04ac8ae7e0caf43b8495f2cacae489c0f2~VOGha4qGL2968729687epoutp04A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1591240064;
 bh=AuCj/+GHGTmB6sRxia6zttUE4g0PuKOAUaQ4lvEsh0w=;
 h=Subject:Reply-To:From:To:Date:References:From;
 b=q9nQ+N1sQGWA2M6PQkP6q3SjTX5q3ygN2V90/YCpJTgNE9w0YkDrevK6dm7b+jJTs
 y8k45XxIH03UlJ5xPmZy1xoq4gxacAx68SlWWZ7N61r5OpMqCOFbM0NPgsIgqCydRg
 tbkS7sF/x9CUdijJt/0lUoeVI+7k5GoJwnvbY8qA=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p2.samsung.com (KnoxPortal) with ESMTP id
 20200604030743epcas5p2aecb210ebb61dfc131376859caa019ba~VOGhJiIjM1651316513epcas5p2x
 for <linux-nvme@lists.infradead.org>; Thu,  4 Jun 2020 03:07:43 +0000 (GMT)
X-AuditID: b6c32a4a-4b5ff700000025e7-27-5ed8657f2220
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 80.89.09703.F7568DE5; Thu,  4 Jun 2020 12:07:43 +0900 (KST)
Mime-Version: 1.0
Subject: MSI-X table updated at runtime in linux
From: Sathyavathi M <sathya.m@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20200604030742epcms5p6c8d20c7d338f77dbcefe2cfbc151e85f@epcms5p6>
Date: Thu, 04 Jun 2020 08:37:42 +0530
X-CMS-MailID: 20200604030742epcms5p6c8d20c7d338f77dbcefe2cfbc151e85f
CMS-TYPE: 105P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGIsWRmVeSWpSXmKPExsWy7bCmpm596o04g6sXTC3mL3vK7sDosXlJ
 fQBjFJdNSmpOZllqkb5dAlfGyrfBBYdYKq7+WcXcwLiApYuRk0NCwERiwZ6DjF2MXBxCArsZ
 Jaaf283WxcjBwSsgKPF3hzBIjbCAgcSG34eZQWwhATmJO4e7mCDiOhJ9z6axg5SzCWhJvHrK
 AxIWEXCV2L10FyPEeF6JGe1PoVZJS2xfvhUqLipxc/Vbdhj7/bH5UHERidZ7Z5khbEGJBz93
 Q8VlJE5+PAtVXy8xbfMvdpCTJQQ6GCXmv1kBVWQuMffed7AiXgFfidsbP4INYhFQlTh37Q5U
 s4vEpPaHYPXMAtoSyxa+Zga5n1lAU2L9Ln2IMJ9E7+8nTDD375gHYytJnPj8FsqWkFizfy8r
 SKuEgIdE61wzSOgESpw+P5txAqPsLEQYzkKyaxbCrgWMzKsYJVMLinPTU4tNC4zyUsv1ihNz
 i0vz0vWS83M3MYKjVstrB+PDBx/0DjEycTAeYpTgYFYS4bWSvRYnxJuSWFmVWpQfX1Sak1p8
 iFGag0VJnFfpx5k4IYH0xJLU7NTUgtQimCwTB6dUA9Os/j15M55or/rE/eq/5kS3D3+SW3Yu
 e6mcyPPvxYz/D0wsBR3TvU83qM1cyaIbMOP2bDPh37Hli1en7pvvYxvvdPd24usvj4/ILPCI
 2l/DGNwwvZhLXkR1qo3PerEm+fNm+6bO/+nElWfx2p85aL75x+o7h5LuSmfVPNINUYwTE3Mv
 P1G+y0Vl5ul6oYPvGysuRBbm7+gotonZzGP+8GTtVrkTJT2z+IoEajQm7fxvXhfw3SVr/eFG
 If5CLe+m3XW5slU+XxrWJHP/jPuWPVtUjy1li8k6pys9uxS4mRg2R0aXBW9UtMlae6WdZ8WM
 7OawySfLVb45xCau/DxN9s5paSkFieYjqvZvhXqtlFiKMxINtZiLihMBiVvXokkDAAA=
X-CMS-RootMailID: 20200604030742epcms5p6c8d20c7d338f77dbcefe2cfbc151e85f
References: <CGME20200604030742epcms5p6c8d20c7d338f77dbcefe2cfbc151e85f@epcms5p6>
X-Bad-Reply: References but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_200749_643187_04BD0630 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-Mailman-Approved-At: Wed, 03 Jun 2020 22:05:23 -0700
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
Reply-To: sathya.m@samsung.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

SGksCgpXaGVuIHJ1bm5pbmcgc29tZSByYW5kb20gdGVzdCBjYXNlIGkgZm91bmQgb3V0IHRoYXQg
dGhlIE1TSS1YIHRhYmxlIGlzIGFsdHJlZC7CoGkuZSBUYWtlIHRoZSBNU0ktWCB0YWJsZSBiYWNr
dXAgaXNzdWUgUE9SL05TU1IvYWRtaW4gY29tbWFuZHMgLiBldGMgYW5kIGFnYWluIHRhaGtlIHRo
ZSBNU0ktWCB0YWJsZSBiYWNrdXAsYm90aCBhZnRlciBhbmQgYmVmb3JlIGRhdGHCoGFyZSBkaWZm
ZXJlbnQuDQpNU0ktWCB0YWJsZSBjaGFuZ2VzIHJhbmRvbWx5IGFmdGVyIGNvbW1hbmQgZXhlY3V0
aW9uLiANCldoecKgdGhlIE1TSS1YIHRhYmxlIGdldCBhbHRlcmFkPyBjaGFuZ2luZyBtc2kteCB0
YWJsZSBvbiBydW50aW1lIGlzIGludmFsaWQgb3BlcmF0aW9uPw0KDQpUaGFua3MgaW4gQWR2YW5j
ZS4NCsKgDQpSZWdhcmRzLA0KU2F0aHlhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1udm1lCg==
