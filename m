Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4712A98897
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:40:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qKniHH6/jhFwPCKl8nletOYYUCsjFeGcCLpH9nAiNcY=; b=GAUVhGIQ6geIew
	uauhH6IAEESGqNeQYwFEDo+hyqCEEwFcG5FjZfNUYmLRRoLfwmTpCxYDKB1glusm2X3JN/gD259Wd
	EIPRKuvosOv+V7TuVPiMFl7QEeQ+q+ObX3QBNANs01gUzykdTS8Bvp1QamhLCJPkCg/EJ1eprlSe5
	FqkIcEhSI1GddnsmCN5lq5b8Gto47kee34jdgmb30pYi+xy1IRK7eezXQIbfxioK02S9Qx9XJ0RIp
	2ynJtHDHJjXtKQeflpMZncIybP+Q/7/tuNakwU9OcY+tx8Hok0+Z6a4G4KWMOiKUr2aO9+G2b0G6u
	4hXNL7F4cyOz96UOm9EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0b9d-000849-Cp; Thu, 22 Aug 2019 00:40:41 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0b9W-00083s-Cv
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:40:35 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 74AFA68BFE; Thu, 22 Aug 2019 02:40:31 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:40:31 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH rfc v2 3/6] nvme: make nvme_identify_ns propagate
 errors back
Message-ID: <20190822004031.GK10391@lst.de>
References: <20190803024955.29508-1-sagi@grimberg.me>
 <20190803024955.29508-4-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190803024955.29508-4-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_174034_589627_1A4393E6 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good.  Note that we could also use ERR_PTR, but that might not
be worth it.

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
