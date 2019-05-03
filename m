Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8860131D8
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 18:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKoMauQ/MImzit9/appHXORbbqutwjOP18V9YlYxrls=; b=mn/7PbrBLcF0tn
	8TcBImifLT9BLtfya7v9tYUUS7ozyrDIxOorvlpZGYDMeaxtCSVq4kKHTozqVMHtt/8ZOYXM3EJM2
	CWRmFgxsdAHPNT2GSrCd5c10nSB3O584Z9UYzpgBZIcn0IpIouYobnW0yVyQgujjuKC4xzD7TjeKa
	jgc+YO+tUvdaVTsNJPKb6bose3ZvzRrC3nwJq95EngS5LlBIOuXZDqoLonUcH7cOYcNnuZjYTB71M
	qMU7qmHZfxjsevs7PxicRcjRyOWp/t00LzhWdTW+I2MBtms8dYulPE2PN+24+ovpKF2QCUTosFAjN
	m1ktfrJzPUUfT2Peo2qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMaiL-0003PB-P9; Fri, 03 May 2019 16:07:09 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMaiF-0003Ol-7g
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 16:07:04 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 09:06:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="141004160"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 03 May 2019 09:06:59 -0700
Date: Fri, 3 May 2019 10:01:16 -0600
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv3 1/2] nvme-multipath: avoid crash on invalid subsystem
 cntlid enumeration
Message-ID: <20190503160116.GA30291@localhost.localdomain>
References: <20190503133736.111201-1-hare@suse.de>
 <20190503133736.111201-2-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503133736.111201-2-hare@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_090703_345666_37397433 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 03:37:35PM +0200, Hannes Reinecke wrote:
> A process holding an open reference to a removed disk prevents it
> from completing deletion, so its name continues to exist. A subsequent
> gendisk creation may have the same cntlid which risks collision when
> using that for the name. Use the unique ctrl->instance instead.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>

Looks good

Reviewed-by: Keith Busch <keith.busch@intel.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
