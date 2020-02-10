Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E96158079
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Feb 2020 18:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQMpcNnqpCFI3Opxcmndzpk/bOBqrGjc0ucbcG/uLFE=; b=DejZKmIz5QfxbU
	Hn9nyqIJt6NTbwYNAdWiUl11cxphj8Ke6e6yqEc8xKccgdT9udxsa/19K0n0jWUswNLTI50z/42yp
	BDbjwnCBiJ92NiaXEkRUStgytHFTxT0kHjd0inU/GKBZWcuHJJ/V9XgOLSRxml98Dg7f7/g6Y9l+E
	yv+g393zf1klv98jgp0Wp310g9k0h1wCPZ6uL9Y5qG6cT+Az7SSBLuTX9XjRmDe6YY3xprQoLjt9s
	NAEOAdxriKOTjXioRv6U8IlBnk8bGTmMbC1UcjUdevTzZ6xpL2mq5QVxKiF7xC8Ka0jHq6QiQk0a6
	FJ3VjwNsFi73p/JFgHXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1CWh-0000rH-Ou; Mon, 10 Feb 2020 17:07:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1CWO-0007c3-R8
 for linux-nvme@lists.infradead.org; Mon, 10 Feb 2020 17:06:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E6E9F68BFE; Mon, 10 Feb 2020 18:04:42 +0100 (CET)
Date: Mon, 10 Feb 2020 18:04:42 +0100
From: Christoph Hellwig <hch@lst.de>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH 2/2] nvme-rdma/nvme-tcp: Move err_work to nvme_reset_wq
Message-ID: <20200210170442.GB19584@lst.de>
References: <20200206191342.10190-1-jsmart2021@gmail.com>
 <20200206191342.10190-3-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200206191342.10190-3-jsmart2021@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_090657_042789_73B88AF1 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org,
 Nigel Kirkland <nigel.kirkland@broadcom.com>, maxg@mellanox.com,
 mark.wunderlich@intel.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Feb 06, 2020 at 11:13:42AM -0800, James Smart wrote:
> With keep alive processing being moved to nvme_wq, it potentially creates
> a conflicting position with err_work also processing on nvme_wq and needing
> to flush/stop keep alives.
> 
> To avoid issues, schedule err_work on nvme_reset_wq. It looks like this is
> not only a good thing for keep alives, but also brings the transports in
> line with the RESETTING state and processing work relative to RESETTING
> on nvme_reset_wq.
> 
> This change is made to both nvme-rdma and nvme-tcp which have like code.

Shouldn't we move both in one patch to create a regression in one
cycle while fixing the other one?

Otherwise this looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
