Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EAE27E85
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 15:44:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JY1+EgTL8pfY5YOOhfAoK6S0ax26pYygOCw1L2zKzQk=; b=VX1VAw3VE/RKHv
	23MfUo6mSLLePrGI95+R8PGrSxylPxUej7uL1QQ/HiE3FQGRAJ0UjXdEy7avb7dFwPaI3V4m6G2My
	QjOayyF5wb2hge3O32qcEb+d6OzpJq/U087m86twUZKP8outQl5q8srv5WjVom65pucKa+VVFgmE/
	aLrV1QjULloDk6dACWEa3qp9PxIXBtbeWrOmke/Jg4XhcVRrIhm05sa68WzNfMd17JEe4F53K1SPH
	dUTnEdOgGRvIVqq2JSRuJSoLSqbkvaGpUzXAKMKNX4yz4xae6ZdGzuuxfFlYUgm3Lav+jlAHaJePC
	qDigRflwWfqX+3MQ77xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTo1c-0006CS-V6; Thu, 23 May 2019 13:44:52 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTo1Y-0006C8-AF
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 13:44:49 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 06:44:47 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga005.fm.intel.com with ESMTP; 23 May 2019 06:44:47 -0700
Date: Thu, 23 May 2019 07:39:46 -0600
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 9/9] nvme: Retrieve namespaces during list-subsys cmd
Message-ID: <20190523133946.GE14049@localhost.localdomain>
References: <1558543193-24752-1-git-send-email-maxg@mellanox.com>
 <1558543193-24752-10-git-send-email-maxg@mellanox.com>
 <20190522224955.GC5857@localhost.localdomain>
 <0c677aa1-aa60-dddd-4a3f-a339545fee63@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0c677aa1-aa60-dddd-4a3f-a339545fee63@mellanox.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_064448_364342_F23A22FB 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "martin.petersen@oracle.com" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, "shlomin@mellanox.com" <shlomin@mellanox.com>,
 "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 01:01:54AM -0700, Max Gurtovoy wrote:
> =

> On 5/23/2019 1:49 AM, Keith Busch wrote:
> > On Wed, May 22, 2019 at 07:39:53PM +0300, Max Gurtovoy wrote:
> >> Add an association between subsystems/ctrls/namespaces using
> >> "nvme list-subsys" command. Now this command will show the following:
> >>
> >> nvme-subsys4 - NQN=3Dtestsubsystem_0
> >> \
> >>   +- nvme4 rdma traddr=3D12.212.99.85 trsvcid=3D4420 live
> >>   \
> >>    +- nvme4n1
> >>    +- nvme4n2
> >>    +- nvme4n3
> >>   +- nvme5 rdma traddr=3D12.212.99.85 trsvcid=3D4420 live
> >>   \
> >>    +- nvme5n1
> >>    +- nvme5n2
> >>    +- nvme5n3
> >>
> >> Instead of:
> >> ----------------
> >> nvme-subsys4 - NQN=3Dtestsubsystem_0
> >> \
> >>   +- nvme4 rdma traddr=3D12.212.99.85 trsvcid=3D4420
> >>   +- nvme5 rdma traddr=3D12.212.99.85 trsvcid=3D4420
> > This is a terrific start. Your output indicates you are not using
> > nvme native multipathing, though. Could you retry this command with
> > that enabled (I'll try it tomorrow as well)?
> =

> Yup I'll configure the native multipath. But what is expected ?
> =

> should we print nvme4c1n1/nvme4c1n2/nvme4c1n3 for nvme4
> =

> and nvme4c2n1/nvme4c2n2/nvme4c2n3 for nvme5 ?
> =

> if so, I guess the information on the "IO-ble" devices =

> nvme4n1/nvme4n2/nvme4n3 will not be printed.
> =

> something like:
> =

> nvme-subsys4 - NQN=3Dtestsubsystem_0
> \
>  =A0+- nvme4 rdma traddr=3D12.212.99.85 trsvcid=3D4420 live
>  =A0\
>  =A0 +- nvme4c1n1
>  =A0 +- nvme4c1n2
>  =A0 +- nvme4c1n3
>  =A0+- nvme5 rdma traddr=3D12.212.99.85 trsvcid=3D4420 live
>  =A0\
>  =A0 +- nvme4c2n1
>  =A0 +- nvme4c2n2
>  =A0 +- nvme4c2n3
> =

> =

> if this if fine I'll send a V2 with a small fix.

I think we'd actually prefer not seeing the hidden block devices, but
instead use the device name from the "head": nvme4n1, nvme4n2, etc...

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
