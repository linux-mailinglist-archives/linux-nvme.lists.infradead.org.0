Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C0F7D2BCD
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 15:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKeUgteTrSvAEvvpk+DRrF7zYt2vYO2TtewY5mBB78Q=; b=cmxAx2kC7jG4Wa
	Qv7jJRZlnDSniXJPRGWPqSKk7SwnebEQAED3QdiTOTw0AZy+Zcd1Yhb6NNvJA1bo1HIa733lvorXO
	XR58bTPlVAY/dN8h8S0BTYxLzIxh1NKAWWOrA2YTFyP6zV6UUZEXHxd20ANSL+iuCF0elYO7Ebkm4
	GoCXhKA3fHm15perAdfWk/mnWo6QkeUpCnaLY7tQel5nweKQGFfGannKBsOKzd1JV8/v1vtCcgBBQ
	f1EP1+VJsAR2BzVlVNXTdEzWsbd44QO5Q+iiwkVIK2PIpZbA/ba/3SMqXZZH1ad6tOcfY/b6da12Q
	NPEeIHv151llICvCsnaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYsk-0000dv-Le; Thu, 10 Oct 2019 13:53:30 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYsf-0000d8-4R
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 13:53:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 654FC68C65; Thu, 10 Oct 2019 15:53:22 +0200 (CEST)
Date: Thu, 10 Oct 2019 15:53:22 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 5/8] nvme: introduce "Command Aborted By host" status code
Message-ID: <20191010135322.GD31487@lst.de>
References: <1570714100-15520-1-git-send-email-maxg@mellanox.com>
 <1570714100-15520-6-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570714100-15520-6-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_065325_324843_6122E2B2 
X-CRM114-Status: UNSURE (   7.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, israelr@mellanox.com, james.smart@broadcom.com,
 linux-nvme@lists.infradead.org, shlomin@mellanox.com, kbusch@kernel.org,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 04:28:17PM +0300, Max Gurtovoy wrote:
> Fix the status code of canceled requests initiated by the host according
> to TP4028 (Status Code 0x371):
> "Command Aborted By host: The command was aborted as a result of host
> action (e.g., the host disconnected the Fabric connection)."
> 
> Also in a multipath environment, unless otherwise specified, errors of
> this type (path related) should be retried using a different path, if
> one is available.

Looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
