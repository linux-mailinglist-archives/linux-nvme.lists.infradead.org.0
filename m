Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C8E10F382
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 00:36:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHoPVfxfBHVxEGhRIW8OHYmgf4gRPbYFwEIFYEx0L54=; b=OpFPEB2hP7tLkJ
	scZhdY1GbsuIwLZivQfpxr/vbE4bWc6ipCKNN6FDK3jyZp/omgz762718rNSyffs7fKFRdQWyS9wc
	YodAvnpFsVYjEGyrQLBPRTnJLSuYgXKDUC21IrwK5hTbVWKwrb4mz8s3EtEnoFek7hSxuV/BNXUk4
	LFIZaGBqXRn2LSFQkUmgPituVstqYYovqQ0Ou+pbh9eQp2gLdLyC1RbU9Fivlf6j2HiytSUU0G2zD
	983WdF5Cnvx18ToytPXNZjzmYlEcptnhncOJPgDnvJYn0hPDCI/E4UPhuLnYSg5uWANQJbkW46v4s
	Q2ky3UAB3eUUFw8HFq9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvEU-0005qf-3B; Mon, 02 Dec 2019 23:35:58 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvEP-0005qG-Au
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 23:35:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1575329754; x=1606865754;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lJVMMBtj13i5L3b9emIdKlF5B2W8hwoF+8H+kt2s0uQ=;
 b=RHvWjoaZbyhA9iCbXrHZYUYhhlWBW72v3bTS/FPeXcCbZTypf+TpxVHO
 YI2+YY2ayBULdXSJGSOkuszVdKf1jYTVH2XXNbdII5s56v2iLpFNEeBH7
 95xNGfmcGlzgyCTu2VzGTJIjHzfwTxxg/kSL/RmdsmM2xoZtrrBLcZi1T k=;
IronPort-SDR: 6GhwZJNcbQOCCmZ67p2dIO5FsBLaEWtvXLI+SApjgZPZQ0NAkdedMm25Wz3mUqIN1EHkp7M7lW
 JKIZ0etznqPQ==
X-IronPort-AV: E=Sophos;i="5.69,270,1571702400"; 
   d="scan'208";a="6783055"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-2b-4e24fd92.us-west-2.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 02 Dec 2019 23:35:50 +0000
Received: from EX13MTAUWB001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-4e24fd92.us-west-2.amazon.com (Postfix) with ESMTPS
 id 33ADAA082C; Mon,  2 Dec 2019 23:35:48 +0000 (UTC)
Received: from EX13D11UWB002.ant.amazon.com (10.43.161.20) by
 EX13MTAUWB001.ant.amazon.com (10.43.161.249) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 2 Dec 2019 23:35:48 +0000
Received: from EX13D01UWB002.ant.amazon.com (10.43.161.136) by
 EX13D11UWB002.ant.amazon.com (10.43.161.20) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Mon, 2 Dec 2019 23:35:47 +0000
Received: from EX13D01UWB002.ant.amazon.com ([10.43.161.136]) by
 EX13d01UWB002.ant.amazon.com ([10.43.161.136]) with mapi id 15.00.1367.000;
 Mon, 2 Dec 2019 23:35:47 +0000
From: "Singh, Balbir" <sblbir@amazon.com>
To: "hch@lst.de" <hch@lst.de>
Subject: Re: [RFC][PATCH] nvme/core: Notify udev about capacity change
Thread-Topic: [RFC][PATCH] nvme/core: Notify udev about capacity change
Thread-Index: AQHVpkvgVfUA8zeU+0yg5tgW9Ce9QKeh0FaAgAW1gYA=
Date: Mon, 2 Dec 2019 23:35:47 +0000
Message-ID: <0a5fc287a4ac392b9b192402e6786e7129b9d5f2.camel@amazon.com>
References: <20191129002746.6622-1-sblbir@amazon.com>
 <20191129082449.GA9953@lst.de>
In-Reply-To: <20191129082449.GA9953@lst.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.43.160.100]
Content-ID: <66F36C053D1CD948A65829DA501F1B67@amazon.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153553_507165_E3AD96D8 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "kbusch@kernel.org" <kbusch@kernel.org>, "axboe@fb.com" <axboe@fb.com>,
 "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Sangaraju,
 Someswarudu" <ssomesh@amazon.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, 2019-11-29 at 09:24 +0100, Christoph Hellwig wrote:
> I don't think this makes sense, and they way it has been done in
> virtio_blk and xen-blkfront is an utter hack.  Please first add a
> properly documented block helper, and then make sure it doesn't send the
> even for the first call that moves from a 0 capacity.  SCSI also will
> need updating to use the helper.

Makes sense, I am wondering if I should refactor
set_capacity to __set_capacity and have set_capacity do notifcations
for

oldsize vs newsize where oldsize is not 0

Balbir Singh.
_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
