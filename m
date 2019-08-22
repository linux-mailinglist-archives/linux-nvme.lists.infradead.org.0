Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 996DE98880
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:30:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pQJDSEC4t7T1/hszS6kkJYdrOkscaxgI7KqqEZbgyM=; b=SybbkZvrLAVWDs
	RAKjkeauhbQIhG3Gu6Oc8ZQMhIf8hmncj78zX2awyZRokjTJ2tfgtd8Ne9gIBQZmhfO6yvl6MKkUv
	lvwYC3VphW5TU4OiFcjZKtqY2SYwoFYk2HrLa7Ng6VTGZ6I9wgST6xFLUfUCRJXblssXvCMplfoiR
	iyMJEp1rFPrwJIm2DtCUICrrVZ+UwzVqSluGMuqWa5UVeDKxTTbexBYd6z6ebEu6UjwJOPUsWSPwF
	OyNqpmf4hf6RddXZwklCUZuRGKZw9xZx+Mv51IB6QyXGF48vvUpR6ApUs/YR7hNXqE6XXT+JpWPa/
	ShPsPoTAecNu02PfPeMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0azb-0003R6-AY; Thu, 22 Aug 2019 00:30:19 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0azV-0003Qk-Kb
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:30:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A473D68BFE; Thu, 22 Aug 2019 02:30:10 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:30:09 +0200
From: Christoph Hellwig <hch@lst.de>
To: Tom Wu <tomwu@mellanox.com>
Subject: Re: [PATCH] nvmet: fix data units read and written counters in
 SMART log
Message-ID: <20190822003009.GD10391@lst.de>
References: <1565230956-28982-1-git-send-email-tomwu@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565230956-28982-1-git-send-email-tomwu@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_173013_823983_358E1E45 
X-CRM114-Status: UNSURE (   8.26  )
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
Cc: sagi@grimberg.me, Israel Rukshin <israelr@mellanox.com>,
 Linux-nvme <linux-nvme@lists.infradead.org>, keith.busch@intel.com,
 Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 02:22:36AM +0000, Tom Wu wrote:
> In nvme spec 1.3 there is a definition for data write/read counters
> from SMART log, (See section 5.14.1.2):
> 	This value is reported in thousands (i.e., a value of 1
> 	corresponds to 1000 units of 512 bytes read) and is rounded up.
> 
> However, in nvme target where value is reported with actual units,
> but not thousands of units as the spec requires.

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
