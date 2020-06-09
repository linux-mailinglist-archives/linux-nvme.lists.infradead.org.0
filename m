Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56E81F3D69
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 15:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4Y9xxzcl4JqvIQS+CMdwxEq6nob7HChHfG/T+N1XJAA=; b=cwRBUa/jLiCxQT
	p7Rbubq58Cy+yYfy8fpUNUrxQJPzf6yEMAIgp5RYVdaG2/zPcsCDKyZl7O/+mecAaxr4No/b9Kat2
	0kuU/c2rr7BidtUy19HYyyFyrnttDYIuUTDGhOttgq2e46Bv0n7iKsE+O2IZCx5hCKiCwOUFag9Jg
	7BFFKvvxW/AEHHub3DIcp8CZ0hLNIMQ+9pyMMim+JsleM4RmYzttoG08Im8Sa4TYt3hhmN6uWnx4s
	zZZFohxcKJ7MwLFF/ATH5iF+FRL6ZmHMd38V3ej/pfjsJgwF8a8J9whBjobF5zYFVygok/vqbxtFx
	OUbGIEpa0a1Tw/I9fbFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieku-0002eh-Nz; Tue, 09 Jun 2020 13:57:32 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiekp-0002eQ-Gl
 for linux-nvme@lists.infradead.org; Tue, 09 Jun 2020 13:57:28 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E4ADC68B02; Tue,  9 Jun 2020 15:57:24 +0200 (CEST)
Date: Tue, 9 Jun 2020 15:57:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 1/5] nvme: introduce nvme-types header file
Message-ID: <20200609135724.GC10669@lst.de>
References: <20200602131546.51903-1-maxg@mellanox.com>
 <20200602131546.51903-2-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602131546.51903-2-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_065727_703145_2FEDB89C 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, chaitanya.kulkarni@wdc.com, israelr@mellanox.com,
 james.smart@broadcom.com, linux-nvme@lists.infradead.org, oren@mellanox.com,
 kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 04:15:42PM +0300, Max Gurtovoy wrote:
> Centralize the mapping between name and type to a common header file
> instead of duplicating logic in both NVMe host and target drivers.

The idea looks ok to me, but nvme_types suggested a header ala
<sys/types.h> or <linux/types.h> to me.  Not sure what a good name
would be, though.  I also suspect that keeping it under drivers/nvme/
in some fork might make more sense.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
