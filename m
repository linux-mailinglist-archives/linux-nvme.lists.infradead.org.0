Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB9539279
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 18:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KppzNZtZPWj3H2dyPA5NbrQbhRwAkCpeyFILsT51Ulg=; b=cjBv8pl3sm1nhW
	mbQnSXlSXwqoDEmDlFssNbPxAZ5ujW6hWK6qti9cLG06UdlG19FDIijXsLwDfi7FBO0QcUUa/L4Ff
	DoGhC2bFg+3NZWeXuJ3g8Kt+9opC7AHymWKLrlY6yaQbsnk6Qgi3P3i/lpWntpnXGPpSS0A6Kto1T
	OynUDTIK1kaNsmdHTjl9wIXHCzpZY/iPHoQYJ8VAgJCjjYqYcYJCoLxBRGEuU49M82q7old0wD6Ol
	8yH0M4H8nHf8s2/UIu8n95XL61AbKi2HgBmGl21uTCZDWA1L4U9N3DHflOa1uOb816h8pWYhMIHY8
	IH6takjAD3YumMWa+uWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZI1y-0000qB-LS; Fri, 07 Jun 2019 16:47:54 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZI1t-0000pr-Jq
 for linux-nvme@lists.infradead.org; Fri, 07 Jun 2019 16:47:50 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 6189E68AFE; Fri,  7 Jun 2019 18:47:23 +0200 (CEST)
Date: Fri, 7 Jun 2019 18:47:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [RFC PATCH V7 3/7] nvme: trace: put cid with le16_to_cpu()
Message-ID: <20190607164723.GF7307@lst.de>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
 <20190606194512.11020-4-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606194512.11020-4-minwoo.im.dev@gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_094749_803596_2EE88D3A 
X-CRM114-Status: UNSURE (   8.12  )
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jun 07, 2019 at 04:45:08AM +0900, Minwoo Im wrote:
> The CID(Command Identifier) is in 16bits so that we need to convert it
> to cpu's one.

The command identifier is 16-bits wide, but it is a field that the
controller just passes through and never interprets.  Because of that
it isn't marked as __le16 in nvme.h either.

> -		__entry->cid = cmd->common.command_id;
> +		__entry->cid = le16_to_cpu(cmd->common.command_id);

This will actually create a sparse warning.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
