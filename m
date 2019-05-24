Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E692A1A6
	for <lists+linux-nvme@lfdr.de>; Sat, 25 May 2019 01:35:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s/rgBh7SB4FfGO9iJHPSs60rTfcM4xQLN/CFqqrNET4=; b=q/mf3NmvUOD5v8
	GkabkF/KGpTjX8IU1LGp8SJodYxe5BtkMUDpi3DlxzlwE15ZQDNQlC/dQQRFXOKTx8WggH59op5xE
	vhImkDJ9mz75r2AO/wwXZyAvBo9uRoMeRFPsOEhpJ+PtK00gYgYo7HxPBPTPW+ku+otqWQSlQTLDN
	2uycFrnoDYzjjNFe83zAU8QtbeAc5G2k4A+rdiHyME9sfb1KrLO8CfZsFOLr4OA5J1uMn1yOqcNmb
	Pz5ZcyKBIMDTkDabyVX8msRFAd43rJN7L5BguN22JQto5zmsJYzjf9rJNLZ4uI+litRu91YAal65z
	ngUlHMi5tzvzdOjqfNsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUJia-0003x5-4R; Fri, 24 May 2019 23:35:20 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUJiU-0003we-W2
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 23:35:16 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 16:35:13 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 24 May 2019 16:35:12 -0700
Date: Fri, 24 May 2019 17:30:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
Message-ID: <20190524233014.GC17343@localhost.localdomain>
References: <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
 <20190516144452.GB23372@localhost.localdomain>
 <yq17eaqbg4c.fsf@oracle.com>
 <040beeb5-d328-d5b0-f165-51bbd40f4c23@mellanox.com>
 <20190521143540.GB1639@localhost.localdomain>
 <ccd37b33-6fa3-8435-9ac4-9c62f4525c1a@grimberg.me>
 <20190524140753.GC15192@localhost.localdomain>
 <fe7bd12e-99ac-e038-f096-7697186051d7@grimberg.me>
 <ae685e0e-8ae2-dca3-844f-fd3147847447@mellanox.com>
 <1825f9cf-fa66-4232-12f9-3e27c73a7395@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1825f9cf-fa66-4232-12f9-3e27c73a7395@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_163515_076550_3352456C 
X-CRM114-Status: GOOD (  18.30  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 04:23:36PM -0700, Sagi Grimberg wrote:
> 
> > Sagi,
> > 
> > my original patch showed the namespaces and not the mpath device since I
> > developed it in non mpath environment.
> > 
> > Afterwards, Keith asked me to test it on mpath env and I changed my V1
> > to show the mpath device (in case of mpath configuration) and "IO-ble"
> > block device in case of non mpath configuration.
> > 
> > I thought that this was Keith intention but afterwards we agreed to
> > print the "IO-ble" namespace in all the cases (Also Christoph agreed on
> > that).
> 
> What's IO-ble?

Just means "not hidden".
 
> > So I'll update the patchset to show always the "IO-ble" namespace and
> > not mpath slaves that a user can't do anything interested with them.
> 
> But a namespace in a multipath environment is not associated with a
> controller. I don;t understand how you can display that without
> confusing the user even more.
>
> Unless they are not nested under controllers but under subsystems, that
> is fine, and aligned with the spec.

The virtual device "head" is associated with a subsystem where its
device names comes from, but that head has namespace paths, which are
controllers, and this is just showing that topology.

It would not make sense to nest the block device names under the
subsystem because the substem may have many paths/controllers, but the
namespaces are accessible only under a subset of those paths.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
