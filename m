Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F0BFE05
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 18:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hCWqFUrOrWcuXkSsalAWu1/MMStDCRqrzIDDbShYQis=; b=DA2mSu09UavG58
	6BgiRkwB1urGtU7buiM0LpfIaAGx2haqa8z1MpmqmBYGV8pzyJHm01wLyT5Tt6ZSxx7hmBKxhKacY
	KVQt/Rz2lkTQGUqoq/hbS6H0MmroL/eYE4kOfAJP9kjJBdgLqLBD3QkW9D8DfQpCpl/NVYmGx7teJ
	o2ojeEfw519cx84y4YKmj227HInLfloHLKVMwrkqQGJeA9UwytqSzNs9/xzQPgOfN0ZwdzYrQL+gC
	+xCMOofqIxYYALI77mUE9FVcXx3HhZBogMpqjpTQTy25k4klqnpNFSLfj/k/QbFJfYDfQuPZQyWMP
	coqLOK3cCeJNrLZWvwMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLVnF-0007yr-H3; Tue, 30 Apr 2019 16:39:45 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLVnB-0007yW-53
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 16:39:42 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 09:39:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="135722360"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 30 Apr 2019 09:39:38 -0700
Date: Tue, 30 Apr 2019 10:33:50 -0600
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv2] nvme-multipath: split bios with the ns_head bio_set
 before submitting
Message-ID: <20190430163350.GA25542@localhost.localdomain>
References: <20190430162745.39204-1-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430162745.39204-1-hare@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_093941_240578_6608BF12 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 06:27:45PM +0200, Hannes Reinecke wrote:
> +	/*
> +	 * The namespace might be going away and the bio might
> +	 * be moved to a different queue via blk_steal_bios(),
> +	 * so we need to use the bio_split pool from the original
> +	 * queue to allocate the bvecs from.
> +	 */
> +	blk_queue_split(q, *bio);
                           ^^^^

Shouldn't that be '&bio'?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
