Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17AF87E53B
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 00:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tE36W63B5ZjiL43qeLqntcbqg6mgvHdvkVdNVNOrDJY=; b=BasMHN2SSO5fv7
	JD8dIZmRp4rH6e5PcVobxrLArw8QJt1vcQi1j/ZwzDLYwIpgllW3qpfe6wb/q7pIRXd4US+3qfsdp
	rvd+tOGzUicpdzcwe+gXftZWDXLLkd/c67Abr4QYSQeTE4duuxZINnpTd61cRm2dmAGuuj+dJvyrM
	L01qf3RMNp8D6fqzdJeo5TkhHVs18R4jkI1vyKrdQP/M2OfhgmP80qReLuZy+QvDp3SGs5N0zSEbB
	DCt3HX3ewTvIea0VfGm4TGNbxhVJ/Mm0yZy/srxkwBJ60xnBlBhBk5uVBTBiltsErPWn9/VXFQK/t
	qhWlypCni/VWlCF4ECew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htJJz-0003ax-QU; Thu, 01 Aug 2019 22:13:15 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htJJv-0003ad-Nz
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 22:13:13 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 15:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="184385797"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 01 Aug 2019 15:13:10 -0700
Date: Thu, 1 Aug 2019 16:10:31 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/2] nvme: skip namespaces which are about to be removed
Message-ID: <20190801221031.GH15795@localhost.localdomain>
References: <20190801071644.66690-1-hare@suse.de>
 <20190801071644.66690-2-hare@suse.de>
 <20190801213600.GG15795@localhost.localdomain>
 <8c71f313-4543-f581-af96-84070b8dbe5e@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8c71f313-4543-f581-af96-84070b8dbe5e@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_151311_822854_9B7AF5B0 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Hannes Reinecke <hare@suse.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 02:52:37PM -0700, Sagi Grimberg wrote:
> 
> > > nvme_ns_remove() will only remove the namespaces from the list at
> > > the very last step, so we might run into situations where we iterate
> > > over namespaces which are about to be deleted.
> > > To avoid crashes we should be skipping all namespaces with the
> > > NVME_NS_REMOVING flag set.
> > 
> > This all looks to be racing with whatever task is going to call
> > nvme_ns_remove().
> > 
> > Could we instead move these invalid namespaces off the ctrl->namespaces
> > list prior to calling nvme_ns_remove(), and while holding the write
> > lock? That way nothing can iterate the namespaces that we're deleting.
> > We already do that in some places, so that looks like it may be the safe
> > way to do this.
> 
> This is exactly what I proposed in:
> [PATCH rfc 2/2] nvme: fix possible use-after-free condition when controller
> reset is racing namespace scanning

Hm, I had to look up why the list_del is done at then end. It is after
del_gendisk() because that syncs dirty buffers, which means we could have
IO that can timeout. We need the namespaces in the controller list during
removal so that timeout handlers can iterate them for cleanup. Otherwise
you could have some buffered write tasks constantly entering the queue,
preventing namespace removal. The only time should be safe to take the
namespace off list first is if we've set the queue to dying prior to
calling del_gendisk.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
