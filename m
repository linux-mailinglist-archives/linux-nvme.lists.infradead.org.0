Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F0320A1E
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:50:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PoamOfcjsFn72rPB+OAy7sT/cFEyQz/ybiOztHJ6ezo=; b=J2VqbDUJqe3sIl
	cY4MqfPTb/xokvCixpm82x7K5juz+/hHAgoaerwDysowVXiDZG3JXZbd5IUa7Pbo3zIkemMqrnnVu
	UjrvrtZo+X/MjcHShzMbSyDIsSfjoFqsIc8n1tf0dMuMPobN3Vmf96m0eGGVW4w9lj+gKcEt5zaK+
	ptCkInStPYFgpQsHurZy4y22Is5O2kc0KdNuWe9GU3O8XD3MmT3hdYtWnPCmqgpa8trjNu203e27x
	ICc6jpck5QBn8uI6pswa+za1eJGxVp6z+pG7u70QqYuL++en2DVVlTqY/NClZICM/J80HujfwPqSI
	QPxlibE81DJxU8PPcxQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHi2-0004Oa-Co; Thu, 16 May 2019 14:50:14 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHhw-0004N0-Rg
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:50:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 07:50:08 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga006.fm.intel.com with ESMTP; 16 May 2019 07:50:07 -0700
Date: Thu, 16 May 2019 08:44:52 -0600
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH RFC] nvme: Common subsys and controller instances IDA
Message-ID: <20190516144452.GB23372@localhost.localdomain>
References: <20190515213351.22190-1-keith.busch@intel.com>
 <20190516064651.GA30234@lst.de>
 <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1f0e7049-c926-98e0-3624-0d24eb45cd87@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_075008_911099_DCD21661 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 12:03:54AM -0700, Hannes Reinecke wrote:
> On 5/16/19 8:46 AM, Christoph Hellwig wrote:
> > On Wed, May 15, 2019 at 03:33:51PM -0600, Keith Busch wrote:
> >> So here's a solution that no one will like: pull subsystem and controller
> >> instances from the same IDA so that there won't be any namespace block
> >> devices with a matching controller handle name. While this does nothing
> >> to clear up device relationships, this will force the user to think
> >> really hard about what they're doing and avoid such mistakes.
> > 
> > Hmm.  So we'll get:
> > 
> > /dev/nvme0
> >   - chardev subsys X ctl 1
> > 
> > /dev/nvme1n1
> > /dev/nvme1n2
> >   - namespaces for subsys X
> > 
> > /dev/nvme2
> >   - chardev subsys X ctl 2
> > 
> > /dev/nvme3
> >   - chardev subsys Y ctl 1
> > 
> > ...
> > 
> > This should work.  Not sure it really buys us so much, though.
> > 
> > Btw, I wonder if we should have udev rules for:
> > 
> > /dev/nvme-subsys-$NQN-ctrl1
> > /dev/nvme-subsys-$NQN-ctrl2
> > /dev/nvme-subsys-$NQN-ns1
> > /dev/nvme-subsys-$NQN-ns2
> > 
> > I have to admit that since udev/systemd moved to github I can't
> > be bother to send them patches, though as it would require signing
> > up for that crappy service.
> > 
> That rather calls for persistent device names, no?
> 
> proposal would be to create symlinks like
> 
> /dev/disk/by-id/nvme-subsys-$NQN-ns-$NS

Hm, the current by-id rules use the namespace's nguid or eui if it exists,
and serial + nsid if not. We can add susbsys too.

> to keep in line with the other symlinks in /dev/disk/by-id/
> The controller symlinks don't really fall into this category, though;
> we could create a 'nvme' subdirectory (much like MD does), and
> create symlinks in there.

Cool, I would also like to see persistent char dev names, but I wasn't
sure where they'd go. If we can make our own 'nvme' subdirectory, that'd
be great.
 
> And yes, I'm happy to draft up udev rules once we've come to a 
> conclusion here.

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
