Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B4D11C85E
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 09:42:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eE002V8ReLFoQTkvb4eZpubgzF4R0YzsYnlitLDLq0=; b=Jspy4o8CBSXTUS
	aJsShn1D+7KYE7WGAkVF5ILZra71XDMqHiZsBT30W0NarigxCbRkhpSWbTzWM8Kjs9cYv3w6GQP1b
	dF59WXmL5oN342LohVoL7rqW8mqUmEXJ6H3KKR12KBvM5yVq4sgGw6eAJFZo+YAG+Gw4eoMQKiMVj
	a8bCqSYxGTjLPI4nkjXey+ufX6jzGVil6b7POdyR1Eq4zQlFA74zR9sIfwMD9xZtFhpJQ2ohT3ipv
	qlNHuDekc0RjBFqQciUI/0mqd5PwHaKrCWRDKA6jWdIFCdggN5ARYDEDP1lAL+pJ7xADHDt6HreGH
	l7AoiMLK4PVocWSuR8UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifK36-0002hQ-Di; Thu, 12 Dec 2019 08:42:16 +0000
Received: from mo-csw1516.securemx.jp ([210.130.202.155]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifK32-0002gj-7K
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 08:42:13 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1516) id xBC8fmw0013965;
 Thu, 12 Dec 2019 17:41:48 +0900
X-Iguazu-Qid: 34tMYYato7jhv0d7CN
X-Iguazu-QSIG: v=2; s=0; t=1576140108; q=34tMYYato7jhv0d7CN;
 m=I1po1vVYXXDgkvgey/xfrGJ2GXGqDwbXFOkKOJ+Ra+8=
Received: from imx2.toshiba.co.jp (imx2.toshiba.co.jp [106.186.93.51])
 by relay.securemx.jp (mx-mr1512) id xBC8fhDW016250;
 Thu, 12 Dec 2019 17:41:43 +0900
Received: from enc01.localdomain ([106.186.93.100])
 by imx2.toshiba.co.jp  with ESMTP id xBC8fhVt000109;
 Thu, 12 Dec 2019 17:41:43 +0900 (JST)
Received: from hop001.toshiba.co.jp ([133.199.164.63])
 by enc01.localdomain  with ESMTP id xBC8fg17003948;
 Thu, 12 Dec 2019 17:41:43 +0900
From: <tsutomu.owa@kioxia.com>
To: <sagi@grimberg.me>, <kbusch@kernel.org>
Subject: RE: [RFC PATCH 0/5] to add more nvme reset functions
Thread-Topic: [RFC PATCH 0/5] to add more nvme reset functions
Thread-Index: AdWvyPOIQs9Y1uTsTWmA/qAYXNTemQAKjieAABHho4AAIyc9EA==
Date: Thu, 12 Dec 2019 08:41:41 +0000
X-TSB-HOP: ON
Message-ID: <6b70bb9395244936821bd4747d70594f@tgxml778.toshiba.local>
References: <346d379a5f9940dcba60242d2d9e119a@tgxml778.toshiba.local>
 <20191211161823.GA493@redsun51.ssa.fujisawa.hgst.com>
 <d4583505-d3f2-238b-c323-94216c910e29@grimberg.me>
In-Reply-To: <d4583505-d3f2-238b-c323-94216c910e29@grimberg.me>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [133.119.78.25]
msscp.transfermailtomossagent: 103
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_004212_468085_9A1EFBA8 
X-CRM114-Status: UNSURE (   4.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.155 listed in list.dnswl.org]
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
Cc: hch@infradead.org, tsutomu.owa@kioxia.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Sagi-san,

thank you for your comment.

> From: Sagi Grimberg [mailto:sagi@grimberg.me]
> Sent: Thursday, December 12, 2019 9:50 AM
> This is messy. Everything here needs to live in nvme-pci.
So you mean that those should be in drivers/nvme/host/pci.c at least?

thanks.
-- owa

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
