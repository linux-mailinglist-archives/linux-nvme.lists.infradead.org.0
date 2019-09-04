Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 565F5A7AF6
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Sep 2019 07:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dQ9nlYWbtFtFP3px2COy228dKFFaw+gKZBdGok78wHI=; b=Jmwy6t7B/Fc3kZ
	YEuy5qa32VgXfz4+sq4HA3bDZ4u7BnThFIeMlcQO+xWVlv0wXAF3ZN3XOMsQl+5Jb0ofqkx20vsl7
	vEBpeROe5lzCu1aYEZEwDfX0hdivT19g9oP9AXeeBAZReJBGWYTA+Pp9zPhgc33hTOxiTUV8ZHlYQ
	487ZLyF/JShHK3sixmKOPTwnP3eWAWTB8mO931DQLFR/+mCSYgD+B2Ga1nVmr/3zNF1A/TpvTUBWs
	kXiQi1PWKyY1xUkx4mYrEhgzl5k3DxNgyszdMpGbkU9tC4n5aHJ+W+feCqvV/QiY3xuq4s3w+N5g0
	ZsZApINNKRnLT3X2U0WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OBp-0008RW-0w; Wed, 04 Sep 2019 05:50:45 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5OBf-0008Qz-H4
 for linux-nvme@lists.infradead.org; Wed, 04 Sep 2019 05:50:36 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B3E39227A8A; Wed,  4 Sep 2019 07:50:32 +0200 (CEST)
Date: Wed, 4 Sep 2019 07:50:32 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 4/4] nvmet-loop: fix possible leakage during error flow
Message-ID: <20190904055032.GB10553@lst.de>
References: <1567523655-23989-1-git-send-email-maxg@mellanox.com>
 <1567523655-23989-4-git-send-email-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567523655-23989-4-git-send-email-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_225035_710444_817B9F39 
X-CRM114-Status: UNSURE (   6.54  )
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
Cc: axboe@kernel.dk, keith.busch@intel.com, sagi@grimberg.me,
 martin.petersen@oracle.com, israelr@mellanox.com,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 shlomin@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 06:14:15PM +0300, Max Gurtovoy wrote:
> During nvme_loop_queue_rq error flow, one must call nvme_cleanup_cmd since
> it's symmetric to nvme_setup_cmd.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>

This seems independent from the rest of the series.  Looks good,
and we should queue it up ASAP:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
