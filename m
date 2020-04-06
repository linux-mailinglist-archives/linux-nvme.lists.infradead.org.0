Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491D319FA31
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Apr 2020 18:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uk4ajzB7nXTj0HcxXxCecMrTJM/E1eHdfxNz5wUy0y8=; b=ErFWxWAwrnuV+M
	pTmApfXJU+eAkJXRkvuZgubjyaq2NhM3ynvVmFSOQ2JLZmJIWSh0ugSHnfRkVYPZyI0kjOWEuZRAy
	nrJSdrrAJhGxYn+qSZe2dXKsWNwFReSpnMH6o/BE5nayN9ciJrNOsn/QbzwCj1f/xsYn8TvQh/JT+
	ms5C0g1uRkTbTYbooOqs7NIebs45dvDMcFecbuxuUeG4HOY+rBc5y08MuTxhgCPn23KNWxoxvXbSz
	etCx7tsq8oJ3eN1BWtFifgDbAkfODtLn/5qVXyT00sxHeGBvCEKkJWCHf4cSv9ADTgxVoY7ZA480a
	6hYiIDcUV5EIeuFauRWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLUiP-0008Lv-Pg; Mon, 06 Apr 2020 16:35:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLUiJ-0007Zu-BP
 for linux-nvme@lists.infradead.org; Mon, 06 Apr 2020 16:35:08 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CC40F20BED;
 Mon,  6 Apr 2020 16:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586190906;
 bh=FXhlJMWkEz3beCpOATybgDdTXfGcwBpV/RDgh/J/wtU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uJY7EWcMhntHpofOoJEujXjD1LOHx4ioXSQVK6tqfBHY6671qEyWHeNB3Dwpsjikk
 RfYzPY3Bnn7vFH3ayHweinlQShausWZM4jTHmI7mHxMkkRGVcJvPyCJljHMciRqgA6
 CghNDfsaF3iBMZT73sQwPEe1NKHsoEme4vaDDx60=
Date: Tue, 7 Apr 2020 01:35:00 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/5] nvme: factor out a nvme_ns_remove_by_nsid helper
Message-ID: <20200406163500.GA26845@redsun51.ssa.fujisawa.hgst.com>
References: <20200406121352.1151026-1-hch@lst.de>
 <20200406121352.1151026-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406121352.1151026-4-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_093507_442966_B703DAC7 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 02:13:50PM +0200, Christoph Hellwig wrote:
> Factor out a pice of deeply indented and logicaly separate piece of code
> from nvme_scan_ns_list.

s/pice/piece

Patch looks good,

Reviewed-by: Keith Busch <kbusch@kernel.org>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
