Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA267CC95
	for <lists+linux-nvme@lfdr.de>; Wed, 31 Jul 2019 21:14:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/eFuGIbpHiXTKQ8bCw5Mz9pypjNyb6ToV3XDo3k6v1c=; b=Mk3bluTi4XxRD1
	WY4CUEScAP1IyFFUIoqIaaMSGTqB4azoncuNomE6tokna+hHHM4+vlzmoSzl0DyelVS/LFVoRDu97
	kuxe86U82bxYoLLku3ZWNVBGjaEhh/jtWgJ79kRaDRmO6IKMGUfWckIrtVPC7OP5sc8trWIk0FDUc
	pjXnN9MyaIr8Rac02EHTLUgrcsQgO/8Sy14J0xDbik0u3wBRc8mO5GHr84SRzBVAzcSaaJ1r2lBEZ
	eFYbz5Ee/lZulWalLLmo0QM9Qn4QSDU1Vh3HVQE+Snqm3cly+oIizeYAZ13D8vw6qq9sBja0UWWkx
	zl44wF79rdVSH3REFONQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsu36-0001I8-OT; Wed, 31 Jul 2019 19:14:08 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsu32-0001Hf-IN
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 19:14:05 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 12:14:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,331,1559545200"; d="scan'208";a="371646137"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga005.fm.intel.com with ESMTP; 31 Jul 2019 12:14:02 -0700
Date: Wed, 31 Jul 2019 13:11:21 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme: fix a possible deadlock when passthru commands
 sent to a multipath device
Message-ID: <20190731191121.GA15643@localhost.localdomain>
References: <20190731180026.4725-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190731180026.4725-1-sagi@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_121404_645146_F543E6D9 
X-CRM114-Status: GOOD (  16.50  )
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
Cc: Keith Busch <keith.busch@intel.com>,
 James Puthukattukaran <james.puthukattukaran@oracle.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 11:00:26AM -0700, Sagi Grimberg wrote:
> When the user issues a command with side effects, we will end up freezing
> the namespace request queue when updating disk info (and the same for
> the corresponding mpath disk node).
> 
> However, we are not freezing the mpath node request queue,
> which means that mpath I/O can still come in and block on blk_queue_enter
> (called from nvme_ns_head_make_request -> direct_make_request).
> 
> This is a deadlock, because blk_queue_enter will block until the inner
> namespace request queue is unfroze, but that process is blocked because
> the namespace revalidation is trying to update the mpath disk info
> and freeze its request queue (which will never complete because
> of the I/O that is blocked on blk_queue_enter).
> 
> Fix this by freezing all the subsystem nsheads request queues before
> executing the passthru command. Given that these commands are infrequent
> we should not worry about this temporary I/O freeze to keep things sane.

Looks good to me.

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
