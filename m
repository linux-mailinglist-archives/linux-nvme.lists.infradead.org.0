Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0307DDB102
	for <lists+linux-nvme@lfdr.de>; Thu, 17 Oct 2019 17:22:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hE0XXdbVmh8zt9nm6+o1zlFFoYQELI4GlQAbpC27xuQ=; b=QqBmr3AIDIq+/y
	rNqW6x5I53FeOxv3bfEySwX5iiJJE+A/EyfIsHjbCRLXdZAmDKy5zlr8EUjkcj7+jKqtv/pmNalJq
	zJjpX7SVoO4SNb8JNGT7kYCZicCm4CM2DEZMTZKWsxzfqK3hIfcQBwHszPKlgdMymBLKlkfefo/sO
	okkdi9Z5pYfF1T9WcmzGZFZ+vudrnp3G3Gs7rcJA8byutzIg4n35e9YEqoflDO28ku+LINCUTmICP
	yBG2KvbmnOgDrCZwYtAlKd6ix/3SusS2IEWgmr1CmAZSmmd51gfGhl1Xpubmp9lDbahIv13PPDAYR
	vxYKjVvMH75+LHUH0fOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7c0-0005mt-VO; Thu, 17 Oct 2019 15:22:48 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7bw-0005mD-8b
 for linux-nvme@lists.infradead.org; Thu, 17 Oct 2019 15:22:45 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8800868BE1; Thu, 17 Oct 2019 17:22:41 +0200 (CEST)
Date: Thu, 17 Oct 2019 17:22:41 +0200
From: Christoph Hellwig <hch@lst.de>
To: Anton Eidelman <anton@lightbitslabs.com>
Subject: Re: [PATCH] nvme-multipath: fix possible io hang after ctrl reconnect
Message-ID: <20191017152241.GA9155@lst.de>
References: <20191015170802.16830-1-anton@lightbitslabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015170802.16830-1-anton@lightbitslabs.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_082244_452590_F8A1C1C2 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: keith.busch@intel.com, hare@suse.de, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 10:08:02AM -0700, Anton Eidelman wrote:
> The following scenario results in an IO hang:
> 1) ctrl completes a request with NVME_SC_ANA_TRANSITION.
>    NVME_NS_ANA_PENDING bit in ns->flags is set and ana_work is triggered.
> 2) ana_work: nvme_read_ana_log() tries to get the ANA log page from the ctrl.
>    This fails because ctrl disconnects.
>    Therefore nvme_update_ns_ana_state() is not called
>    and NVME_NS_ANA_PENDING bit in ns->flags is not cleared.
> 3) ctrl reconnects: nvme_mpath_init(ctrl,...) calls
>    nvme_read_ana_log(ctrl, groups_only=true).
>    However, nvme_update_ana_state() does not update namespaces
>    because nr_nsids = 0 (due to groups_only mode).

How do you end up calling into nvme_init_identify for a reconnect?
That should always hit the !new path in nvme_tcp_configure_admin_queue.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
