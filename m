Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A37DE2BE
	for <lists+linux-nvme@lfdr.de>; Mon, 21 Oct 2019 05:45:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r7vX6zWT2RmYqJMhNJJq/qKk/uS9t0er1jPjQPSmH3s=; b=GJrIBCnTm68eYK
	O37W1iRs0Z5FksOrh1zfygjIvCEbmjBumM+XPjsxYW9vJGK48Hnb5r9FdvcTIrO+0JmgP1BnHSsSe
	IuXW0NWPxjhlKRCn0owPj3y0WIYICmqfWq9jEReWm/sL1pAlL5hlAyMjxTwxMfWItvPzAXtPgaAtJ
	v3if7xQjtrNdBUuHorfolrb8zlLp/3gieGt7GBlQakaefmrHx9UO3fS8WCUyzphKnwtEKhNi5I7TA
	sfSHEOB71lMgu+P7J0MbOAsSDQCm15DvHW1yKEd214FNpt9+LAEYcM0BSCseR6RG99qQJwH7KDdHZ
	WX/6c5Lz5LSIpJTOA/YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMOcr-00076b-3p; Mon, 21 Oct 2019 03:44:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMOci-00075W-Rt
 for linux-nvme@lists.infradead.org; Mon, 21 Oct 2019 03:44:51 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 03CF868BE1; Mon, 21 Oct 2019 05:44:47 +0200 (CEST)
Date: Mon, 21 Oct 2019 05:44:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Damien Le Moal <damien.lemoal@wdc.com>
Subject: Re: [PATCH 2/2 v2] nvme: Introduce nvme_lba_to_sect()
Message-ID: <20191021034446.GC11888@lst.de>
References: <20191021034004.11063-1-damien.lemoal@wdc.com>
 <20191021034004.11063-3-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191021034004.11063-3-damien.lemoal@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_204449_062931_F3D6AB2E 
X-CRM114-Status: UNSURE (   8.62  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 12:40:04PM +0900, Damien Le Moal wrote:
> Introduce the new helper function nvme_lba_to_sect() to convert a device
> logical block number to a 512B sector number. Use this new helper in
> obvious places, cleaning up the code.
> 
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

Looks fine,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
