Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1C2299D3
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 16:13:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2B0V/rh1hECJEV9kmzwSBBaTPZZDdaMlzM08//QqGk=; b=Z5hIuz2ZkJHfML
	9GH/qLGUNcy+uD52ayz3ehPqrYFISeMiIG/5laDryjsHkiqN+QLlBHdcvmuK0sXc+6s+WzBbtAfp/
	a2yvjJjyMDQuZyRTBr8g2yk1/i9WKqFG8mhztJnKM1AOWHX2/3hRPc3BzWp8yEWEBu7ztwOF5SWfx
	PBUXVYYkAjezhXkhJ5x4xGpyW1bYMMMAU40qimIXa9w8ye3Fr/oGVEr4AYVB4g9Teit6w8unynlR7
	8e+0yitS2Z1w5YlJWmRnQJMyXUBc3urezdIe2Z/93OOcBB1gdoDWOhQZezhuHigot3QfK9AcfNa/O
	j/PCjbyHbtqyPUocjXGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUAwL-0001G4-GP; Fri, 24 May 2019 14:12:57 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUAwH-0001Fh-HX
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 14:12:54 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 07:12:52 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 24 May 2019 07:12:52 -0700
Date: Fri, 24 May 2019 08:07:53 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
Message-ID: <20190524140753.GC15192@localhost.localdomain>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain>
 <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
 <20190521143540.GB1639@localhost.localdomain>
 <ccd37b33-6fa3-8435-9ac4-9c62f4525c1a@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ccd37b33-6fa3-8435-9ac4-9c62f4525c1a@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_071253_592326_D7C2B2E0 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "Martin K. Petersen" <martin.petersen@oracle.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 01:03:07AM -0700, Sagi Grimberg wrote:
> =

> >> maybe we can improve it and print also the namespace during the "nvme
> >> list-subsys" command.
> >>
> >> something like:
> >>
> >> [root@server50 ~]# nvme list-subsys
> >> nvme-subsys0 - NQN=3Dtestsubsystem_0
> >> \
> >>   =A0+- nvme0 rdma traddr=3D11.212.140.146 trsvcid=3D4420
> >>   =A0\
> >>   =A0 +- nvme0n1 SN=3Dcf8bbff661502c51 Model=3DLinux
> >>   =A0 +- nvme0n2 SN=3Dcf8bbff661502c51 Model=3DLinux
> >>
> >>
> >> and we'll get subsys/ctrl/ns relations in 1 cmd.
> >>
> >> thoughts ?
> > =

> > Yes, this is very useful! I'd like to add this as soon as possible.
> > Do you have a patch, or is this just an example?  The only change I'd
> > recommend is remove SN and Model since those are controller properties
> > rather than from the namespace.
> =

> This now gives some context to the series Max posted :)
> =

> I still don't understand how this is helping more than the existing
> list-subsys for what you're trying to achieve keith.
>
> Your use-case was "I want to understand what is my controller for =

> /dev/nvme0n1". This information is already available in nvme list
> subsys. Why do you need the mpath-slave devices listed as well?

The current 'list-subsys' does not show us any namespaces, actually.
You have to dig through sysfs on your own to see which namespaces belong
to which controllers, but Max has added a more user friendly way to
view this.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
